-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2019 at 11:07 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akreditasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_number`
--

CREATE TABLE `auto_number` (
  `group` varchar(32) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `optimistic_lock` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auto_number`
--

INSERT INTO `auto_number` (`group`, `number`, `optimistic_lock`, `update_time`) VALUES
('01098ef0f0cbe052cedd4ac902fe9537', 13, 12, 1511985588),
('09ba37674362482f01b7941d22c3eac3', 31, 30, 1514171035),
('10599ee9b82a7ce69e552319c8d28fca', 5, 4, 1515756234),
('13858a01dbf59880bfb61341dba52cf4', 5, 4, 1515528199),
('18ee96e3e91e221d97f59dec062d72a3', 8, 7, 1547116432),
('1ec726e5b0aba0e4abc0e3ce43762e6c', 5, 4, 1545812136),
('203a8ec3ecb5e26cc238fa34c36b6b0f', 39, 38, 1515723200),
('2687f28ba042fea119ea01e628433a6b', 7, 6, 1547058235),
('36b762ee42b1941c2a003058e269769d', 9, 8, 1543660213),
('3c2029bc50ed232af6a70d9da0029f07', 3, 2, 1544204226),
('408c709368444e811bb6beef9c8be9f7', 7, 6, 1546333673),
('467115f9c0743d4e12c09c718338fb94', 12, 11, 1517152301),
('4c0b4f0c7595e5d2358e86cc162ac317', 6, 5, 1544204678),
('541394299299843e2bb1b8cc6be56231', 326, 325, 1516771057),
('5aa243139c2d658d2b516c4af255ff1c', 48, 47, 1516913846),
('6aaa533567e28a6f36ced0a3f1e33d2f', 35, 34, 1546399874),
('6bf8fd4abde1f40daffc75cad1ca9afc', 1, NULL, 1544267073),
('70d3cf9ec190cc50b869236f4d089abb', 2, 1, 1545915028),
('793b6925940c4e3937870067cd251ee4', 4, 3, 1546018231),
('8295cb76aaea2ea01fbf0cba5bbdf079', 1, NULL, 1543636237),
('85f1a19076c84ef7bf2287faf81d6aa2', 3, 2, 1545759726),
('93512536b14446eeadb2c7e8c1abfebb', 10, 9, 1546396469),
('98747ab5e2400761d813ccc45743ced8', 2, 1, 1546333881),
('aec7eba25e8d6b4b933b144ae7826bf9', 7, 6, 1515439143),
('b024be347a91491a39c5323bd1cf80ed', 1, NULL, 1511729420),
('b41aabc27b9a87c0c52b1134cb752eb3', 9, 8, 1514172748),
('b96c589b9fdc65fb01129140b9359ba7', 15, 14, 1515207371),
('cf060a47d7b51fa09b8e3a290a54af3e', 9, 8, 1546339502),
('d35346586ee3e0c9d4c9df22df950506', 1, NULL, 1515434824),
('f5115e7787d7b4d157e77e3ae3b460c1', 9, 8, 1543673099);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `c_icon` varchar(255) DEFAULT NULL,
  `c_page` varchar(255) DEFAULT NULL,
  `c_pkey` int(11) DEFAULT NULL,
  `c_urut` int(11) DEFAULT NULL,
  `c_status` enum('y','n','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`c_id`, `c_name`, `c_icon`, `c_page`, `c_pkey`, `c_urut`, `c_status`) VALUES
(2, 'profil', 'fa fa-user-circle ', NULL, 0, 0, 'n'),
(4, 'kontak', 'fa fa-phone', 'kontak/index', 0, 0, 'n'),
(10, 'user', 'fa fa-user-circle-o', 'user/index', 48, 0, 'y'),
(14, 'user group', 'fa fa-users', 'usergroup/index', 48, 0, 'y'),
(17, 'kepala instansi', 'fa fa-asterisk', 'kaling/index', 19, 0, 'y'),
(18, 'admin', 'fa fa-asterisk', 'admin/index', 19, 0, 'y'),
(23, 'biodata', 'fa fa-cogs', 'biodata/index', 0, 0, 'n'),
(27, 'user login', 'fa fa-bell-o', 'session/index', 48, 0, 'y'),
(31, 'Profil PT', 'fa fa-user-circle ', 'pengadilantinggi/view?id=PT001', 0, 1, 'y'),
(32, 'kelas', 'fa fa-asterisk', 'kelas/index', 42, 3, 'y'),
(35, 'tujuan', 'fa fa-asterisk', 'tujuan/index', 42, NULL, 'y'),
(36, 'kriteria', 'fa fa-asterisk', 'kriteria/index', 42, NULL, 'y'),
(42, 'master', 'fa fa-th', NULL, 0, NULL, 'y'),
(43, 'jenis', 'fa fa-asterisk', 'jenis/index', 42, NULL, 'y'),
(44, 'assesment', 'fa fa-book', 'assesment/index', 0, NULL, 'y'),
(45, 'pengadilan negeri', 'fa fa-gavel', 'pengadilannegeri/index', 0, NULL, 'y'),
(46, 'pertanyaan', 'fa fa-question', 'pertanyaan/index', 0, NULL, 'y'),
(47, 'pegawai', 'fa fa-users', 'pegawai/index', 0, NULL, 'y'),
(48, 'management user', 'fa fa-id-card-o', NULL, 0, NULL, 'y'),
(49, 'management content', 'fa fa-book', 'content/index', 0, NULL, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1509842062),
('m130524_201442_init', 1509842069),
('m140527_084418_auto_number', 1510996066);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `expire`, `data`, `user_id`) VALUES
('h3s2ecdhh84445vi93b7jb5r24', 1547539761, 0x5f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a31323a222f616b72656469746173692f223b5f5f69647c693a36383b, 68),
('mh8n1b9gna0sogd4refffgtdm4', 1547561686, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a35383b, 58),
('r03d7n9h7t29ac8k215hjiap04', 1547564636, 0x5f5f666c6173687c613a303a7b7d5f5f72657475726e55726c7c733a31323a222f616b72656469746173692f223b5f5f69647c693a36383b, 68);

-- --------------------------------------------------------

--
-- Table structure for table `tb_akreditasi`
--

CREATE TABLE `tb_akreditasi` (
  `akreditasi_id` int(11) NOT NULL,
  `pn_id` int(11) NOT NULL,
  `akreditasi_sk` varchar(255) NOT NULL,
  `akreditasi_tgl_sk` date NOT NULL,
  `akreditasi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akreditasi`
--

INSERT INTO `tb_akreditasi` (`akreditasi_id`, `pn_id`, `akreditasi_sk`, `akreditasi_tgl_sk`, `akreditasi`) VALUES
(2, 7, 'a', '2019-01-01', 'B'),
(16, 5, 'a', '2018-12-03', 'C'),
(28, 5, 'asdad', '2019-01-02', 'A'),
(33, 6, 'asdad', '2018-11-07', 'C'),
(34, 1, 'asdad', '2019-01-02', 'A'),
(35, 1, 'asdad', '2018-12-11', 'C'),
(36, 1, 'asdad', '2019-01-17', 'B'),
(37, 1, 'asdad', '2018-11-05', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tb_assesment`
--

CREATE TABLE `tb_assesment` (
  `assesment_id` int(11) NOT NULL,
  `assesment_surat` varchar(55) NOT NULL,
  `assesment_surat_tanggal` date NOT NULL,
  `pn_id` int(11) NOT NULL,
  `pn_kelas_type` int(11) DEFAULT NULL,
  `assesment_jenis` varchar(55) NOT NULL,
  `assesment_tanggal_mulai` date NOT NULL,
  `assesment_tanggal_selesai` date NOT NULL,
  `assesment_ketua` int(11) DEFAULT NULL,
  `assesment_anggota` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_assesment`
--

INSERT INTO `tb_assesment` (`assesment_id`, `assesment_surat`, `assesment_surat_tanggal`, `pn_id`, `pn_kelas_type`, `assesment_jenis`, `assesment_tanggal_mulai`, `assesment_tanggal_selesai`, `assesment_ketua`, `assesment_anggota`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(31, 'A.1-2018.9012', '2019-01-02', 5, 0, '1', '2019-01-02', '2019-01-02', 14, NULL, 0, 0, 58, 1547194339),
(36, 'A.1-2018.9012', '2019-01-04', 6, 0, '1', '2019-01-03', '2019-01-03', 8, NULL, 0, 0, 58, 1547535041),
(37, 'A.1-2018.9014', '2019-01-03', 5, 0, '1', '2019-01-10', '2019-01-10', 17, NULL, 0, 0, 58, 1547277188),
(38, 'A.1-asasa', '2019-01-02', 7, 0, '1', '2019-01-04', '2019-01-05', 8, NULL, 58, 1547263032, 58, 1547263032),
(39, 'A.1-2018.9012', '2019-01-25', 5, 4, '1', '2019-01-03', '2019-01-03', 8, NULL, 58, 1547527664, 58, 1547527664),
(40, 'A.1-2018.9012', '2019-01-31', 1, 5, '1', '2019-01-02', '2019-01-03', 8, NULL, 58, 1547535284, 58, 1547535284);

-- --------------------------------------------------------

--
-- Table structure for table `tb_assessor`
--

CREATE TABLE `tb_assessor` (
  `assesment_id` int(11) NOT NULL,
  `assesment_ketua` int(11) NOT NULL,
  `assesment_anggota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_audit`
--

CREATE TABLE `tb_audit` (
  `audit_id` int(11) NOT NULL,
  `assesment_id` int(11) DEFAULT NULL,
  `tujuan_id` int(11) DEFAULT NULL,
  `kriteria_id` int(11) DEFAULT NULL,
  `pertanyaan` text,
  `nilai_a` text,
  `nilai_b` text,
  `nilai_c` text,
  `bobot` double DEFAULT NULL,
  `audit_nilai` varchar(5) DEFAULT NULL,
  `audit_nilai_angka` int(11) DEFAULT NULL,
  `audit_temuan` varchar(255) DEFAULT NULL,
  `audit_ket_praaudit` text,
  `audit_keterangan` text,
  `audit_ket_pascaaudit` text,
  `audit_pencegahan` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_audit`
--

INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(79, 31, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 'A', 20, 'mayor', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi ', 'ket', 'a', NULL, NULL, NULL, 62, 1547380928),
(80, 31, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, 'lem', NULL, NULL, NULL, NULL, 58, 1547377929),
(81, 31, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 32, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 32, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 32, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 31, 1, 1, 'asd', 'asd', 'asd', 'asd', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 33, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 'A', 20, 'minor', NULL, 'belum', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 33, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 33, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 34, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 34, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 34, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 35, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 35, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 35, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 36, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 'A', NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 58, 1547489162),
(97, 36, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 36, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 37, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 37, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 37, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 38, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(103, 38, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(104, 38, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(105, 38, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(106, 38, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(107, 38, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(108, 38, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(109, 38, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(110, 38, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(111, 38, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(112, 38, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(113, 38, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(114, 38, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(115, 38, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263032, 58, 1547263032),
(116, 38, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(117, 38, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(118, 38, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(119, 38, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(120, 38, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(121, 38, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(122, 38, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(123, 38, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(124, 38, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(125, 38, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(126, 38, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(127, 38, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(128, 38, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(129, 38, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(130, 38, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(131, 38, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(132, 38, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(133, 38, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(134, 38, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(135, 38, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(136, 38, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(137, 38, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(138, 38, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(139, 38, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(140, 38, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(141, 38, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(142, 38, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(143, 38, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(144, 38, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(145, 38, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(146, 38, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(147, 38, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(148, 38, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(149, 38, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(150, 38, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(151, 38, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(152, 38, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(153, 38, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(154, 38, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(155, 38, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(156, 38, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(157, 38, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(158, 38, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(159, 38, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(160, 38, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(161, 38, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(162, 38, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(163, 38, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(164, 38, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(165, 38, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(166, 38, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(167, 38, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(168, 38, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(169, 38, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(170, 38, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(171, 38, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(172, 38, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(173, 38, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(174, 38, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(175, 38, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(176, 38, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(177, 38, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(178, 38, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(179, 38, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(180, 38, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(181, 38, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(182, 38, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(183, 38, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(184, 38, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(185, 38, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(186, 38, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(187, 38, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(188, 38, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(189, 38, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(190, 38, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(191, 38, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(192, 38, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(193, 38, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(194, 38, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(195, 38, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(196, 38, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(197, 38, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(198, 38, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(199, 38, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(200, 38, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(201, 38, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(202, 38, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(203, 38, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(204, 38, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(205, 38, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(206, 38, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(207, 38, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(208, 38, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(209, 38, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(210, 38, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(211, 38, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(212, 38, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(213, 38, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(214, 38, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(215, 38, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(216, 38, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(217, 38, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(218, 38, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(219, 38, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(220, 38, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(221, 38, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(222, 38, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(223, 38, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(224, 38, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(225, 38, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(226, 38, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(227, 38, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(228, 38, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(229, 38, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(230, 38, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(231, 38, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(232, 38, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(233, 38, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(234, 38, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(235, 38, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(236, 38, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(237, 38, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(238, 38, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(239, 38, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(240, 38, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(241, 38, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(242, 38, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(243, 38, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(244, 38, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(245, 38, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(246, 38, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(247, 38, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(248, 38, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(249, 38, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(250, 38, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(251, 38, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(252, 38, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(253, 38, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(254, 38, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(255, 38, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(256, 38, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(257, 38, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(258, 38, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(259, 38, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(260, 38, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(261, 38, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(262, 38, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(263, 38, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(264, 38, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(265, 38, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(266, 38, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(267, 38, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(268, 38, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(269, 38, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(270, 38, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(271, 38, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(272, 38, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(273, 38, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(274, 38, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(275, 38, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(276, 38, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(277, 38, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(278, 38, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(279, 38, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(280, 38, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(281, 38, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(282, 38, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(283, 38, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(284, 38, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(285, 38, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(286, 38, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547263033, 58, 1547263033),
(287, NULL, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(288, NULL, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(289, NULL, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(290, NULL, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(291, NULL, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(292, NULL, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(293, NULL, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(294, NULL, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(295, NULL, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(296, NULL, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(297, NULL, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(298, NULL, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(299, NULL, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(300, NULL, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(301, NULL, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(302, NULL, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(303, NULL, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(304, NULL, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(305, NULL, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(306, NULL, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(307, NULL, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(308, NULL, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(309, NULL, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(310, NULL, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(311, NULL, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(312, NULL, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(313, NULL, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(314, NULL, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(315, NULL, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(316, NULL, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(317, NULL, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(318, NULL, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(319, NULL, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(320, NULL, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(321, NULL, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(322, NULL, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(323, NULL, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(324, NULL, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(325, NULL, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(326, NULL, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(327, NULL, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(328, NULL, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(329, NULL, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(330, NULL, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(331, NULL, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(332, NULL, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(333, NULL, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(334, NULL, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(335, NULL, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(336, NULL, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(337, NULL, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(338, NULL, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(339, NULL, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(340, NULL, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(341, NULL, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(342, NULL, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(343, NULL, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(344, NULL, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(345, NULL, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(346, NULL, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(347, NULL, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(348, NULL, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(349, NULL, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(350, NULL, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(351, NULL, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(352, NULL, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(353, NULL, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(354, NULL, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(355, NULL, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(356, NULL, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(357, NULL, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(358, NULL, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(359, NULL, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(360, NULL, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(361, NULL, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(362, NULL, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(363, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(364, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(365, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(366, NULL, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(367, NULL, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(368, NULL, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(369, NULL, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(370, NULL, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(371, NULL, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(372, NULL, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(373, NULL, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(374, NULL, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(375, NULL, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(376, NULL, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(377, NULL, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(378, NULL, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(379, NULL, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(380, NULL, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(381, NULL, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(382, NULL, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(383, NULL, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(384, NULL, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(385, NULL, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(386, NULL, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(387, NULL, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(388, NULL, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527539, 58, 1547527539),
(389, NULL, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(390, NULL, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(391, NULL, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(392, NULL, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(393, NULL, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(394, NULL, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(395, NULL, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(396, NULL, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(397, NULL, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(398, NULL, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(399, NULL, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(400, NULL, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(401, NULL, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(402, NULL, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(403, NULL, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(404, NULL, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(405, NULL, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(406, NULL, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(407, NULL, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(408, NULL, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(409, NULL, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(410, NULL, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(411, NULL, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(412, NULL, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(413, NULL, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(414, NULL, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(415, NULL, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(416, NULL, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(417, NULL, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(418, NULL, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(419, NULL, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(420, NULL, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(421, NULL, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(422, NULL, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(423, NULL, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(424, NULL, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(425, NULL, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(426, NULL, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(427, NULL, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(428, NULL, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(429, NULL, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(430, NULL, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(431, NULL, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(432, NULL, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(433, NULL, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(434, NULL, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(435, NULL, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(436, NULL, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(437, NULL, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(438, NULL, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(439, NULL, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(440, NULL, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(441, NULL, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(442, NULL, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(443, NULL, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(444, NULL, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(445, NULL, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(446, NULL, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(447, NULL, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(448, NULL, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(449, NULL, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(450, NULL, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(451, NULL, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(452, NULL, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(453, NULL, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(454, NULL, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(455, NULL, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(456, NULL, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(457, NULL, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(458, NULL, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(459, NULL, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(460, NULL, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(461, NULL, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(462, NULL, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(463, NULL, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(464, NULL, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(465, NULL, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(466, NULL, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(467, NULL, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(468, NULL, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(469, NULL, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(470, NULL, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(471, NULL, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527540, 58, 1547527540),
(472, NULL, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(473, NULL, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(474, NULL, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(475, NULL, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(476, NULL, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(477, NULL, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(478, NULL, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(479, NULL, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(480, NULL, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(481, NULL, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(482, NULL, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(483, NULL, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(484, NULL, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(485, NULL, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(486, NULL, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(487, NULL, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(488, NULL, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(489, NULL, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(490, NULL, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(491, NULL, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(492, NULL, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(493, NULL, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(494, NULL, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(495, NULL, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(496, NULL, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(497, NULL, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(498, NULL, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(499, NULL, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(500, NULL, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(501, NULL, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(502, NULL, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(503, NULL, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(504, NULL, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(505, NULL, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(506, NULL, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(507, NULL, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(508, NULL, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(509, NULL, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(510, NULL, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(511, NULL, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(512, NULL, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(513, NULL, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(514, NULL, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(515, NULL, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(516, NULL, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(517, NULL, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(518, NULL, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(519, NULL, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(520, NULL, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(521, NULL, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(522, NULL, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(523, NULL, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(524, NULL, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(525, NULL, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(526, NULL, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(527, NULL, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(528, NULL, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(529, NULL, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(530, NULL, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(531, NULL, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(532, NULL, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(533, NULL, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(534, NULL, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(535, NULL, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(536, NULL, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(537, NULL, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(538, NULL, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(539, NULL, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(540, NULL, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527578, 58, 1547527578),
(541, NULL, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(542, NULL, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(543, NULL, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(544, NULL, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(545, NULL, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(546, NULL, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(547, NULL, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(548, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(549, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(550, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(551, NULL, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(552, NULL, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(553, NULL, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(554, NULL, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(555, NULL, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(556, NULL, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(557, NULL, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(558, NULL, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(559, NULL, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(560, NULL, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(561, NULL, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(562, NULL, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(563, NULL, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(564, NULL, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(565, NULL, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(566, NULL, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(567, NULL, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(568, NULL, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(569, NULL, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(570, NULL, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(571, NULL, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(572, NULL, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(573, NULL, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(574, NULL, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(575, NULL, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(576, NULL, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(577, NULL, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(578, NULL, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(579, NULL, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(580, NULL, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(581, NULL, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(582, NULL, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(583, NULL, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(584, NULL, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(585, NULL, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(586, NULL, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(587, NULL, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(588, NULL, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(589, NULL, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(590, NULL, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(591, NULL, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(592, NULL, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(593, NULL, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(594, NULL, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(595, NULL, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(596, NULL, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(597, NULL, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(598, NULL, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(599, NULL, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(600, NULL, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(601, NULL, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(602, NULL, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(603, NULL, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(604, NULL, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(605, NULL, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(606, NULL, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(607, NULL, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(608, NULL, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(609, NULL, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(610, NULL, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(611, NULL, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(612, NULL, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(613, NULL, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(614, NULL, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(615, NULL, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(616, NULL, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(617, NULL, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(618, NULL, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(619, NULL, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(620, NULL, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(621, NULL, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(622, NULL, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(623, NULL, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(624, NULL, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(625, NULL, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(626, NULL, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(627, NULL, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(628, NULL, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(629, NULL, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(630, NULL, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(631, NULL, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(632, NULL, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(633, NULL, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(634, NULL, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(635, NULL, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(636, NULL, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(637, NULL, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(638, NULL, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(639, NULL, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(640, NULL, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(641, NULL, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(642, NULL, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(643, NULL, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(644, NULL, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(645, NULL, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(646, NULL, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(647, NULL, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(648, NULL, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(649, NULL, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(650, NULL, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(651, NULL, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(652, NULL, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(653, NULL, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(654, NULL, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(655, NULL, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(656, NULL, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527579, 58, 1547527579),
(657, 39, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 'C', 20, 'minor', NULL, 'kurang', NULL, NULL, 58, 1547527664, 58, 1547535150),
(658, 39, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(659, 39, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(660, 39, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(661, 39, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(662, 39, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(663, 39, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(664, 39, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(665, 39, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(666, 39, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(667, 39, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(668, 39, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(669, 39, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(670, 39, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(671, 39, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(672, 39, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(673, 39, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(674, 39, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(675, 39, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(676, 39, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527664, 58, 1547527664),
(677, 39, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(678, 39, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(679, 39, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(680, 39, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(681, 39, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(682, 39, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(683, 39, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(684, 39, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(685, 39, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(686, 39, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(687, 39, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(688, 39, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(689, 39, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(690, 39, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(691, 39, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(692, 39, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(693, 39, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(694, 39, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(695, 39, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(696, 39, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(697, 39, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(698, 39, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(699, 39, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(700, 39, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(701, 39, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(702, 39, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(703, 39, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(704, 39, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(705, 39, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(706, 39, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(707, 39, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(708, 39, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(709, 39, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(710, 39, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(711, 39, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(712, 39, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(713, 39, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(714, 39, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(715, 39, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(716, 39, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(717, 39, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(718, 39, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(719, 39, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(720, 39, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(721, 39, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(722, 39, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(723, 39, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(724, 39, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(725, 39, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(726, 39, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(727, 39, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(728, 39, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(729, 39, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(730, 39, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(731, 39, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(732, 39, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(733, 39, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(734, 39, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(735, 39, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(736, 39, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(737, 39, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(738, 39, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(739, 39, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(740, 39, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(741, 39, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(742, 39, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(743, 39, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(744, 39, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(745, 39, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(746, 39, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(747, 39, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(748, 39, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(749, 39, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(750, 39, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(751, 39, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(752, 39, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(753, 39, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(754, 39, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(755, 39, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(756, 39, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(757, 39, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(758, 39, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(759, 39, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(760, 39, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(761, 39, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(762, 39, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(763, 39, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(764, 39, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(765, 39, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(766, 39, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(767, 39, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(768, 39, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(769, 39, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(770, 39, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(771, 39, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(772, 39, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(773, 39, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(774, 39, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(775, 39, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(776, 39, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(777, 39, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(778, 39, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(779, 39, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(780, 39, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(781, 39, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(782, 39, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(783, 39, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(784, 39, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(785, 39, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(786, 39, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527665, 58, 1547527665),
(787, 39, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(788, 39, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(789, 39, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(790, 39, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(791, 39, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(792, 39, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(793, 39, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(794, 39, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(795, 39, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(796, 39, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(797, 39, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(798, 39, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(799, 39, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(800, 39, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(801, 39, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(802, 39, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(803, 39, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(804, 39, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(805, 39, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(806, 39, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(807, 39, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(808, 39, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(809, 39, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(810, 39, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(811, 39, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(812, 39, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(813, 39, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(814, 39, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(815, 39, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(816, 39, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(817, 39, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(818, 39, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(819, 39, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(820, 39, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(821, 39, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(822, 39, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(823, 39, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(824, 39, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(825, 39, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(826, 39, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(827, 39, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(828, 39, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(829, 39, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(830, 39, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(831, 39, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(832, 39, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(833, 39, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(834, 39, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(835, 39, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(836, 39, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(837, 39, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(838, 39, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(839, 39, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(840, 39, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(841, 39, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527666, 58, 1547527666),
(842, NULL, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(843, NULL, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(844, NULL, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(845, NULL, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(846, NULL, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(847, NULL, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(848, NULL, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(849, NULL, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(850, NULL, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(851, NULL, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(852, NULL, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(853, NULL, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(854, NULL, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(855, NULL, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(856, NULL, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(857, NULL, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(858, NULL, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(859, NULL, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(860, NULL, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(861, NULL, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(862, NULL, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(863, NULL, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(864, NULL, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(865, NULL, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(866, NULL, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(867, NULL, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(868, NULL, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(869, NULL, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(870, NULL, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(871, NULL, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(872, NULL, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(873, NULL, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(874, NULL, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(875, NULL, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(876, NULL, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(877, NULL, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(878, NULL, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(879, NULL, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(880, NULL, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(881, NULL, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(882, NULL, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(883, NULL, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(884, NULL, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(885, NULL, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(886, NULL, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(887, NULL, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(888, NULL, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(889, NULL, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(890, NULL, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(891, NULL, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(892, NULL, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(893, NULL, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(894, NULL, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(895, NULL, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(896, NULL, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(897, NULL, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(898, NULL, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(899, NULL, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(900, NULL, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(901, NULL, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(902, NULL, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(903, NULL, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(904, NULL, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(905, NULL, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(906, NULL, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(907, NULL, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(908, NULL, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(909, NULL, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(910, NULL, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(911, NULL, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(912, NULL, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(913, NULL, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(914, NULL, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(915, NULL, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(916, NULL, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(917, NULL, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(918, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(919, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(920, NULL, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(921, NULL, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(922, NULL, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(923, NULL, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(924, NULL, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(925, NULL, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(926, NULL, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(927, NULL, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(928, NULL, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(929, NULL, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(930, NULL, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(931, NULL, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(932, NULL, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(933, NULL, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(934, NULL, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(935, NULL, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(936, NULL, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(937, NULL, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(938, NULL, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(939, NULL, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(940, NULL, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(941, NULL, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(942, NULL, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(943, NULL, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(944, NULL, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(945, NULL, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(946, NULL, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(947, NULL, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(948, NULL, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527691, 58, 1547527691),
(949, NULL, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(950, NULL, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(951, NULL, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(952, NULL, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(953, NULL, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(954, NULL, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(955, NULL, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(956, NULL, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(957, NULL, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(958, NULL, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(959, NULL, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(960, NULL, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(961, NULL, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(962, NULL, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(963, NULL, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(964, NULL, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(965, NULL, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(966, NULL, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(967, NULL, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(968, NULL, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(969, NULL, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(970, NULL, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(971, NULL, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(972, NULL, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(973, NULL, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(974, NULL, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(975, NULL, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(976, NULL, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(977, NULL, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(978, NULL, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(979, NULL, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(980, NULL, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(981, NULL, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(982, NULL, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(983, NULL, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(984, NULL, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(985, NULL, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(986, NULL, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(987, NULL, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(988, NULL, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(989, NULL, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(990, NULL, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(991, NULL, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(992, NULL, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(993, NULL, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(994, NULL, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(995, NULL, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(996, NULL, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(997, NULL, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(998, NULL, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(999, NULL, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1000, NULL, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1001, NULL, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1002, NULL, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1003, NULL, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1004, NULL, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1005, NULL, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1006, NULL, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1007, NULL, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1008, NULL, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1009, NULL, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1010, NULL, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1011, NULL, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1012, NULL, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1013, NULL, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1014, NULL, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1015, NULL, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1016, NULL, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1017, NULL, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1018, NULL, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1019, NULL, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1020, NULL, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1021, NULL, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1022, NULL, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1023, NULL, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1024, NULL, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1025, NULL, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1026, NULL, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547527692, 58, 1547527692),
(1027, 40, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 'C', 20, 'minor', 'sudah', 'kurang', NULL, NULL, 58, 1547535284, 68, 1547537795),
(1028, 40, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, 'A', 40, 'minor', NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547537519),
(1029, 40, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1030, 40, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1031, 40, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1032, 40, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1033, 40, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1034, 40, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1035, 40, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1036, 40, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1037, 40, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1038, 40, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1039, 40, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1040, 40, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1041, 40, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1042, 40, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1043, 40, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1044, 40, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1045, 40, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1046, 40, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1047, 40, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1048, 40, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1049, 40, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1050, 40, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1051, 40, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1052, 40, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1053, 40, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1054, 40, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1055, 40, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1056, 40, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1057, 40, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1058, 40, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1059, 40, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1060, 40, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1061, 40, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1062, 40, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1063, 40, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1064, 40, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1065, 40, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1066, 40, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1067, 40, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1068, 40, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1069, 40, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1070, 40, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1071, 40, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1072, 40, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1073, 40, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1074, 40, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1075, 40, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1076, 40, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1077, 40, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1078, 40, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1079, 40, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1080, 40, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1081, 40, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1082, 40, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1083, 40, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1084, 40, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1085, 40, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1086, 40, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1087, 40, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1088, 40, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1089, 40, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1090, 40, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1091, 40, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1092, 40, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1093, 40, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1094, 40, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1095, 40, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1096, 40, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1097, 40, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1098, 40, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1099, 40, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1100, 40, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1101, 40, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1102, 40, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1103, 40, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1104, 40, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1105, 40, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1106, 40, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1107, 40, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1108, 40, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1109, 40, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1110, 40, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1111, 40, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1112, 40, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1113, 40, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1114, 40, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1115, 40, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1116, 40, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1117, 40, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1118, 40, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1119, 40, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1120, 40, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1121, 40, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1122, 40, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1123, 40, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1124, 40, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1125, 40, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1126, 40, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1127, 40, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1128, 40, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1129, 40, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1130, 40, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1131, 40, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1132, 40, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1133, 40, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1134, 40, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1135, 40, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1136, 40, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1137, 40, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1138, 40, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1139, 40, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1140, 40, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1141, 40, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1142, 40, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1143, 40, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1144, 40, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1145, 40, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1146, 40, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1147, 40, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1148, 40, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1149, 40, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1150, 40, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284);
INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `nilai_a`, `nilai_b`, `nilai_c`, `bobot`, `audit_nilai`, `audit_nilai_angka`, `audit_temuan`, `audit_ket_praaudit`, `audit_keterangan`, `audit_ket_pascaaudit`, `audit_pencegahan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1151, 40, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1152, 40, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1153, 40, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1154, 40, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1155, 40, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1156, 40, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1157, 40, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1158, 40, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1159, 40, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1160, 40, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1161, 40, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1162, 40, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1163, 40, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1164, 40, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1165, 40, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1166, 40, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1167, 40, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1168, 40, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1169, 40, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1170, 40, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1171, 40, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1172, 40, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1173, 40, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1174, 40, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1175, 40, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1176, 40, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1177, 40, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1178, 40, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1179, 40, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1180, 40, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1181, 40, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1182, 40, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1183, 40, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1184, 40, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1185, 40, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1186, 40, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1187, 40, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1188, 40, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1189, 40, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1190, 40, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1191, 40, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1192, 40, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1193, 40, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1194, 40, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1195, 40, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1196, 40, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1197, 40, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1198, 40, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1199, 40, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1200, 40, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1201, 40, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1202, 40, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1203, 40, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1204, 40, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1205, 40, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1206, 40, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1207, 40, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1208, 40, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1209, 40, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1210, 40, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284),
(1211, 40, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 1547535284, 58, 1547535284);

-- --------------------------------------------------------

--
-- Table structure for table `tb_audit_upload`
--

CREATE TABLE `tb_audit_upload` (
  `upload_id` int(11) NOT NULL,
  `audit_id` int(11) NOT NULL,
  `audit_upload` varchar(255) NOT NULL,
  `upload_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_audit_upload`
--

INSERT INTO `tb_audit_upload` (`upload_id`, `audit_id`, `audit_upload`, `upload_status`) VALUES
(46, 79, '79-1.UNTUK PIMPINAN.docx', NULL),
(48, 79, '79-penilaian asesor utk PN Cheklis Asli sesuai Badilum.xls', NULL),
(49, 79, '79-penilaian asesor utk PN Klas 2 sudah dipilah dan Asli.xlsx', NULL),
(50, 79, '79-Presentation Secrets Of Steve Jobs.pdf', NULL),
(51, 79, '79-Susunan Acara Surveilans.doc', NULL),
(52, 79, '79-pasca-index.pdf', NULL),
(53, 79, '79-BAB 1.pdf', 'pra'),
(55, 79, '79-BAB 3.pdf', 'pra'),
(56, 79, '79-ipi470486.pdf', 'pasca'),
(57, 79, '79-jbptunikompp-gdl-lusysusila-22267-10-babii.pdf', 'pasca'),
(58, 1027, '1027-pra-BAB 9.docx', 'pra'),
(59, 1027, '1027-pra-ceklis auto (1).xlsx', 'pra'),
(60, 1027, '1027-pra-ceklis auto.xlsx', 'pra');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `jenis_id` int(11) NOT NULL,
  `jenis_nama` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`jenis_id`, `jenis_nama`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Assesment', 58, 1547141668, 58, 1547141760),
(2, 'Re assesment', 58, 1547141686, 58, 1547141749),
(3, 'Surveilans', 58, 1547141736, 58, 1547175394);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(255) NOT NULL,
  `kelas_pkey` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`kelas_id`, `kelas_nama`, `kelas_pkey`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Kelas 1', 0, 0, 0, 0, 0),
(2, 'Kelas 2', 0, 0, 0, 0, 0),
(4, 'Kelas 1A', 1, 0, 0, 0, 0),
(5, 'Kelas 1A Khusus', 1, 0, 0, 0, 0),
(6, 'Kelas 1B', 1, 0, 0, 0, 0),
(7, 'Kelas II', 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kriteria_id` int(11) NOT NULL,
  `kriteria_nama` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kriteria_id`, `kriteria_nama`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Leadership', 58, 1545756450, 58, 1545756450),
(2, 'Customer Focus', 58, 1545756475, 58, 1545756475),
(3, 'Process Management', 58, 1545759726, 58, 1545759726),
(4, 'Strategic Planning', 58, 1547063707, 58, 1547063707),
(5, 'Resources Management', 58, 1547063767, 58, 1547063767),
(6, 'Document System', 58, 1547063784, 58, 1547063784),
(7, 'Performance Result', 58, 1547063838, 58, 1547063838),
(8, 'Tidak Ada Kriteria', 58, 1547063878, 58, 1547063878);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(255) NOT NULL,
  `pegawai_nip` varchar(255) DEFAULT NULL,
  `pegawai_alamat` varchar(255) DEFAULT NULL,
  `pegawai_status` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_nip`, `pegawai_alamat`, `pegawai_status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(8, 'Sujatmiko, SH., MH.', '', '', 'Pegawai Tetap', 58, 1547193998, 58, 1547193998),
(9, 'Nursyam, SH., M.Hum.,', '', '', 'Pegawai Tetap', 58, 1547194026, 58, 1547194026),
(11, 'Drs. Muhammad Noor Effendi, SH.', '', '', 'Pegawai Tetap', 58, 1547194072, 58, 1547194072),
(12, 'Drs. H. Djamaluddin Dn, SH., M.Hum.', '', '', 'Pegawai Tetap', 58, 1547194107, 58, 1547194107),
(13, 'H. Suharis, SH., MM.', '', '', 'Pegawai Tetap', 58, 1547194128, 58, 1547194128),
(14, 'Hanik Muyasaroh, SH.', '', '', 'Pegawai Tetap', 58, 1547194156, 58, 1547194156),
(15, 'Sofia Diana Christina, SH.', '', '', 'Pegawai Tetap', 58, 1547194174, 58, 1547194174),
(16, 'R. Ardi Koentjoro, SH.,CN.,MH.', '', '', 'Pegawai Tetap', 58, 1547194228, 58, 1547194228),
(17, 'Didik Widarmadji, SH', '', '', 'Pegawai Tetap', 58, 1547194244, 58, 1547194244),
(18, 'Rendra Ariyanta Putra, SH., M.Hum.', '', '', 'Pegawai Tetap', 58, 1547194267, 58, 1547194267);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengadilan_negeri`
--

CREATE TABLE `tb_pengadilan_negeri` (
  `pn_id` int(11) NOT NULL,
  `pn_nama` varchar(255) NOT NULL,
  `pn_alamat` text NOT NULL,
  `pn_kelas` int(11) DEFAULT NULL,
  `pn_kelas_type` int(11) NOT NULL,
  `pn_akreditasi` varchar(5) DEFAULT NULL,
  `pn_ketua` varchar(255) DEFAULT NULL,
  `pn_email` varchar(255) DEFAULT NULL,
  `pn_website` varchar(255) DEFAULT NULL,
  `pn_telp` varchar(50) DEFAULT NULL,
  `pn_fax` varchar(50) DEFAULT NULL,
  `pn_pegawai` int(11) DEFAULT NULL,
  `pn_honorer` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengadilan_negeri`
--

INSERT INTO `tb_pengadilan_negeri` (`pn_id`, `pn_nama`, `pn_alamat`, `pn_kelas`, `pn_kelas_type`, `pn_akreditasi`, `pn_ketua`, `pn_email`, `pn_website`, `pn_telp`, `pn_fax`, `pn_pegawai`, `pn_honorer`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Pengadilan Negeri Surabaya', 'Surabaya', 1, 5, 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 58, 1547534252),
(2, 'Pengadilan Negeri Sidoarjo', 'Sidoarjo', 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(3, 'Pengadilan Negeri Gresik', 'Gresik', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(4, 'Pengadilan Negeri Mojokerto', 'Mojokerto', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(5, 'Pengadilan Negeri Jombang', 'Jombang', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(6, 'Pengadilan Negeri Sumenep', 'Sumenep', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(7, 'Pengadilan Negeri Sampang', 'Sampang', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(8, 'Pengadilan Negeri Pamekasan', 'Pamekasan', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(9, 'Pengadilan Negeri Bangkalan', 'Bangkalan', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(10, 'Pengadilan Negeri Banyuwangi', 'Banyuwangi', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(11, 'Pengadilan Negeri Jember', 'Jember', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(12, 'Pengadilan Negeri Bondowoso', 'Bondowoso', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(13, 'Pengadilan Negeri Situbondo', 'Situbondo', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(14, 'Pengadilan Negeri Pacitan', 'Pacitan', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(15, 'Pengadilan Negeri Ngawi', 'Ngawi', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(16, 'Pengadilan Negeri Magetan', 'Magetan', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(17, 'Pengadilan Negeri Ponorogo', 'Ponorogo', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(18, 'Pengadilan Negeri Madiun', 'Madiun', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(19, 'Pengadilan Negeri Kabupaten Madiun', 'Kabupaten Madiun', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(20, 'Pengadilan Negeri Trenggalek', 'Trenggalek', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(21, 'Pengadilan Negeri Blitar', 'Blitar', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(22, 'Pengadilan Negeri Tulungagung', 'Tulungagung', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(23, 'Pengadilan Negeri Nganjuk', 'Nganjuk', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(24, 'Pengadilan Negeri Kediri', 'Kediri', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(25, 'Pengadilan Negeri Kabupaten Kediri', 'Kabupaten Kediri', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(26, 'Pengadilan Negeri Tuban', 'Tuban', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(27, 'Pengadilan Negeri Lamongan', 'Lamongan', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(28, 'Pengadilan Negeri Bojonegoro', 'Bojonegoro', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(29, 'Pengadilan Negeri Lumajang', 'Lumajang', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(30, 'Pengadilan Negeri Kraksaan', 'Kraksaan', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(31, 'Pengadilan Negeri Probolinggo', 'Probolinggo', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(32, 'Pengadilan Negeri Pasuruan', 'Pasuruan', 2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(33, 'Pengadilan Negeri Bangil', 'Bangil', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(34, 'Pengadilan Negeri Kepanjen', 'Kepanjen', 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(35, 'Pengadilan Negeri Malang', 'Malang', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengadilan_tinggi`
--

CREATE TABLE `tb_pengadilan_tinggi` (
  `pt_id` varchar(5) NOT NULL,
  `pt_nama` varchar(255) DEFAULT NULL,
  `pt_alamat` varchar(255) DEFAULT NULL,
  `pt_pimpinan` varchar(255) DEFAULT NULL,
  `pt_website` varchar(255) DEFAULT NULL,
  `pt_email` varchar(255) DEFAULT NULL,
  `pt_telp` varchar(255) DEFAULT NULL,
  `pt_fax` varchar(255) DEFAULT NULL,
  `pt_pegawai` int(11) DEFAULT NULL,
  `pt_honorer` int(11) DEFAULT NULL,
  `pt_logo` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengadilan_tinggi`
--

INSERT INTO `tb_pengadilan_tinggi` (`pt_id`, `pt_nama`, `pt_alamat`, `pt_pimpinan`, `pt_website`, `pt_email`, `pt_telp`, `pt_fax`, `pt_pegawai`, `pt_honorer`, `pt_logo`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('PT001', 'Pengadilan Tinggi Jawa Timur', 'Jalan Sumatera No. 42 Surabaya 60281  Jawa Timur', 'Sujatmiko, SH., MH.,', 'www.pt-surabaya.go.id', 'ptsurabaya@gmail.com', '(031) 5024408-5033042', '(031) 5033042', 4, 2, 'PT001.png', 58, 1543424725, 58, 1547177935);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `tanya_id` int(5) NOT NULL,
  `kelas_id` int(5) NOT NULL,
  `tujuan_id` int(5) NOT NULL,
  `kriteria_id` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `tanya_ket_a` text,
  `tanya_ket_b` text,
  `tanya_ket_c` text,
  `tanya_bobot` double DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`tanya_id`, `kelas_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `tanya_ket_a`, `tanya_ket_b`, `tanya_ket_c`, `tanya_bobot`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 1, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 0, 0, 58, 1547193966),
(3, 1, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, 0, 0, 0, 0),
(4, 1, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, 0, 0, 0, 0),
(5, 1, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, 0, 0, 0, 0),
(6, 1, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, 0, 0, 0, 0),
(7, 1, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, 0, 0, 0, 0),
(8, 1, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, 0, 0, 0, 0),
(9, 1, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, 0, 0, 0, 0),
(10, 1, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, 0, 0, 0, 0),
(11, 1, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, 0, 0, 0, 0),
(12, 1, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, 0, 0, 0, 0),
(13, 1, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, 0, 0, 0, 0),
(14, 1, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, 0, 0, 0, 0),
(15, 1, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, 0, 0, 0, 0),
(16, 1, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, 0, 0, 0, 0),
(17, 1, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, 0, 0, 0, 0),
(18, 1, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, 0, 0, 0, 0),
(19, 1, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, 0, 0, 0, 0),
(20, 1, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, 0, 0, 0, 0),
(21, 1, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, 0, 0, 0, 0),
(22, 1, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(23, 1, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(24, 1, 4, 2, 'Tim internal audit\r\na.  SK Tim\r\nb.  Jadwal pelaksanaan\r\nc.  Daftar/list pertanyaan audit internal\r\nd.  Tindak lanjut hasil temuan\r\n', 'Sudah dilaksanakan dan sesuai dengan SOP (dibuktikan dengan data dukung)', 'Sudah dilaksanakan namun belum sesuai dengan SOP ', 'Belum dilaksanakan', 7, 0, 0, 0, 0),
(25, 1, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, 0, 0, 0, 0),
(26, 1, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, 0, 0, 0, 0),
(27, 1, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, 0, 0, 0, 0),
(28, 1, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(29, 1, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, 0, 0, 0, 0),
(30, 1, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(31, 1, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(32, 1, 8, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(33, 1, 8, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, 0, 0, 0, 0),
(34, 1, 8, 2, 'Kesesuaian pelayanan pada Panmud Tipikor dengan SK Ketua Pengadilan ( standar pelayanan ) ', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, 0, 0, 0, 0),
(35, 1, 8, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II) CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(36, 1, 8, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi  CEK ATURAN SESUAI TIPIKOR', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(37, 1, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(38, 1, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, 0, 0, 0, 0),
(39, 1, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, 0, 0, 0, 0),
(40, 1, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, 0, 0, 0, 0),
(41, 1, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, 0, 0, 0, 0),
(42, 1, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, 0, 0, 0, 0),
(43, 1, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(44, 1, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(45, 1, 10, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(46, 1, 11, 2, 'Perkara PHI yang nilai gugatannya dibawah Rp. 150 jt yang biayanya di tanggung negara jika dalam proses persidangan biaya tersebut habis maka persidangan dilanjutkan secara prodeo (Surat Dirjen Badilum No. 1380/DJU/KU.01/12/2016 tgl 21 desember 2016)', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, 0, 0, 0, 0),
(47, 1, 11, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(48, 1, 12, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(49, 1, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(50, 1, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(51, 1, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, 0, 0, 0, 0),
(52, 1, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(53, 1, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, 0, 0, 0, 0),
(54, 1, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, 0, 0, 0, 0),
(55, 1, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, 0, 0, 0, 0),
(56, 1, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, 0, 0, 0, 0),
(57, 1, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, 0, 0, 0, 0),
(58, 1, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, 0, 0, 0, 0),
(59, 1, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, 0, 0, 0, 0),
(60, 1, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, 0, 0, 0, 0),
(61, 1, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, 0, 0, 0, 0),
(62, 1, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(63, 1, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, 0, 0, 0, 0),
(64, 1, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, 0, 0, 0, 0),
(65, 1, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, 0, 0, 0, 0),
(66, 1, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, 0, 0, 0, 0),
(67, 1, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, 0, 0, 0, 0),
(68, 1, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, 0, 0, 0, 0),
(69, 1, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, 0, 0, 0, 0),
(70, 1, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, 0, 0, 0, 0),
(71, 1, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, 0, 0, 0, 0),
(72, 1, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, 0, 0, 0, 0),
(73, 1, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, 0, 0, 0, 0),
(74, 1, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, 0, 0, 0, 0),
(75, 1, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, 0, 0, 0, 0),
(76, 1, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, 0, 0, 0, 0),
(77, 1, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(78, 1, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(79, 1, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(80, 1, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(81, 1, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(82, 1, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, 0, 0, 0, 0),
(83, 1, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, 0, 0, 0, 0),
(84, 1, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, 0, 0, 0, 0),
(85, 1, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, 0, 0, 0, 0),
(86, 1, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(87, 1, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(88, 1, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(89, 1, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(90, 1, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(91, 1, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, 0, 0, 0, 0),
(92, 1, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, 0, 0, 0, 0),
(93, 1, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(94, 1, 8, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, 0, 0, 0, 0),
(95, 1, 8, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(96, 1, 8, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(97, 1, 8, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(98, 1, 8, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(99, 1, 8, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(100, 1, 8, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, 0, 0, 0, 0),
(101, 1, 8, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, 0, 0, 0, 0),
(102, 1, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, 0, 0, 0, 0),
(103, 1, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(104, 1, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(105, 1, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(106, 1, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(107, 1, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(108, 1, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, 0, 0, 0, 0),
(109, 1, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, 0, 0, 0, 0),
(110, 1, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, 0, 0, 0, 0),
(111, 1, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, 0, 0, 0, 0),
(112, 1, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(113, 1, 10, 3, 'Panmud niaga harus membuat catatan penunjukan : Hakim Pengawas, kurator (kepailitan) dan pengurus untuk PKPU.', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 5.5, 0, 0, 0, 0),
(114, 1, 10, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, 0, 0, 0, 0),
(115, 1, 10, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(116, 1, 10, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(117, 1, 10, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(118, 1, 10, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(119, 1, 10, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(120, 1, 11, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, 0, 0, 0, 0),
(121, 1, 11, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(122, 1, 11, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(123, 1, 11, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(124, 1, 11, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(125, 1, 11, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(126, 1, 12, 3, 'Laporan Jumlah Perkara yang masuk dan putus untuk Panmud kekhususan wajib diberikan ke Dirjen Badilum', 'Sudah ada & Dilaksanakan', 'Sudah ada tapi belum dilaksanakan', 'Belum ada', 3, 0, 0, 0, 0),
(127, 1, 12, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, 0, 0, 0, 0),
(128, 1, 12, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(129, 1, 12, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(130, 1, 12, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(131, 1, 12, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(132, 1, 12, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(133, 1, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(134, 1, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(135, 1, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, 0, 0, 0, 0),
(136, 1, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, 0, 0, 0, 0),
(137, 1, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(138, 1, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(139, 1, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, 0, 0, 0, 0),
(140, 1, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, 0, 0, 0, 0),
(141, 1, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(142, 1, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(143, 1, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(144, 1, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, 0, 0, 0, 0),
(145, 1, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, 0, 0, 0, 0),
(146, 1, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, 0, 0, 0, 0),
(147, 1, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, 0, 0, 0, 0),
(148, 1, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, 0, 0, 0, 0),
(149, 1, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, 0, 0, 0, 0),
(150, 1, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, 0, 0, 0, 0),
(151, 1, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, 0, 0, 0, 0),
(152, 1, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, 0, 0, 0, 0),
(153, 1, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, 0, 0, 0, 0),
(154, 1, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, 0, 0, 0, 0),
(155, 1, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, 0, 0, 0, 0),
(156, 1, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, 0, 0, 0, 0),
(157, 1, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, 0, 0, 0, 0),
(158, 1, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, 0, 0, 0, 0),
(159, 1, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, 0, 0, 0, 0),
(160, 1, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, 0, 0, 0, 0),
(161, 1, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, 0, 0, 0, 0),
(162, 1, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, 0, 0, 0, 0),
(163, 1, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, 0, 0, 0, 0),
(164, 1, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, 0, 0, 0, 0),
(165, 1, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(166, 1, 8, 6, 'Adanya uraian tugas', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(167, 1, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(168, 1, 10, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(169, 1, 11, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(170, 1, 12, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(171, 1, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(172, 1, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, 0, 0, 0, 0),
(173, 1, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, 0, 0, 0, 0),
(174, 1, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(175, 1, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, 0, 0, 0, 0),
(176, 1, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, 0, 0, 0, 0),
(177, 1, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, 0, 0, 0, 0),
(178, 1, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, 0, 0, 0, 0),
(179, 1, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, 0, 0, 0, 0),
(180, 1, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, 0, 0, 0, 0),
(181, 1, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, 0, 0, 0, 0),
(182, 1, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, 0, 0, 0, 0),
(183, 1, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, 0, 0, 0, 0),
(184, 1, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, 0, 0, 0, 0),
(185, 1, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, 0, 0, 0, 0),
(186, 1, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, 0, 0, 0, 0),
(188, 2, 1, 1, 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', 25, 0, 0, 0, 0),
(189, 2, 1, 1, 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN\r\n', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', 45, 0, 0, 0, 0),
(190, 2, 1, 1, 'Pembentukan Tim Penilaian Mandiri Pelaksanaan Reformasi Birokrasi (PMPRB)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai kebutuhan organisasi dan sudah mensosialisasikan PMPRB yang sedang dan akan dilakukan (dibuktikan dengan data dukung)', 'Telah membentuk Tim Reformasi Birokrasi dengan SK sesuai dengan kebutuhan organisasi tetapi belum mensosialisasikan PMPRB (dibuktikan dengan data dukung) atau Telah membentuk Tim Reformasi Birokrasi namun belum sesuai dengan kebutuhan ', 'Belum membentuk Tim PMPRB ', 25, 0, 0, 0, 0),
(191, 2, 1, 1, 'Penerapan Budaya Kerja\r\na. Pelayanan yang optimal (kecepatan dan ketepatan penangan perkara)\r\nb. Kedisiplinan\r\nc. Kerjasama\r\nd. 5R dan 3S\r\ne. Peraturan-peraturan baru di lingkungan Mahkamah Agung\r\n', 'Sudah disosialisasikan dan dilaksanakan (dibuktikan dengan data dukung) ', 'Sudah disosialisasikan tetapi belum dilaksanakan', 'Belum disosialisasikan', 45, 0, 0, 0, 0),
(192, 2, 1, 1, 'Penetapan Role Model', 'Ada SK Tim Penilai dan kriteria penilaian, SK Penetapan Role Model, berita acara penilaian dan ditetapkan minimal 6 bulan', 'Dipenuhi sebagian dari huruf a', 'Belum dilaksanakan', 5, 0, 0, 0, 0),
(193, 2, 1, 1, 'Penandatanganan Pakta Integritas (yang diperbarui setiap tahun)', 'Sudah dilaksanakan sesuai PERMENPAN No. 52 Tahun 2014', 'Sudah dilaksanakan tetapi belum sesuai PERMENPAN No. 52 Tahun 2014', 'Belum dilaksanakan', 10, 0, 0, 0, 0),
(194, 2, 1, 1, 'Zona Integritas , Komitmen Bersama dan Piagam Pencanangan Pembangunan Zona Integritas Menuju Wilayah Bebas dari Korupsi dan Wilayah Birokrasi Bersih dan Melayani', 'Sudah dilaksanakan dan disaksikan oleh Pimpinan Instansi Pemerintah', 'Sudah dilaksanakan tetapi tidak disaksikan oleh Pimpinan Instansi Pemerintah', 'Belum melaksanakan', 10, 0, 0, 0, 0);
INSERT INTO `tb_pertanyaan` (`tanya_id`, `kelas_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `tanya_ket_a`, `tanya_ket_b`, `tanya_ket_c`, `tanya_bobot`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(195, 2, 1, 1, 'Pelaksanaan Pengawasan dan Pembinaan sesuai dengan PERMA No. 7,8 dan 9 Tahun 2016', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 35, 0, 0, 0, 0),
(196, 2, 1, 2, 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', 2, 0, 0, 0, 0),
(197, 2, 1, 2, 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', 3, 0, 0, 0, 0),
(198, 2, 1, 2, 'Salinan putusan pengadilan (SEMA No. 01 Tahun 2011)', 'Salinan putusan telah siap pada hari ke 14 (hari kerja) setelah putusan diucapkan', 'Salinan putusan disiapkan lewat waktu 14 (hari kerja)', 'Tidak terkontrol', 5, 0, 0, 0, 0),
(199, 2, 1, 2, 'Penetapan Majelis Hakim dan PP', 'Penetapan majelis dan PP sudah sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP belum sepenuhnya menggunakan SIPP', 'Penetapan majelis dan PP  belum menggunakan SIPP', 3, 0, 0, 0, 0),
(200, 2, 1, 2, 'Manajemen Resiko', 'Telah ditetapkan Tim Manajemen Resiko dan telah dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Telah ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 'Belum ditetapkan Tim Manajemen Resiko dan belum dibuat langkah-langkah antisipasi penanganan resiko (identifikasi resiko)', 3, 0, 0, 0, 0),
(201, 2, 1, 2, 'Pemanfaatan Ruang Tamu Terbuka', 'Penerimaan tamu perkara sudah sesuai  SEMA No. 3 Tahun 2010 dan Surat Edaran Dirjen Badilum No. 1 Tahun 2012', 'Ruang Tamu Terbuka sudah ada, tetapi tidak dimanfaatkan sebagaimana mestinya', 'Belum ada ruang tamu terbuka', 2, 0, 0, 0, 0),
(202, 2, 1, 2, 'Penyimpanan uang konsinyasi', 'Pelaksanaan sudah sesuai dengan PERMA No. 3 Tahun 2016 dan SEMA No. 4 Tahun 2008 ', 'Pelaksanaan belum sesuai dengan PERMA No. 3 Tahun 2016 atau SEMA No. 4 Tahun 2008', 'Belum melaksanakan', 2, 0, 0, 0, 0),
(203, 2, 1, 2, 'Telah dilakukan pengawasan atas pelaksanaan court calendar dengan ketentuan setiap perkara pada asasnya harus putus termasuk minutasinya dalam waktu paling lambat 5 bulan dan mengumumkannya pada pertemuan berkala dengan para hakim', 'Telah dilakukan sepenuhnya ', 'Telah dilakukan tapi belum sepenuhnya', 'Belum Dilakukan ', 5, 0, 0, 0, 0),
(204, 2, 2, 2, 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', 5, 0, 0, 0, 0),
(205, 2, 2, 2, 'Hakim Pengawas dan Pengamat telah melakukan Pengawasan berkala sesuai aturan ( KUHAP dan SEMA No. 7 Tahun 1985) dan telah membuat laporan hasil pengawasan dan setiap laporan pengawasan sudah dievaluasi serta ditindaklanjuti, telah dilaporkan kepada Pengadilan Tingkat Banding', 'Telah dilakukan dan ditindak lanjuti (dibuktikan dengan data dukung) ', 'Telah dilakukan (dibuktikan dengan data dukung) ', 'Belum Dilakukan', 7, 0, 0, 0, 0),
(206, 2, 3, 2, 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', 7, 0, 0, 0, 0),
(207, 2, 3, 2, 'Kewajiban Hakim untuk memonitor berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'Tidak selalu dilaksanakan', 'Belum dilaksanakan', 7, 0, 0, 0, 0),
(208, 2, 3, 2, 'Hakim menetapkan hari sidang pertama perkara perdata dan pidana serta penetapan penahanan dan perpanjangan penahanan dalam perkara pidana', 'Selalu dilaksanakan dengan menggunakan SIPP', 'Tidak selalu dilaksanakan menggunakan SIPP', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(209, 2, 3, 2, 'Hakim wajib membuat penetapan penundaan sidang secara tertulis apabila jaksa penuntut umum tidak hadir di persidangan', 'Selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', ' Tidak selalu dilaksanakan dengan penetapan (dibuktikan dengan data dukung)', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(210, 2, 5, 2, 'Survey kepuasan masyarakat\r\na.  Tim survey\r\nb.  Jadwal Survey (minimal per 6 bulan)\r\nc.  Kuesioner\r\nd.  Analisa hasil survey\r\ne.  Laporan Hasil Survey\r\nf.  Tindak lanjut atas unsur dengan nilai terendah\r\n', 'Sudah dilaksanakan sesuai PERMENPAN No. 16 Tahun 2014', 'Sudah dilaksanakan namun belum sesuai PERMENPAN No. 16 Tahun 2014', 'Belum dilaksanakan', 7, 0, 0, 0, 0),
(211, 2, 6, 2, 'Standar Pelayanan Pemberian Informasi Publik di Pengadilan\r\na.  Meja Informasi sesuai dengan SK Dirjen Badilum No. 1586/DJU/SK/PS01/9/2015 tentang standar pelayanan pemberian informasi publik\r\nb.  Petugas Meja Informasi ditetapkan dengan SK\r\nc.  Tersedianya Kotak Pengaduan dan Saran,Tersediannya Formulir Permohonan Informasi sesuai dengan lampiran II dan III SK KMA No. 1-144/KMA/I/2011\r\nd.  Petugas meja informasi sudah membuat laporan sesuai ketentuan pada SK KMA No. 1-144/KMA/I/2011\r\ne.  Tersedianya perangkat komputer di meja informasi untuk mengakses SIPP\r\nf.  Tersedia monitor jadwal sidang\r\ng.  Tersedianya sarana survey harian (puas/tidak puas terhadap pelayanan pengadilan)\r\n', 'Terpenuhi seluruhnya\r\n\r\n', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 5, 0, 0, 0, 0),
(212, 2, 6, 2, 'Pos Bantuan Hukum (POSBAKUM)\r\na.  MoU antara Ketua Pengadilan dengan Lembaga Layanan Bantuan Hukum dan diperbarui setiap tahun\r\nb.  Absensi Petugas POSBAKUM\r\nc.  Jadwal Piket petugas POSBAKUM\r\nd.  Buku tamu\r\ne.  Daftar pengacara yang dapat dihubungi untuk perkara prodeo\r\nf.  Laporan Jumlah konsultasi dan perkara yang dibantu melalui POSBAKUM ke Dirjen Badilum\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Tidak terpenuhi', 2, 0, 0, 0, 0),
(213, 2, 7, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(214, 2, 7, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, 0, 0, 0, 0),
(215, 2, 7, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(216, 2, 7, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(217, 2, 9, 2, 'Penunjukkan Jurusita melalui SIPP', 'Selalu menggunakan SIPP', 'Tidak selalu menggunakan SIPP', 'Belum menggunakan SIPP', 5, 0, 0, 0, 0),
(218, 2, 9, 2, 'Panjar Biaya Perkara', 'Sudah ditetapkan dan sudah diinformasikan dalam media informasi ( papan dan website )', 'Sudah ditetapkan namun hanya diinformasikan melalui papan informasi', 'Sudah ditetapkan tetapi tidak diinformasikan dalam media informasi', 7, 0, 0, 0, 0),
(219, 2, 9, 2, 'Proses Penundaan Sidang oleh PP melalui SIPP paling lambat 1 X 24 jam', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan          ', 2, 0, 0, 0, 0),
(220, 2, 9, 2, 'Alur Gugatan sederhana harus diinformasikan', 'Sudah disosialisasikan dan diinformasikan internal maupun eksternal pengadilan ', 'Sudah disosialisasikan dan diinformasikan internal pengadilan', 'Belum di sosialisasikan dan diinformasikan', 2, 0, 0, 0, 0),
(221, 2, 9, 2, 'Kesesuaian pelayanan pada Panmud Perdata dengan SK Ketua Pengadilan', 'Sudah dilaksanakan seluruhnya\r\n', 'Sudah dilaksanakan sebagian                                        ', 'Tidak dilaksanakan \r\n', 2, 0, 0, 0, 0),
(222, 2, 9, 2, 'Papan nama daftar mediator diinformasikan oleh Panmud Perdata ', 'Sudah dibuat dan sudah diinformasikan\r\n', 'Sudah dibuat namun belum diinformasikan                   ', 'Belum ada', 2, 0, 0, 0, 0),
(223, 2, 9, 2, 'Permohonan kasasi yang telah memenuhi syarat formal selambat lambatnya dalam waktu 14 hari setelah tenggang waktu mengajukan memori kasasi berakhir, berkas kasasi harus sudah dikirim ke Mahkamah Agung (Buku II)', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(224, 2, 9, 2, 'Dalam waktu 30 hari sejak permohonan banding diajukan berkas banding berupa bundel a dan b harus sudah dikirim ke pengadilan tinggi', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan', 'Tidak dilaksanakan', 2, 0, 0, 0, 0),
(225, 2, 13, 2, 'Kewajiban PP untuk membuat berita acara sidang, 1 hari sebelum hari sidang berikutnya, harus sudah selesai dan ditandatangani', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(226, 2, 13, 2, 'PP Wajib mengisi penundaan sidang  pada SIPP (paling lambat 1 X 24 Jam), dan melaporkan penundaan sidangnya ke panmud perdata atau pidana', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(227, 2, 13, 2, 'Mengerjakan minutasi perkara sesuai SOP', 'Sudah dilaksanakan ', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 5, 0, 0, 0, 0),
(228, 2, 14, 2, 'Relaas panggilan sidang /delegasi harus dilaksanakan paling lama 2 hari kerja setelah surat tugas keluar ( SEMA 6 tahun 2014 )', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(229, 2, 15, 2, 'Pelaksanaan absensi sesuai dengan Perma No. 7 Tahun 2016 dan SK KMA 071/KMA/SK/V/2008 (uji petik tiga bulan terakhir)', 'Absensi manual dan finger print sesuai dan pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual dan finger print belum sesuai namun pengisian absensi manual sudah sesuai ketentuan', 'Absensi manual, finger print dan pengisian absensi manual tidak sesuai ketentuan', 2, 0, 0, 0, 0),
(230, 2, 15, 2, 'Izin keluar kantor menggunakan formulir sesuai SK KMA 071/KMA/SK/V/2008 atau surat tugas sesuai ketentuan (uji petik tiga bulan terakhir)', 'Sudah selalu dilaksanakan\r\n', 'Tidak selalu dilaksanakan                                               ', 'Belum dilaksanakan\r\n', 2, 0, 0, 0, 0),
(231, 2, 15, 2, 'Peta kekuatan pegawai, rencana kebutuhan pegawai, dan Daftar Urut Kepangkatan', 'Terpenuhi seluruhnya dan sudah tepat\r\n', 'Terpenuhi sebagian\r\n', 'Tidak tersedia sama sekali', 2, 0, 0, 0, 0),
(232, 2, 16, 2, 'Pengelolaan surat masuk/keluar di pengadilan', 'Sudah tercatat dan menggunakan aplikasi persuratan dan terkendali', 'Sudah tercatat, belum menggunakan aplikasi dan terkendali', 'Sudah tercatat, tetapi belum terkendali', 5, 0, 0, 0, 0),
(233, 2, 16, 2, 'Labelisasi barang milik negara', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, 0, 0, 0, 0),
(234, 2, 16, 2, 'Daftar barang ruangan', 'Diterapkan', 'Diterapkan sebagian', 'Tidak diterapkan', 2, 0, 0, 0, 0),
(235, 2, 16, 2, 'Layout jalur keluar masuk kendaraan ', 'Jalur masuk dan keluar kendaraan sudah diatur dengan baik (termasuk jalur mobil tahanan dan disesuaikan dengan kondisi pengadilan)', 'Jalur masuk dan keluar kendaraan sudah ada, tapi belum difungsikan', 'Jalur masuk dan keluar kendaraan belum tertata', 2, 0, 0, 0, 0),
(236, 2, 16, 2, 'Pengaturan lahan parkir', 'Tertata dengan baik, ada petugas parkir dan sudah dipisahkan antara karyawan dengan pengunjung', 'Tertata dengan baik, belum dipisahkan antara karyawan dengan pengunjung', 'Tidak tertata', 2, 0, 0, 0, 0),
(237, 2, 16, 2, 'Jalur evakuasi dan titik kumpul', 'Sudah ada dan tepat', 'Sudah ada tetapi belum tepat', 'Belum ada', 2, 0, 0, 0, 0),
(238, 2, 16, 2, 'Simulasi tanggap darurat dan kebakaran dengan instansi terkait', 'Sudah dilaksanakan dan terbentuk tim penanganan bencana                                                  ', 'Sudah dilaksanakan tetapi belum terbentuk tim penanganan bencana  ', 'Belum dilaksanakan', 2, 0, 0, 0, 0),
(239, 2, 16, 2, 'Jalan masuk gedung pengadilan', '1 Pintu dan terpantau', '1 Pintu tetapi tidak terpantau', 'Lebih dari 1 pintu masuk dan tidak terpantau', 2, 0, 0, 0, 0),
(240, 2, 16, 2, 'Fasilitas untuk penyandang difabel', 'Sudah tersedia (Toilet, jalur, kursi roda)', 'Sudah tersedia sebagian', 'Belum tersedia', 2, 0, 0, 0, 0),
(241, 2, 16, 2, 'Tersedia informasi tentang Visi dan Misi,Papan daftar nama hakim, Papan daftar nama mediator, alur perkara, alur pengajuan dan penanganan layanan bantuan hukum, gugatan sederhana, dan informasi panjar biaya perkara, ', 'Tersedia seluruhnya\r\n', 'Tersedia sebagian\r\n', 'Belum tersedia', 2, 0, 0, 0, 0),
(242, 2, 16, 2, 'Sarana alat pemadam api ringan (APAR)', 'Ada, memadai dan terkontrol', 'Ada tetapi tidak memadai', 'Belum ada', 2, 0, 0, 0, 0),
(243, 2, 16, 2, 'Kebersihan lingkungan pengadilan', 'Sudah dilaksanakan terjadwal dengan alat kontrol checklist', 'Sudah dilaksanakan terjadwal belum ada checklist', 'Tidak terjadwal', 2, 0, 0, 0, 0),
(244, 2, 16, 2, 'Pemeliharaan sarana dan prasarana (perangkat IT, rumah dinas, kendaraan dinas perlengkapan persidangan dll)', 'Terjadwal dan menggunakan kartu kontrol \r\n', 'Terjadwal tetapi belum menggunakan kartu kontrol.                                                                      \r\n', 'Tidak terjadwal dan tidak menggunakan kartu kontrol', 2, 0, 0, 0, 0),
(245, 2, 16, 2, 'Penempatan CCTV', 'Ada dan penempatannya tepat', 'Ada tetapi penempatannya tidak tepat', 'Tidak ada', 2, 0, 0, 0, 0),
(246, 2, 16, 2, 'Petugas keamanan', 'Bersertifikat dan dilengkapi dengan peralatan', 'Tidak bersertifikat dan dilengkapi dengan peralatan', 'Ada, tetapi tidak memenuhi persyaratan', 2, 0, 0, 0, 0),
(247, 2, 16, 2, 'Sarana pendukung (Ruang Posbakum, Ruang jaksa, Ruang penasihat hukum, Ruang Laktasi, Ruang tunggu pengunjung, Ruang  kesehatan, perpustakaan) ', 'Lengkap dan layak\r\n', 'Lengkap, tetapi tidak layak\r\n', 'Tidak lengkap/Tidak ada', 2, 0, 0, 0, 0),
(248, 2, 16, 2, 'Papan realisasi anggaran DIPA 01 dan DIPA 03', 'Ada dan diperbarui berkala 3 bulan', 'Ada tetapi data tidak diperbarui berkala', 'Tidak ada', 2, 0, 0, 0, 0),
(249, 2, 16, 2, 'Transparansi ( keterbukaan ) RKAK/L', 'Diinformasikan melalui media informasi dan papan pengumuman', 'Diinformasikan melalui media informasi / papan pengumuman', 'Tidak diinformasikan ', 2, 0, 0, 0, 0),
(250, 2, 17, 2, 'Standarisasi website pengadilan (Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015)', 'Sudah ada dan sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Sudah ada tetapi belum sesuai Surat Dirjen Badilum No. 362/DJU/HM.02.3/IV/2015', 'Belum ada', 2, 0, 0, 0, 0),
(251, 2, 1, 3, 'Sekretaris menyampaikan Laporan Realisasi Anggaran ( LRA ) setiap bulan secara tertulis', 'Sudah dilakukan dan tertib (dibuktikan dengan data dukung)', 'Sudah dilakukan tidak tertib(dibuktikan dengan data dukung)', 'Belum dilakukan', 3, 0, 0, 0, 0),
(252, 2, 1, 3, 'Penandatanganan Buku Kas Umum setiap akhir bulannya dilakukan oleh sekertaris dengan memastikan uang yang ada pada Brankas sesuai dengan Register Kas', 'Sudah dilakukan setiap akhir bulan ', 'Dilakukan tetapi tidak secara rutin', 'Belum dilakukan', 3, 0, 0, 0, 0),
(253, 2, 1, 3, 'Sekretaris melakukan rapat evaluasi anggaran per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(254, 2, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan persemester dan tahunan terhadap Barang Milik Negara (BMN)', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(255, 2, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) mengusulkan penetapan status penggunaan BMN ke Biro Perlengkapan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(256, 2, 1, 3, 'Sekretaris selaku Kuasa Pengguna Barang (KPB) membuat laporan pengawasan dan pengendalian BMN ke Kantor Pelayanan Kekayaan Negara Lelang(KPKNL) ', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(257, 2, 1, 3, 'Sekretaris melakukan rapat evaluasi kinerja pegawai per triwulan', 'Sudah di lakukan secara berkala (dibuktikan dengan data dukung)', 'Sudah di lakukan belum secara berkala', 'Belum dilakukan', 1.5, 0, 0, 0, 0),
(258, 2, 6, 3, 'Prosedur tata kelola arsip (lakukan uji petik, minimal 3 berkas)', 'Sudah menggunakan aplikasi SIPP sepenuhnya', 'Sudah menggunakan aplikasi SIPP sebagian', 'Belum menggunakan aplikasi SIPP', 5.5, 0, 0, 0, 0),
(259, 2, 6, 3, 'Prosedur peminjaman berkas', 'Sudah Sesuai SOP', 'Belum Sesuai Sepenuhnya dengan SOP', 'Tidak ada prosedur', 5.5, 0, 0, 0, 0),
(260, 2, 6, 3, 'Penataan berkas perkara pada ruang arsip ', 'Sudah tertata dan menggunakan aplikasi SIPP', 'Sudah tertata tapi belum menggunakan aplikasi SIPP', 'Belum tertata', 5.5, 0, 0, 0, 0),
(261, 2, 7, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 3, 0, 0, 0, 0),
(262, 2, 7, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(263, 2, 7, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(264, 2, 7, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(265, 2, 7, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(266, 2, 7, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(267, 2, 7, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, 0, 0, 0, 0),
(268, 2, 7, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, 0, 0, 0, 0),
(269, 2, 7, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(270, 2, 9, 3, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 1.5, 0, 0, 0, 0),
(271, 2, 9, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(272, 2, 9, 3, 'Buku Register', 'Pengisian buku register sesuai dengan buku II dan buku IV serta data sesuai dengan SIPP', 'Pengisian buku register sesuai dengan buku II dan buku IV namun data tidak sesuai dengan SIPP', 'Pengisian buku register tidak sesuai dengan buku II dan buku IV', 3, 0, 0, 0, 0),
(273, 2, 9, 3, 'Buku/lembar pengawas bidang', 'Sudah tersedia dan dilaksanakan serta ada tindak lanjutnya', 'Sudah tersedia dan dilaksanakan tidak ada tindak lanjutnya', 'Semua tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(274, 2, 9, 3, 'Checklist kelengkapan dokumen/berkas perkara', 'Checklist kelengkapan dokumen/berkas perkara sesuai dengan buku 2', 'Checklist kelengkapan dokumen/berkas perkara belum sesuai dengan buku 2', 'Belum menggunakan Checklist', 3, 0, 0, 0, 0),
(275, 2, 9, 3, 'Penugasan jurusita', 'Selalu menggunakan surat tugas', 'Tidak selalu menggunakan surat tugas', 'Tidak menggunakan surat tugas', 3, 0, 0, 0, 0),
(276, 2, 9, 3, 'Sisa panjar biaya perkara', 'Sudah dilaksanakan sesuai SEMA No. 4 Tahun 2008, SEMA No. 2 Tahun 2009 dan Surat SEKMA No. 268/SEK/01/V/2010 tanggal 24 Mei 2010', 'Belum seluruhnya dilaksanakan ', 'Tidak dilaksanakan ', 3, 0, 0, 0, 0),
(277, 2, 9, 3, 'Penggunaan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK dan lengkap sesuai dengan SEMA 01 tahun 2014 ', 'Sudah menggunakan sistem barcode dan direktori putusan pada tingkat Kasasi dan PK tetapi tidak lengkap', 'Belum menggunakan Barcode', 1.5, 0, 0, 0, 0),
(278, 2, 9, 3, 'Penomoran perkara dan templete putusan sudah sesuai dengan SK KMA No. 44 Tahun 2014', 'Sudah Sesuai seluruhnya', 'Sudah Sesuai sebagian                                                   ', 'Tidak Sesuai', 1.5, 0, 0, 0, 0),
(279, 2, 9, 3, 'Laporan Mediator (nama dan perkara) yang berhasil melakukan mediasi Perkara diberikan ke Dirjen Badilum', 'Sudah dilaksanakan dan dilaporkan', 'Sudah dilaksanakan belum dilaporkan', 'Belum dilaksanakan ', 1.5, 0, 0, 0, 0),
(280, 2, 9, 3, 'Penyerahan berkas perkara inactive dari Panmud Perdata/Pidana kepada Panmud Hukum harus dengan Berita Acara Serah Terima Berkas ( dalam jangka waktu 3 hari setelah BHT )', 'Selalu dilaksanakan', 'Tidak selalu dilaksanakan ', 'Tidak dilaksanakan', 1.5, 0, 0, 0, 0),
(281, 2, 14, 3, 'Melakukan pengisian aplikasi SIPP pemanggilan delegasi/ pemberitahuan putusan delegasi', 'Sudah dilaksanakan (dibuktikan dengan data dukung)', 'Belum dilaksanakan seluruhnya', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(282, 2, 14, 3, 'Laporan Pelaksanaan panggilan yang telah dilaksanakan oleh JS/JSP harus dilaporkan pada hari yang sama kepada koordinator (SEMA 6 tahun 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(283, 2, 14, 3, 'Relaas dikirimkan kembali ke Pengadilan pengaju pada hari yang sama setelah dilaksanakan melalui surat elektronik (surel) atau faks oleh koordinator (SEMA 6 tahun 2014) dan setelah itu relaas asli nya harus segera dikirim melalui pos ', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, 0, 0, 0, 0),
(284, 2, 14, 3, 'Biaya pelaksanaan pemanggilan delegasi/pemberitahuan putusan delegasi segera dikirim kepengadilan pelaksana delegasi bersamaan dengan permintaan delegasi / sebelum panggilan / pemberitahuan dilaksanakan (SEMA 6 TAHUN 2014)', 'Selalu dilaksanakan (dibuktikan dengan data dukung)', 'tidak selalu dilaksanakan', 'Belum dilaksanakan', 5.5, 0, 0, 0, 0),
(285, 2, 15, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(286, 2, 16, 3, 'Implementasi SOP', 'Pelaksanaan sudah sesuai dengan SOP', 'Pelaksanaan sebagian sudah sesuai dengan SOP', 'Pelaksanaan belum sesuai dengan SOP', 3, 0, 0, 0, 0),
(287, 2, 16, 3, 'Barang Persediaan Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai serta penyimpanan terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan sesuai namun penyimpanan belum terpisah antara Dipa 01 dan Dipa 03', 'Data dan Barang Persediaan tidak sesuai', 3, 0, 0, 0, 0),
(288, 2, 16, 3, 'Prosedur Pendistribusian Barang (Berita Acara Serah Terima Barang dan Tanda Terima Barang)', 'Terdata dan sesuai dengan jumlah riil barang atau terdata tapi belum dengan Berita Acara/tanda terima\r\n', 'Terdata tetapi tidak sesuai dengan jumlah riil barang atau terdata tapi tidak dengan Berita Acara/tanda terima\r\n', 'Tidak terdata', 1.5, 0, 0, 0, 0),
(289, 2, 16, 3, 'Monitoring uang persediaan di brankas bendahara oleh KPA setiap bulan', 'Sudah dilaksanakan dibuktikan dengan Berita Acara', 'Sudah dilaksanakan belum rutin ', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(290, 2, 16, 3, 'Satker sudah menginput aplikasi monev smart setiap bulannya dan melaporkan kepada pimpinan.', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(291, 2, 16, 3, 'Satker sudah menginput aplikasi monev PP 39 dari Bapenas setiap triwulan dan melaporkan kepada pimpinan', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 3, 0, 0, 0, 0),
(292, 2, 16, 3, 'Satker telah melakukan Rekon internal antara aplikasi SIMAK BMN dan SAIBA setiap bulannya dengan membuat berita acara Rekon internal (mengetahui : operator SAIBA, operator SIMAK BMN dan KPA)', 'Sudah dilaksanakan dan sudah dilaporkan pada pimpinan', 'Sudah dilaksanakan  tetapi tidak dilaporkan pada pimpinan', 'Belum dilaksanakan', 5.5, 0, 0, 0, 0),
(293, 2, 16, 3, 'Kelengkapan SPPA (Ruang tunggu ramah anak, Ruang sidang anak, Ruang BaPas/PekSos, Ruang Diversi/Mediasi,Ruang Kaukus, Sarana Teleconfrence)   ', 'Lengkap dan sesuai ketentuan\r\n\r\n', 'Lengkap, tidak sesuai ketentuan\r\n', 'Tidak lengkap\r\n', 5.5, 0, 0, 0, 0),
(294, 2, 17, 3, 'Perawatan dan Pengelolaan sistem TI di pengadilan', 'Dilaksanakan secara berkala dan terjadwal', 'Dilaksanakan tetapi tidak terjadwal', 'Tidak dilaksanakan', 3, 0, 0, 0, 0),
(295, 2, 17, 3, 'Pelaporan Keuangan satker DIPA 01 dan 03  (berdasarkan PMK no.22/PMK.05/2016) sesuai dengan standard akutansi pemerintah yang berlaku. ', 'Sudah dilengkapi dengan Neraca, Laporan Realisasi Anggaran (LRA), Laporan Oprasional (LO), Laporan Perubahan Equitas (LPE) dan catatan atas laporan keuangan (calk)', 'Sudah dilengkapi sebagian', 'Belum dilengkapi', 3, 0, 0, 0, 0),
(296, 2, 1, 4, 'Pelaksanaan Tinjauan Manajemen\r\na.  Rapat rutin bulanan yang dimulai secara berjenjang dari satuan terkecil ( Kasubbag / Panmud) didampingi Hakim Pengawas Bidang\r\nb.  Pengawasan (monitoring dan evaluasi temuan)\r\nc.  Tindak lanjut dan perbaikan dari seluruh temuan', 'Sudah dilaksanakan secara menyeluruh (dibuktikan dengan data dukung)', 'Sudah dilaksanakan sebagian (dibuktikan dengan data dukung)', 'Sama sekali belum dilaksanakan', 40, 0, 0, 0, 0),
(297, 2, 1, 4, 'Dokumen SAKIP\r\na.  Indikator Kinerja Utama (IKU)\r\nb.  Rencana Strategis (RENSTRA)\r\nc.  Recana Kinerja Tahunan (RKT)\r\nd.  RENJA - RKAK/L - Laptah\r\ne.  Perjanjian Kinerja Tahunan (PKT)\r\nf.  Laporan Kerja Instansi Pemerintah (LKjIP) (Pengukuran Kinerja = Target : Realisasi X 100%)\r\n', 'Sudah ada dan tepat serta penyusunannya KPN mengikutsertakan, WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya (dibuktikan dengan data dukung)', 'Sudah ada dan tepat, namun dalam penyusunannya KPN tidak melibatkan WKPN, para Hakim, Panitera, Sekretaris dan pejabat struktural lainnya.', 'Sudah ada tetapi belum tepat / belum lengkap', 40, 0, 0, 0, 0),
(298, 2, 17, 4, 'Penyusunan RKAK/L ', 'Didukung dengan data riil (TOR,RAB,Rekening Listrik/Telephone 3 bulan terakhir, Data Perkara dll) ', 'Sebagian didukung dengan data  riil', 'Tidak didukung', 20, 0, 0, 0, 0),
(299, 2, 15, 5, 'Baperjakat', 'Sudah ada SK tim Baperjakat dan sudah dilaksanakan (dibuktikan dengan data dukung)', 'Sudah ada SK tim Baperjakat tetapi belum dilaksanakan', 'Belum ada', 5, 0, 0, 0, 0),
(300, 2, 15, 5, 'Analisa pengembangan kompetensi', 'Sudah dilaksanakan dan ditindaklanjuti', 'Sudah dilaksanakan belum ditindaklanjuti', 'Tidak dilaksanakan', 5, 0, 0, 0, 0),
(301, 2, 15, 5, 'Arsip kepegawaian', 'Tersusun secara sistematis sesuai jabatan, lengkap dan rapi', 'Tersusun secara sistematis tetapi tidak lengkap', 'Tidak sistematis dan tidak lengkap', 10, 0, 0, 0, 0),
(302, 2, 15, 5, 'Pengelolaan SIKEP', 'Lengkap dan akurat', 'Lengkap tapi tidak akurat', 'Tidak lengkap dan tidak akurat', 20, 0, 0, 0, 0),
(303, 2, 15, 5, 'RKP, RKGB dan usul pensiun', 'Sudah dibuat (untuk periode 1 tahun) dan diinformasikan', 'Sudah dibuat belum diinformasikan', 'Belum dibuat', 5, 0, 0, 0, 0),
(304, 2, 15, 5, 'Pencatatan surat masuk/keluar', 'Sudah tercatat, terkendali dan menggunakan aplikasi', 'Sudah tercatat tetapi tidak terkendali', 'Belum tercatat', 5, 0, 0, 0, 0),
(305, 2, 15, 5, 'Pemberian sanksi dan penghargaan', 'Sudah dilaksanakan dan terdokumentasi', 'Sudah dilaksanakan belum terdokumentasi', 'Belum dilaksanakan', 10, 0, 0, 0, 0),
(306, 2, 15, 5, 'Perjanjian kinerja individu, Sasaran Kerja Pegawai (SKP) dan penilaian prestasi kerja', 'Sudah lengkap dan sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Sudah lengkap tetapi belum sesuai PERMENPAN RB No. 8 Tahun 2015 dan PP No. 46 Tahun 2011', 'Belum ada', 5, 0, 0, 0, 0),
(307, 2, 15, 5, 'Prosedur izin (keluar negeri,belajar,tugas belajar dan cuti)', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 serta terdokumentasi', 'Sudah sesuai dengan PP 24 tahun 1976 ,SK KMA 125 tahun 2009, perma 7 tahun 2016 tidak  terdokumentasi', 'Belum sesuai', 5, 0, 0, 0, 0),
(308, 2, 15, 5, 'Penyusunan Dokumen Sakip serta sosialisasi', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 serta telah disosialisasikan', 'Lengkap dan Sudah sesuai dengan Permenpan 53 Tahun 2014 dan atau belum disosialisasikan', 'Tidak lengkap', 20, 0, 0, 0, 0),
(309, 2, 15, 5, 'Pengelolaan tenaga honorer\r\na.  SK\r\nb.  Evaluasi minimal 1 kali dalam setahun\r\nc.  Pembiayaan\r\n', 'Terpenuhi keseluruhan', 'Terpenuhi sebagian', 'Belum ada', 10, 0, 0, 0, 0),
(310, 2, 1, 6, 'Penerapan Struktur Organisasi sesuai dengan PERMA No. 7 Tahun 2015 dan SEMA No. 5 Tahun 1996 ', 'Sudah dibuat struktur organisasi beserta personil¬-personil yang ada serta ditempatkan pada tempat yang mudah dilihat dan dibaca, dan jika ada yang kosong pejabatnya sudah dilakukan ', 'Sudah dibuat tetapi belum sesuai dengan ketentuan yang berlaku', 'Belum ada', 6, 0, 0, 0, 0),
(311, 2, 1, 6, 'Pelaporan panggilan Delegasi / Pemberitahuan Delegasi', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT dan ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Dilaporkan secara berkala setiap 2 bulan kepada KPT tetapi tidak ditembuskan ke KMA dan Dirjen (sesuai dengan SEMA 6 tahun 2014) ', 'Tidak dilaporkan', 6, 0, 0, 0, 0),
(312, 2, 18, 6, 'Kelengkapan dokumen akreditasi\r\na.  List daftar master dokumen\r\nb.  Bukti Distribusi dokumen\r\nc.  Penomoran dokumen\r\nd.  Penggunaan stamp \"\"terkendali\"\", \"\"tidak terkendali\"\" dan \"\"kadaluarsa\"\"\r\n', 'Terpenuhi seluruhnya', 'Terpenuhi sebagian', 'Tidak tersedia sama sekali', 9, 0, 0, 0, 0),
(313, 2, 7, 6, 'Adanya uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(314, 2, 9, 6, 'Adanya Uraian Tugas ', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(315, 2, 15, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(316, 2, 15, 6, 'Penyusunan Keputusan Pimpinan sesuai dengan Permenpan Nomor 80 Tahun 2012', 'Sudah  sesuai dengan Permenpan No. 80 Tahun 2012', 'Belum seluruhnya sesuai ', ' Seluruhnya tidak  sesuai ', 4, 0, 0, 0, 0),
(317, 2, 15, 6, 'Dokumentasi Rapat', ' Notulen sudah sesuai dan didukung dengan undangan, daftar hadir dan foto', 'Ada notulen namun tidak sesuai dan data dukung tidak lengkap', 'Tidak ada notulen tetapi ada data dukung lainnya', 4, 0, 0, 0, 0),
(318, 2, 16, 6, 'Uraian Tugas masing-masing unit', 'Sudah ada keseluruhan', 'Sudah ada sebagian', 'Belum ada', 4, 0, 0, 0, 0),
(319, 2, 16, 6, 'SK Pengelola BMN dan Laporan inventaris barang milik negara (SIMAK BMN) ', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 9, 0, 0, 0, 0),
(320, 2, 16, 6, 'SK Pemegang Rumah Dinas, Kendaraan Dinas dan Perangkat IT', 'Terdokumentasi keseluruhan\r\n', 'Terdokumentasi sebagian', 'Tidak terdata', 6, 0, 0, 0, 0),
(321, 2, 16, 6, 'Buku-buku keuangan\r\na.  Buku kas umum (dilengkapi dengan LPJ/akhir bulan)\r\nb.  Buku bank\r\nc.  Buku bantu (Pengawasan kredit, uang persediaan, SPM dan penyetoran pajak PPH Pasal 21, 22 dan 23)\r\n', 'Lengkap, akurat dan sesuai sisa uang pada brankas', 'Lengkap, kurang akurat, tetapi sisa uang pada brangkas tidak sesuai', 'Tidak lengkap', 9, 0, 0, 0, 0),
(322, 2, 16, 6, 'SK manajemen pengelolaan keuangan  (SK KPA, SK Pejabat Pembuat Komitmen, SK bendahara pengeluaran/ bendahara pemegang uang muka dan Bendahara penerima, SK Pembantu Pengelola Keuangan)  ', 'Lengkap\r\n', 'Ada Sebagian.                                                             ', 'Tidak ada\r\n', 9, 0, 0, 0, 0),
(323, 2, 16, 6, 'Dokumen pertanggung jawaban telah disimpan dan diarsipkan', 'Lengkap, tersusun rapi dan laporan tepat waktu', 'Lengkap, tersusun rapi tetapi laporan tidak tepat waktu', 'Tidak lengkap', 6, 0, 0, 0, 0),
(324, 2, 1, 7, 'Telah dilaksanakan pembagian tugas antara KPN dengan WKPN serta telah bekerja sama dengan baik', 'Sudah ada SK pembagian tugas dan sudah dilaksanakan', 'Sudah ada SK pembagian tugas, tetapi belum dilaksanakan sesuai dengan SK', 'Belum ada', 8, 0, 0, 0, 0),
(325, 2, 1, 7, 'WKPN sebagai Koordinator Pengawasan', 'WKPN sudah melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan (dibuktikan dengan data dukung)', 'WKPN melaksanakan fungsinya sebagai Koordinator Pengawasan di Pengadilan namun tidak secara berkelanjutan', 'Tidak melaksanakan', 12, 0, 0, 0, 0),
(326, 2, 1, 7, 'Penanganan gratifikasi', 'Sudah ada SK dan sudah disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Sudah ada SK dan belum disosialisasikan oleh KPN tentang pengendalian gratifikasi', 'Belum ada SK KPN tentang pengendalian gratifikasi', 25, 0, 0, 0, 0),
(327, 2, 1, 7, 'Pelaporan LHKPN', 'Sudah dilaksanakan oleh seluruh tenaga teknis dan pejabat struktural', 'Sudah dilaksanakan oleh sebagian tenaga teknis dan pejabat struktural', 'Belum dilaksanakan', 35, 0, 0, 0, 0),
(328, 2, 1, 7, 'Penanganan Benturan Kepentingan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan  dan sudah disosialisasikan', 'Sudah sesuai dengan SK Sekma 59A/Sek/SK/11/2014 ada SK Penanganan benturan kepentingan tetapi belum disosialisasikan', 'Belum ada SK', 20, 0, 0, 0, 0),
(329, 2, 6, 7, 'Pelaporan keadaan perkara setiap tahun a. gugatan permohonan eksekusi, banding, kasasi, PK, biaya pendaftaran yang disetorkan ke kas negara, total perkara yang putus, PNBP', '', '', '', 0, 0, 0, 0, 0),
(330, 2, 16, 7, 'Kontrak kantin (PNBP Kantin)', 'Sudah ada perjanjian sewa dan bukti setoran ke Negara', 'Sudah ada perjanjian sewa, tetapi tidak bukti setoran ke Negara', 'Belum ada perjanjian', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tujuan`
--

CREATE TABLE `tb_tujuan` (
  `tujuan_id` int(11) NOT NULL,
  `tujuan_nama` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tujuan`
--

INSERT INTO `tb_tujuan` (`tujuan_id`, `tujuan_nama`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Pimpinan', 58, 1544203446, 58, 1544203446),
(2, 'Hakim Wasmat', 58, 1544204173, 58, 1544204173),
(3, 'Hakim', 58, 1544204226, 58, 1544204226),
(4, 'Internal Auditor', 58, 1547062667, 58, 1547062667),
(5, 'Survey Kepuasan ', 58, 1547062797, 58, 1547062797),
(6, 'Panmud Hukum', 58, 1547062822, 58, 1547062822),
(7, 'Panmud Pidana', 58, 1547062842, 58, 1547062842),
(8, 'Panmud Tipikor', 58, 1547062863, 58, 1547062863),
(9, 'Panmud Perdata', 58, 1547062884, 58, 1547062884),
(10, 'Panmud Niaga', 58, 1547062920, 58, 1547062920),
(11, 'Panmud PHI', 58, 1547062949, 58, 1547062949),
(12, 'Panmud Kekhususan', 58, 1547062966, 58, 1547062966),
(13, 'Panitera Pengganti', 58, 1547062984, 58, 1547062984),
(14, 'Jurusita/Jurusita  Pengganti', 58, 1547063030, 58, 1547063030),
(15, 'Kepegawaian dan Ortala', 58, 1547063059, 58, 1547063328),
(16, 'Umum dan Keuangan', 58, 1547063073, 58, 1547063240),
(17, 'Perencanaan, TI dan Pelaporan', 58, 1547063518, 58, 1547063518),
(18, 'Document Control ', 58, 1547063548, 58, 1547063548);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `pkey` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ug_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `pkey`, `ug_id`, `created_at`, `updated_at`) VALUES
(58, 'admin', 'tC5t7yWKb_s1ULTKBW0ztzQZuHJqMc2z', '$2y$13$RU..JUUB0jsvHbZmvmqBCufekiabC/XFtQaIIqPuonqHGLDjuyv6y', NULL, 'admin@gmail.com', 10, 'A0007', '01', 1543253104, 1543253711),
(67, 'assesor1', 'yvTwRxnZDouwngEtH_O3hwtNDWJvu7mY', '$2y$13$k5c3h32tF/F9d781.0o29eqRtm215AshOTwtwld6J5fu6DcLcg/dK', NULL, 'assesor@gmail.com', 10, NULL, '07', 1547118017, 1547118017),
(68, 'pnsby', 'TvMb64Xu_ElZeyhh-q2GuoFXgwn_r6AB', '$2y$13$bPbdgoF86ZFj0IQx0blIiOBzbjRiHaf3o.rf6pDG9DrwRPrX15Oma', NULL, NULL, 10, '1', '06', 1547535233, 1547535233),
(69, 'pnsidoarjo', 'FVvJ_RFLi6kTrEwYzvzncE2_JQoalx9V', '$2y$13$SA3tTDyU6miVs7OH5kzjH.GrWonh2o0ep8A7XE317ctH7jIW1lhR2', NULL, NULL, 10, '2', '06', 1547556912, 1547556912),
(70, 'pngresik', '6g8rpWwAMvFH2-DW2ebGGxJL0aKXY3GV', '$2y$13$yVqAnbRpUcpgiAe4xG5OHOom7RlM7Z6YkqmoQ4d7W98xCHsIJrsSW', NULL, NULL, 10, '3', '06', 1547556936, 1547556936),
(71, 'pnmojokerto', 'W2io4IWrVknuxJNL2_o5p3K2qV5CwO6K', '$2y$13$3asl8s9h9qlmiAsDgKYZleAxC8usxvnpp7AshBYPCwM0bcCe5X4Di', NULL, NULL, 10, '4', '06', 1547556959, 1547556959);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `ug_id` varchar(2) NOT NULL,
  `c_id` int(11) NOT NULL,
  `firstload` enum('y','n','','') NOT NULL,
  `access` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`ug_id`, `c_id`, `firstload`, `access`) VALUES
('01', 1, 'n', 'view'),
('01', 2, 'n', 'view'),
('01', 3, 'n', 'view'),
('01', 4, 'n', 'view'),
('01', 5, 'n', 'view'),
('01', 6, 'n', 'view'),
('01', 7, 'n', 'view'),
('01', 8, 'n', 'view'),
('01', 9, 'n', 'view'),
('01', 10, 'n', 'view'),
('01', 11, 'n', 'view'),
('01', 14, 'n', 'view'),
('01', 15, 'n', 'view'),
('01', 17, 'n', 'view'),
('01', 18, 'n', 'view'),
('01', 19, 'n', 'view'),
('01', 20, 'n', 'view'),
('01', 22, 'n', 'view'),
('01', 23, 'n', 'view'),
('01', 24, 'n', 'view'),
('01', 25, 'n', 'view'),
('01', 26, 'n', 'view'),
('01', 27, 'n', 'view'),
('01', 28, 'n', 'view'),
('01', 29, 'n', 'view'),
('01', 30, 'n', 'view'),
('01', 31, 'n', 'view'),
('01', 32, 'n', 'view'),
('01', 33, 'n', 'view'),
('01', 34, 'n', 'view'),
('01', 35, 'n', 'view'),
('01', 36, 'n', 'view'),
('01', 37, 'n', 'view'),
('01', 38, 'n', 'view'),
('01', 39, 'n', 'view'),
('01', 40, 'n', 'view'),
('01', 41, 'n', 'view'),
('01', 42, 'n', 'view'),
('01', 43, 'n', 'view'),
('01', 44, 'n', 'view'),
('01', 45, 'n', 'view'),
('01', 46, 'n', 'view'),
('01', 47, 'n', 'view'),
('01', 48, 'n', 'view'),
('01', 49, 'n', 'view'),
('02', 1, 'n', 'view'),
('02', 5, 'n', 'view'),
('02', 6, 'n', 'view'),
('02', 7, 'n', 'view'),
('02', 8, 'n', 'view'),
('02', 23, 'n', 'view'),
('06', 36, 'n', 'view'),
('06', 39, 'n', 'view'),
('06', 44, 'n', 'view'),
('07', 39, 'n', 'view'),
('07', 44, 'n', 'view');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `ug_id` varchar(2) NOT NULL,
  `ug_nama` varchar(50) DEFAULT NULL,
  `ug_table_relation` varchar(255) DEFAULT NULL,
  `ug_pkey_relation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`ug_id`, `ug_nama`, `ug_table_relation`, `ug_pkey_relation`) VALUES
('01', 'admin', 'z_admin', 'ua_id'),
('06', 'Pengadilan Negeri', 'tb_pengadilan_negeri', 'pn_id'),
('07', 'Assesor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_usergroup`
--

CREATE TABLE `user_usergroup` (
  `ug_id` varchar(2) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_usergroup`
--

INSERT INTO `user_usergroup` (`ug_id`, `id`) VALUES
('01', 8),
('02', 9),
('02', 10),
('02', 11),
('02', 12),
('01', 13),
('02', 14),
('01', 15),
('02', 16),
('02', 17),
('02', 18),
('02', 19),
('02', 20),
('02', 21),
('02', 22),
('02', 23),
('02', 24),
('02', 25),
('02', 26),
('02', 27),
('02', 28),
('02', 29),
('02', 31),
('02', 33),
('02', 34),
('02', 35),
('02', 36),
('02', 37),
('02', 38),
('02', 39),
('02', 40),
('02', 41),
('02', 42),
('02', 43),
('02', 44),
('02', 45),
('02', 46),
('02', 47),
('02', 48),
('02', 49),
('02', 50),
('02', 51),
('02', 52),
('02', 53),
('02', 54),
('01', 55),
('02', 56),
('02', 57),
('01', 58),
('06', 60),
('06', 61),
('06', 62),
('06', 63),
('06', 64),
('06', 65),
('06', 66),
('07', 67),
('06', 68),
('06', 69),
('06', 70),
('06', 71);

-- --------------------------------------------------------

--
-- Table structure for table `z_admin`
--

CREATE TABLE `z_admin` (
  `ua_id` varchar(5) NOT NULL,
  `ua_nama` varchar(50) NOT NULL,
  `ua_email` varchar(50) NOT NULL,
  `ua_alamat` text NOT NULL,
  `ua_telp` varchar(12) NOT NULL,
  `ua_jk` enum('l','p','','') NOT NULL,
  `ua_tgl_lahir` int(11) DEFAULT NULL,
  `ua_tempat_lahir` varchar(30) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_admin`
--

INSERT INTO `z_admin` (`ua_id`, `ua_nama`, `ua_email`, `ua_alamat`, `ua_telp`, `ua_jk`, `ua_tgl_lahir`, `ua_tempat_lahir`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('A0007', 'admin', 'admin@gmail.com', 'sby', '-', 'l', 1543273200, 'asd', 55, 1543253088, 55, 1543253088);

-- --------------------------------------------------------

--
-- Table structure for table `z_kontak`
--

CREATE TABLE `z_kontak` (
  `k_id` varchar(9) NOT NULL,
  `k_judul` varchar(100) NOT NULL,
  `k_nama` varchar(50) NOT NULL,
  `k_email` varchar(50) NOT NULL,
  `k_pesan` text NOT NULL,
  `k_jawab` text,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `k_status_jawab` enum('y','n','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_kontak`
--

INSERT INTO `z_kontak` (`k_id`, `k_judul`, `k_nama`, `k_email`, `k_pesan`, `k_jawab`, `created_at`, `updated_at`, `k_status_jawab`) VALUES
('K005/2018', 'ad', 'ad', 'kiroikun8@gmail.com', 'ad', '<p>test</p>', 1515528199, 1543291942, 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_number`
--
ALTER TABLE `auto_number`
  ADD PRIMARY KEY (`group`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_akreditasi`
--
ALTER TABLE `tb_akreditasi`
  ADD PRIMARY KEY (`akreditasi_id`);

--
-- Indexes for table `tb_assesment`
--
ALTER TABLE `tb_assesment`
  ADD PRIMARY KEY (`assesment_id`);

--
-- Indexes for table `tb_audit`
--
ALTER TABLE `tb_audit`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `tb_audit_upload`
--
ALTER TABLE `tb_audit_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kriteria_id`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `tb_pengadilan_negeri`
--
ALTER TABLE `tb_pengadilan_negeri`
  ADD PRIMARY KEY (`pn_id`);

--
-- Indexes for table `tb_pengadilan_tinggi`
--
ALTER TABLE `tb_pengadilan_tinggi`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`tanya_id`);

--
-- Indexes for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  ADD PRIMARY KEY (`tujuan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`ug_id`,`c_id`,`access`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`ug_id`);

--
-- Indexes for table `z_admin`
--
ALTER TABLE `z_admin`
  ADD PRIMARY KEY (`ua_id`);

--
-- Indexes for table `z_kontak`
--
ALTER TABLE `z_kontak`
  ADD PRIMARY KEY (`k_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_akreditasi`
--
ALTER TABLE `tb_akreditasi`
  MODIFY `akreditasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_assesment`
--
ALTER TABLE `tb_assesment`
  MODIFY `assesment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tb_audit`
--
ALTER TABLE `tb_audit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1212;

--
-- AUTO_INCREMENT for table `tb_audit_upload`
--
ALTER TABLE `tb_audit_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  MODIFY `jenis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `kriteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_pengadilan_negeri`
--
ALTER TABLE `tb_pengadilan_negeri`
  MODIFY `pn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  MODIFY `tanya_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  MODIFY `tujuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
