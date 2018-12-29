-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2018 at 07:25 AM
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
-- Database: `ambara77_lpm`
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
('18ee96e3e91e221d97f59dec062d72a3', 7, 6, 1543253088),
('1ec726e5b0aba0e4abc0e3ce43762e6c', 5, 4, 1545812136),
('203a8ec3ecb5e26cc238fa34c36b6b0f', 39, 38, 1515723200),
('2687f28ba042fea119ea01e628433a6b', 5, 4, 1515673058),
('36b762ee42b1941c2a003058e269769d', 9, 8, 1543660213),
('3c2029bc50ed232af6a70d9da0029f07', 3, 2, 1544204226),
('408c709368444e811bb6beef9c8be9f7', 1, NULL, 1543424725),
('467115f9c0743d4e12c09c718338fb94', 12, 11, 1517152301),
('4c0b4f0c7595e5d2358e86cc162ac317', 6, 5, 1544204678),
('541394299299843e2bb1b8cc6be56231', 326, 325, 1516771057),
('5aa243139c2d658d2b516c4af255ff1c', 48, 47, 1516913846),
('6aaa533567e28a6f36ced0a3f1e33d2f', 33, 32, 1545985802),
('6bf8fd4abde1f40daffc75cad1ca9afc', 1, NULL, 1544267073),
('70d3cf9ec190cc50b869236f4d089abb', 2, 1, 1545915028),
('793b6925940c4e3937870067cd251ee4', 4, 3, 1546018231),
('8295cb76aaea2ea01fbf0cba5bbdf079', 1, NULL, 1543636237),
('85f1a19076c84ef7bf2287faf81d6aa2', 3, 2, 1545759726),
('93512536b14446eeadb2c7e8c1abfebb', 5, 4, 1545960024),
('aec7eba25e8d6b4b933b144ae7826bf9', 7, 6, 1515439143),
('b024be347a91491a39c5323bd1cf80ed', 1, NULL, 1511729420),
('b41aabc27b9a87c0c52b1134cb752eb3', 9, 8, 1514172748),
('b96c589b9fdc65fb01129140b9359ba7', 15, 14, 1515207371),
('cf060a47d7b51fa09b8e3a290a54af3e', 8, 7, 1545741563),
('d35346586ee3e0c9d4c9df22df950506', 1, NULL, 1515434824),
('f5115e7787d7b4d157e77e3ae3b460c1', 9, 8, 1543673099);

-- --------------------------------------------------------

--
-- Table structure for table `bag_pn`
--

CREATE TABLE `bag_pn` (
  `bg_id` varchar(11) NOT NULL,
  `pn_id` varchar(11) NOT NULL,
  `bg_nama` varchar(250) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bag_pn`
--

INSERT INTO `bag_pn` (`bg_id`, `pn_id`, `bg_nama`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('BG009', '', 'Bagian keuangan', 58, 1543660213, 58, 1543660213);

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
(1, 'home', 'fa fa-home', 'site/index', 0, 0, 'y'),
(2, 'profil', 'fa fa-user-circle ', NULL, 0, 0, 'n'),
(3, 'agenda', 'fa fa-file-text', 'agenda/index', 0, 0, 'n'),
(4, 'kontak', 'fa fa-phone', 'kontak/index', 0, 0, 'n'),
(5, 'musrenbang', 'fa fa-file-o', 'musrenbang/index', 0, 0, 'n'),
(9, 'management user', 'fa fa-id-card-o', NULL, 0, 9, 'y'),
(10, 'user', 'fa fa-user-circle-o', 'user/index', 9, 0, 'y'),
(11, 'berita', 'fa fa-newspaper-o', 'berita/index', 0, 0, 'n'),
(14, 'user group', 'fa fa-users', 'usergroup/index', 9, 0, 'y'),
(15, 'management content', 'fa fa-book', 'content/index', 0, 0, 'y'),
(17, 'kepala instansi', 'fa fa-asterisk', 'kaling/index', 19, 0, 'y'),
(18, 'admin', 'fa fa-asterisk', 'admin/index', 19, 0, 'y'),
(19, 'civitas', 'fa fa-address-book', NULL, 0, 0, 'n'),
(20, 'slider', 'fa fa-file-image-o', 'slider/index', 0, 0, 'n'),
(22, 'instansi', 'fa fa-bandcamp', 'instansi/index', 0, 0, 'n'),
(23, 'biodata', 'fa fa-cogs', 'biodata/index', 0, 0, 'n'),
(24, 'musrenbang kategori', 'fa fa-bars', 'musrenbangkat/index', 0, 0, 'n'),
(25, 'anggaran dasar', 'fa fa-money', 'profileanggaran/index', 2, 0, 'y'),
(26, 'struktur organisasi', 'fa fa-sitemap', 'profilestruktur/index', 2, 0, 'y'),
(27, 'user login', 'fa fa-bell-o', 'session/index', 9, 0, 'y'),
(28, 'pengadilan negeri', 'fa fa-gavel', NULL, 0, 0, 'y'),
(29, 'daftar PN', 'fa fa-asterisk', 'pengadilannegeri/index', 28, 1, 'y'),
(30, 'sub bagian PN', 'fa fa-asterisk', 'bagpn/index', 28, 2, 'n'),
(31, 'Profil PT', 'fa fa-user-circle ', 'pengadilantinggi/view?id=PT001', 0, 1, 'y'),
(32, 'kelas PN', 'fa fa-asterisk', 'pnkelas/index', 28, 3, 'y'),
(33, 'pertanyaan', 'fa fa-question', 'pertanyaan/index', 0, 0, 'y'),
(34, 'pegawai', 'fa fa-asterisk', 'pegawai/index', 0, NULL, 'y'),
(35, 'tujuan', 'fa fa-asterisk', 'tujuan/index', 33, NULL, 'y'),
(36, 'kriteria', 'fa fa-asterisk', 'kriteria/index', 33, NULL, 'y'),
(39, 'assesment', 'fa fa-book', 'assesment/', 0, NULL, 'y'),
(40, 'hasil audit', 'fa fa-file', 'audit/index', 0, NULL, 'y'),
(41, 'daftar pertanyaan', 'fa fa-asterisk', 'pertanyaan/index', 33, NULL, 'y');

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
-- Table structure for table `pengadilan_negeri`
--

CREATE TABLE `pengadilan_negeri` (
  `pn_id` varchar(5) NOT NULL,
  `pn_nama` varchar(255) NOT NULL,
  `pn_alamat` text NOT NULL,
  `pn_kelas` varchar(5) DEFAULT NULL,
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
-- Dumping data for table `pengadilan_negeri`
--

INSERT INTO `pengadilan_negeri` (`pn_id`, `pn_nama`, `pn_alamat`, `pn_kelas`, `pn_akreditasi`, `pn_ketua`, `pn_email`, `pn_website`, `pn_telp`, `pn_fax`, `pn_pegawai`, `pn_honorer`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('PN006', 'Pengadilan Negeri Surabaya', 'JI. Raya Aduno No. 16 – 18, Surabaya', 'KL001', '-', '-', '-', '-', '5343907 – 531 1523', '-', NULL, NULL, 58, 1543660389, 58, 1543660389),
('PN007', 'Pengadilan Negeri Bangil', 'Jl. Dr. Soetomo No. 25 ', 'KL002', '-', '-', '-', '-', '7414II – 741012', '-', NULL, NULL, 58, 1543660490, 58, 1545830679),
('PN008', 'Pengadilan Negeri Bangkalan', 'JI. Soekarno – Hatta No. 4', 'KL001', '-', '-', '-', '-', '3095317 – 3099784', '', NULL, NULL, 58, 1543660556, 58, 1545830695),
('PN009', 'Pengadilan Negeri Bayuwangi', 'Jl. Adi Sucipto No. 26', 'KL001', '', '', '', '', '421600 – 424818', '', NULL, NULL, 58, 1543673099, 58, 1545830705);

-- --------------------------------------------------------

--
-- Table structure for table `pengadilan_tinggi`
--

CREATE TABLE `pengadilan_tinggi` (
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
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengadilan_tinggi`
--

INSERT INTO `pengadilan_tinggi` (`pt_id`, `pt_nama`, `pt_alamat`, `pt_pimpinan`, `pt_website`, `pt_email`, `pt_telp`, `pt_fax`, `pt_pegawai`, `pt_honorer`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('PT001', 'Pengadilan Tinggi Jawa Timur', 'sby', '-', 'http://www.pt-surabaya.go.id/', '', '', '', 1, 1, 58, 1543424725, 58, 1543425042);

-- --------------------------------------------------------

--
-- Table structure for table `pn_kelas`
--

CREATE TABLE `pn_kelas` (
  `kelas_id` varchar(5) NOT NULL,
  `kelas_nama` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pn_kelas`
--

INSERT INTO `pn_kelas` (`kelas_id`, `kelas_nama`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('KL001', 'I', 58, 1543630547, 58, 1545739473),
('KL002', 'II', 58, 1543630598, 58, 1545739488),
('KL004', 'CUSTOM', 58, 1546018231, 58, 1546018231);

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
('620v6nimsjbmv096e3v3cpo2f1', 1546020677, 0x5f5f666c6173687c613a303a7b7d5f5f69647c693a35383b, 58);

-- --------------------------------------------------------

--
-- Table structure for table `tb_assesment`
--

CREATE TABLE `tb_assesment` (
  `assesment_id` varchar(5) NOT NULL,
  `assesment_surat` varchar(55) NOT NULL,
  `assesment_tanggal_mulai` date DEFAULT NULL,
  `assesment_tanggal_selesai` date DEFAULT NULL,
  `assesment_ketua` varchar(55) DEFAULT NULL,
  `assesment_anggota` varchar(255) DEFAULT NULL,
  `kelas_id` varchar(5) DEFAULT NULL,
  `pn_id` varchar(5) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_assesment`
--

INSERT INTO `tb_assesment` (`assesment_id`, `assesment_surat`, `assesment_tanggal_mulai`, `assesment_tanggal_selesai`, `assesment_ketua`, `assesment_anggota`, `kelas_id`, `pn_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('AS032', 'A.1-2018.9012', '2018-12-01', NULL, 'PG001', 'PG001', 'KL001', 'PN006', 58, 1545985777, 58, 1545985777),
('AS033', 'A.1-asasa', '2018-12-01', NULL, 'PG001', 'PG001', 'KL002', 'PN007', 58, 1545985802, 58, 1545985802);

-- --------------------------------------------------------

--
-- Table structure for table `tb_audit`
--

CREATE TABLE `tb_audit` (
  `audit_id` int(11) NOT NULL,
  `assesment_id` varchar(5) DEFAULT NULL,
  `pertanyaan_id` varchar(5) DEFAULT NULL,
  `audit_nilai` varchar(5) DEFAULT NULL,
  `audit_temuan` varchar(255) DEFAULT NULL,
  `audit_keterangan` text,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_audit`
--

INSERT INTO `tb_audit` (`audit_id`, `assesment_id`, `pertanyaan_id`, `audit_nilai`, `audit_temuan`, `audit_keterangan`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(52, 'AS032', 'T001', 'A', 'minor', 'test', NULL, NULL, NULL, NULL),
(53, 'AS032', 'T002', 'A', 'minor', NULL, NULL, NULL, NULL, NULL),
(54, 'AS032', 'T003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'AS033', 'T004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'AS033', 'T005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bagian`
--

CREATE TABLE `tb_bagian` (
  `bagian_id` varchar(5) NOT NULL,
  `tujuan_id` varchar(5) NOT NULL,
  `bagian_nama` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bagian`
--

INSERT INTO `tb_bagian` (`bagian_id`, `tujuan_id`, `bagian_nama`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('BG002', 'TJ001', 'Leadership', 58, 1544203611, 58, 1544203611),
('BG003', 'TJ001', 'Customer Focus', 58, 1544204270, 58, 1544204270),
('BG004', 'TJ001', 'Process Management', 58, 1544204564, 58, 1544204564),
('BG005', 'TJ002', 'Customer Focus', 58, 1544204636, 58, 1544204636),
('BG006', 'TJ003', 'Customer Focus', 58, 1544204678, 58, 1544204678);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kriteria_id` varchar(5) NOT NULL,
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
('K001', 'Leadership', 58, 1545756450, 58, 1545756450),
('K002', 'Customer Focus', 58, 1545756475, 58, 1545756475),
('K003', 'Process Management', 58, 1545759726, 58, 1545759726);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `pegawai_id` varchar(5) NOT NULL,
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
('PG001', 'pegawai1', '', '', 'Pegawai Tetap', 58, 1545740372, 58, 1545741552),
('PG002', 'pegawai2', '', '', 'Pegawai Tetap', 58, 1545740553, 58, 1545741546),
('PG004', 'pegawai3', '', '', 'Pegawai Tetap', 58, 1545740651, 58, 1545741490),
('PG007', 'pegawai4', '', '', 'Pegawai Honorer', 58, 1545741394, 58, 1545741443),
('PG008', 'pegawai5', '', '', 'Pegawai Honorer', 58, 1545741563, 58, 1545741563);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `tanya_id` varchar(5) NOT NULL,
  `kelas_id` varchar(5) NOT NULL,
  `tujuan_id` varchar(5) NOT NULL,
  `kriteria_id` varchar(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `tanya_ket_a` text,
  `tanya_ket_b` text,
  `tanya_ket_c` text,
  `tanya_bobot` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`tanya_id`, `kelas_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `tanya_ket_a`, `tanya_ket_b`, `tanya_ket_c`, `tanya_bobot`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('T001', 'KL001', 'TJ001', 'K001', 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', '25', 58, 1545959708, 58, 1545959708),
('T002', 'KL001', 'TJ001', 'K001', 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', '45', 58, 1545959766, 58, 1545959766),
('T003', 'KL001', 'TJ002', 'K002', 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', '5', 58, 1545959838, 58, 1545959838),
('T004', 'KL002', 'TJ001', 'K001', 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', '25', 58, 1545959947, 58, 1545959947),
('T005', 'KL002', 'TJ003', 'K002', 'Hakim Bertanggung Jawab Terhadap Minutasi Perkara', 'Minutasi Tepat Waktu Sesuai SOP', 'Minutasi Tepat Tetapi Belum Waktu Sesuai SOP', 'Minutasi Tidak Tepat Waktu Sesuai SOP', '7', 58, 1545960024, 58, 1545960024);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan_kls1`
--

CREATE TABLE `tb_pertanyaan_kls1` (
  `tanya_id` varchar(5) NOT NULL,
  `tujuan_id` varchar(5) NOT NULL,
  `kriteria_id` varchar(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `tanya_ket_a` text NOT NULL,
  `tanya_ket_b` text NOT NULL,
  `tanya_ket_c` text NOT NULL,
  `tanya_bobot` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan_kls1`
--

INSERT INTO `tb_pertanyaan_kls1` (`tanya_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `tanya_ket_a`, `tanya_ket_b`, `tanya_ket_c`, `tanya_bobot`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('T1001', 'TJ001', 'K001', 'Pembentukan TIM PMPN (Struktur Organisasi – TUSI)', 'Sudah ada SK, sudah disosialisasikan dan sudah di monitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum disosialisasikan / belum dilakukan monitoring dan evaluasi', 'Belum ada SK', '25', 58, 1545764706, 58, 1545810264),
('T1002', 'TJ001', 'K001', 'Pedoman Kerja / Manual Mutu:\r\na. Visi dan Misi\r\nb. Budaya Kerja\r\nc. Motto Pengadilan\r\nd. Profil Pengadilan\r\ne. Struktur Penjamin Mutu\r\nf. Komitmen Bersama\r\ng. Rincian Tugas Struktur PMPN', 'Sudah tepat, sudah disosialisasikan dan sudah dimonitoring serta dievaluasi (dibuktikan dengan data dukung)', 'Sudah ada tetapi belum tepat / belum disosialisasikan/ belum dilakukan monitoring dan evaluasi', 'Belum ada', '45', 58, 1545810413, 58, 1545810413),
('T1003', 'TJ001', 'K002', 'Maklumat Pelayanan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan sudah disosialisasikan', 'Maklumat pelayanan sudah dideklarasikan sesuai dengan isi PERMENPAN No. 15 Tahun 2014 Tentang Pedoman Standar Pelayanan dan belum disosialisasikan', 'Belum ada maklumat pelayanan', '2', 58, 1545810501, 58, 1545810501),
('T1004', 'TJ002', 'K002', 'Hakim Pengawas yang telah ditunjuk telah melaksanakan tugas pengawasan dan telah memberi petunjuk serta bimbingan yang di perlukan bagi para pejabat struktura maupun pejabat fungsional dan petugas yang terkait ( SK KMA / 080/SK/VII/2006 ), dengan Data dukung :\r\na. Ada SK Penunjukan Hakim Pengawas Bidang\r\nb. Ada Jadwal Pengawasan\r\nc. Ada bukti laporan pengawasan', 'Telah Terpenuhi semuanya (dibuktikan dengan data dukung)', 'b. Telah Terpenuhi sebagian (dibuktikan dengan data dukung)', 'c. Tidak ada', '5', 58, 1545812017, 58, 1545812017),
('T1005', 'TJ001', 'K002', 'Standar Pelayanan Pengadilan (SKKMA No. 026/KMA/SK/II/2012)', 'Standar pelayanan sudah ditetapkan, disosialisasikan dan sudah dilaksanakan', 'Standar Pelayanan sudah ditetapkan tetapi belum disosialisasikan dan belum dilaksanakan', 'Standar pelayanan belum ditetapkan', '3', 58, 1545812136, 58, 1545812136);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan_kls2`
--

CREATE TABLE `tb_pertanyaan_kls2` (
  `tanya_id` varchar(5) NOT NULL,
  `tujuan_id` varchar(5) NOT NULL,
  `kriteria_id` varchar(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `tanya_ket_a` text NOT NULL,
  `tanya_ket_b` text NOT NULL,
  `tanya_ket_c` text NOT NULL,
  `tanya_bobot` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan_kls2`
--

INSERT INTO `tb_pertanyaan_kls2` (`tanya_id`, `tujuan_id`, `kriteria_id`, `pertanyaan`, `tanya_ket_a`, `tanya_ket_b`, `tanya_ket_c`, `tanya_bobot`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('T2001', 'TJ001', 'K002', 'a', 'a', 'a', 'a', '12', 58, 1545765231, 58, 1545765231),
('T2002', 'TJ001', 'K001', 'adsda', 'asd', 'asd', 'asd', '12', 58, 1545915028, 58, 1545915028);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tujuan`
--

CREATE TABLE `tb_tujuan` (
  `tujuan_id` varchar(5) NOT NULL,
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
('TJ001', 'Pimpinan', 58, 1544203446, 58, 1544203446),
('TJ002', 'Hakim Wasmat', 58, 1544204173, 58, 1544204173),
('TJ003', 'Hakim', 58, 1544204226, 58, 1544204226);

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
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `pkey` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ug_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `pkey`, `ug_id`, `created_at`, `updated_at`) VALUES
(14, 'kalingceluk', 'jN4ZJcgWDb-vzkrgrO5U_8dylhziHXPr', '$2y$13$hpJFY9ZBVnngcXHEf7hMmewPfRFHtRwrfLp5vmkAe68IuqXN0piMi', NULL, 'a@A.com', 10, 'K0009', '02', 1515077483, 1515077483),
(15, 'adminLPM', 'RKe7dVsGTbG6wik3OgnjnRmz21pxV6C2', '$2y$13$cXu8PASBotQBoKgpZj/yauRowwLyalnBoqSZYr5nHAxV0S7F.fweq', NULL, 'info@lpmbenoa.org', 10, 'A0004', '01', 1515201962, 1515643312),
(16, 'kalingpeken', 'ezmyu14gybAw6GcMEzZ9WFkCGpWnA9y1', '$2y$13$36/fOx36Fn9YfPhM7EMG9.loUf8wjwKsijNddtK/XEY2bfl/F7St6', NULL, 'peken@gmail.com', 10, 'K0010', '02', 1515237840, 1515237840),
(17, 'kalingpenyarikan', 'vTfApI1T0WJnYSiq2_B6qg8xAexrcH2m', '$2y$13$b5qQiwcjnoEI13rtig2gZOhKFlqvu/GiLq6volzCjFOLwTw7RcKUi', NULL, 'penyarikan@gmail.com', 10, 'K0011', '02', 1515237859, 1515237859),
(18, 'kalingpeminge', '4q4IT_zH-aeH2O3YilRBL2Pu-g5yhdC9', '$2y$13$DMLgqaV0RkmsBbGJmOTANeRwzj9Mn26bqkuld7S72H0E/jZ0xCk.m', NULL, 'peminge@gmail.com', 10, 'K0012', '02', 1515237872, 1515237872),
(19, 'kalingsawangan', '6gROMNt2A5XooVX-RLpaJP5wuw2WjiQj', '$2y$13$8CuGQatRnnZk4VBr0OyOZORIRb4vpX5updR./BbeV7apva11CPRxq', NULL, 'sawangan@gmail.com', 10, 'K0013', '02', 1515237886, 1515237886),
(20, 'kalingpande', '-V7RnKEWz1PA6kRwN3IJZK7sFbrsHWwE', '$2y$13$GC6t4LLCgoggvAc2JYOu6eqwHqA4pei0CklUSUFWWHstS2w09NJzK', NULL, 'pande@gmail.com', 10, 'K0014', '02', 1515237901, 1515237901),
(21, 'kalingancak', 'g3D7403ML5LUaaSB6_8F4FL3_DK0i5g4', '$2y$13$/0BNbGAJv.hUwc.tyUlsTetvijrsQnK.nhA8p5BsH33qULZ9kl.jO', NULL, 'ancak@gmail.com', 10, 'K0015', '02', 1515237916, 1515981380),
(22, 'kalingmenesa', 'dSZHAGqhmN960Im4BnagEK6iBR0_o_c1', '$2y$13$vPaLTEIY9eh9Eih9a9HVJeQjrG4NpXig7kH5QjicVkpszlQSKWefC', NULL, 'menesa@gmail.com', 10, 'K0016', '02', 1515237935, 1515237935),
(23, 'kalingmumbul', 'CzWs2IXOy2_BHoNyXSp2g-85wDtlet47', '$2y$13$TpDiFd9S9o7X9bzB2xEeeekCYUtBv5LYl84cATsdjxMz9AKEXxgEy', NULL, 'mumbul@gmail.com', 10, 'K0017', '02', 1515237951, 1515237951),
(24, 'kalingpurinusadua', 'KN2-fGukkIwuRkgjrWcpDhrz2r0ttkEY', '$2y$13$s2U1BFX0pQZ5xFFfE9Tms..rXXnu1EENTuWzAoKpxlXGunzFtU9hq', NULL, 'puri@gmail.com', 10, 'K0018', '02', 1515237971, 1515237971),
(25, 'kalingbualuindah', '0HVThIIRuZZEstneTRAiLeQ-vdq-LJL6', '$2y$13$TCH9xZhAtiLV.WGvb.u6C.p64skZYDt8TsHz3klKlZJdW2oBkFmjW', NULL, 'bualuindah@gmail.com', 10, 'K0019', '02', 1515237987, 1515237987),
(26, 'kalingpermata', 'NANlIPmFz07c8rQSk_k5hBpw8wEhUW7w', '$2y$13$pTNDcEYc8x1.A7ke.h2oV.0Ob/GRroqc9ZhN6DJbK2g..Yxiw4U4u', NULL, 'permata@gmail.com', 10, 'K0020', '02', 1515238005, 1515238005),
(27, 'kalingwisma', 'aCkCfRcf8_QU-uyb60jgS2ExYZhvX-Ob', '$2y$13$zi38V/NrMaZjlrkpCw3Y5.Mq2iEuRc7jaFJ5I/ljTOUzKKfIvrEbu', NULL, 'wisma@gmail.com', 10, 'K0021', '02', 1515238017, 1515238017),
(29, 'kalingbalekembar', 'ksY_SYy9CI2-Q_oNEKuM6QFcZAE5U1nE', '$2y$13$sqNA4rrIEcMHgiz8ZeW1G.GXffSEjetZwlAsqWNIJ41JUpJHU/vSW', NULL, 'kopijaribesar@gmail.com', 10, 'K0023', '02', 1515238045, 1515637545),
(31, 'kalingbualu', 'vI6xevFss73e_yAEw54L3EaRXOgSDeKf', '$2y$13$.NzJns.P7Omz4JjxLPg2Fevnykr7C9jO7kUj5sq/e1KHxI0D/674u', NULL, 'bualu@gmail.com', 10, 'K0025', '02', 1515238114, 1515238114),
(33, 'kalingterora', 'jiWuXKUvrjXS8AjGAPuhzjUkg9rPd3u-', '$2y$13$LcUJyrrvAIIZvNaQVGbShONF2xx.Rra8d9G6nV4d3cws6axnAI9dG', NULL, 'suata@gmail.com', 10, 'K0024', '02', 1515238225, 1515238225),
(34, 'insLPM', 'D22rBLDO_JsLCVa9u9xAgvcxwcRAh-2u', '$2y$13$NpPrkPZl16xn5/2T0RUtkOJ4hbOJBhLLhbh//ctl5FIpnRgmnZgoC', NULL, 'insedit@lpmbenoa.com', 10, 'K0026', '02', 1515275119, 1516491348),
(35, 'ketuaLPM', '08itAEO5S8h1KxCvUMi8gy0saSiMYkcK', '$2y$13$3Gc.CFszCjrh.EvBgGf/B.EcRXIYcBKoHo4pDo/cOaLJeS2XtvpVS', NULL, 'ambara77@gmail.com', 10, 'K0027', '02', 1515283810, 1515371582),
(36, 'sdn1benoa', '1__Yukt6wUkizS-QYP1P5aZ9XL7MgQzc', '$2y$13$/hpG/sfWp4pKspGIYO7BfusJ.0fJj9v2CFIlIMFwKNfWy5C8wIJ/O', NULL, 'wyn@gmail.com', 10, 'K0028', '02', 1515418477, 1515418477),
(37, 'sdn2benoa', 'qH7wS4HzcrmHS-XN5CvaFoVddjKTLBsJ', '$2y$13$AOFHSQs04k7MyMDE68cFWOu0pbLbDwO92.vYZBODiQr9hxKS4T/d.', NULL, 'sdn2@gmail.com', 10, 'K0029', '02', 1515418759, 1515418759),
(38, 'sdn3benoa', 'RunPSEYzQVln-h3_kXwU-UdldOhEDjZD', '$2y$13$J28enTGdyNE/fJlL0TtQQe3IMWlaY.FhY6XPSX3umryzM23ZEp786', NULL, 'sdn3@gmail.com', 10, 'K0030', '02', 1515420697, 1515420697),
(39, 'sdn4benoa', '_1UiFTojdMkWuUdbCMEFwzE1D2ovt_Fy', '$2y$13$euu5wO8ron.fy5hZG8KrbuBuR.7gdJnhZZMNKZ3/bd/42pUcWfNNm', NULL, 'sdn4@gmail.com', 10, 'K0031', '02', 1515420714, 1515420714),
(40, 'sdn5benoa', 'ux-1rI9aEiekNgM1t3n1-PiY7Q7KnPUg', '$2y$13$uxvTdBy4q.2dHLBQrWcEn.YETZuuExWkE2IDFUHQMJJ1CMNNRr9Ku', NULL, 'sdn5@gmail.com', 10, 'K0032', '02', 1515420731, 1515420731),
(41, 'sdn6benoa', 'pqLpRPckWPiIQ4BslKYMb8PhsX7Ki8v-', '$2y$13$kZ8EhRUERi5v/7x1rOnL3uBio0tbrX5cUHbSfisW4aEx5nUbC/Ona', NULL, 'sdn6@gmail.com', 10, 'K0033', '02', 1515420753, 1515420753),
(42, 'sdn7benoa', 'JcvdrAtc3HcQ1cVr5pE7kyqf5Nsv_u7P', '$2y$13$4YGilfStROhEjzzstyCu6eoM.xoLtmEZS1qjhgkWde9mbTMvcYR.S', NULL, 'sdn7@gmail.com', 10, 'K0034', '02', 1515420771, 1515420771),
(43, 'sdn8benoa', 'f2k-wqgDykywr5p1pSDWR1WhORNn-80K', '$2y$13$bDVo..4ueLhCNOpmTBRgZ.ukHEmFN9AxykO7PxMoOWqX8Xv3kOUAO', NULL, 'sdn8@gmail.com', 10, 'K0035', '02', 1515420786, 1515420786),
(44, 'sdn9benoa', 'u1T2OZvXvcozu6-HF4dz_G8LX-PniupO', '$2y$13$dJ51ZTzF8AGqn.u2WB7hCOQYKhXDTSHHqeAW1VExg/ZTVVg81LO6K', NULL, 'mertha1959nyoman@gmail.com', 10, 'K0036', '02', 1515420800, 1515761287),
(45, 'sdnusadua', 'ho2WhDfbZYUwSY8OYq0cMRlIo3Xm6ylQ', '$2y$13$KMLFqmeXjV7FFf6DBKuHWOs68wBpVkZf.Szx1/O3wQkfbhfU.g4PC', NULL, 'sdnusadua@gmail.com', 10, 'K0037', '02', 1515421082, 1515421082),
(46, 'sdtunaskasih', '_yXVaXpGoC_-RgYVs34J-aBhiZ3HGxsv', '$2y$13$UGuG5My/0XKHcr1d.el5feTHlTPTXjMkktLJrDZcmGdfI/nvW2YeO', NULL, 'sdtunaskasih@gmail.com', 10, 'K0038', '02', 1515421110, 1515421110),
(47, 'sdbaitulamin', 'h6W2aw5AE1uBop88hqGWqYONMalCdIjY', '$2y$13$CA/NIZz35oVdQaVs9iA1KOG7pY1tTtSfaRvej27QwaaRylRpnbIDi', NULL, 'sdbaitulamin@gmail.com', 10, 'K0039', '02', 1515421126, 1515421126),
(48, 'smp4kutsel', 'MZBG6zVt_jdYhqyiTIxCJQi-kOA2xx-K', '$2y$13$hNWJgCf.wKkbL7ilgjRKpekUfV/ek38MYLsCU7crXA4Z.5zytLTaS', NULL, 'smp4kutsel@gmail.com', 10, 'K0040', '02', 1515421861, 1515421861),
(49, 'smpnusadua', 'UzTptqlzmUoC0XoN4Tp81UBgIlmbjwBI', '$2y$13$UiwuQHEQBocGNogs9bexGOgoWN6jL.2hQ6WXSMBJ/v.2XYRC0yYSy', NULL, 'smpnusadua@gmail.com', 10, 'K0041', '02', 1515421883, 1515421883),
(50, 'smpdwijendra', 'TW3v2-z521yh4oCugYyZsTIAg1z_jpYw', '$2y$13$Ytnl3uuJc53yScgc7r7RoudWvVNuQHbSivkei9pKChCjtXPz7Esny', NULL, 'dwijendrabualu@gmail.com', 10, 'K0042', '02', 1515421905, 1515421905),
(51, 'smadwijendra', '6c7Ej5qo76qt7d82EoJSOqxWkX78IFAE', '$2y$13$y1uErKzxkFTgEMc2LpQgiuy8Cw.PO/VyApnkqCJn/DDanycnFivum', NULL, 'smadwijendrabualu@gmail.com', 10, 'K0043', '02', 1515421920, 1515421920),
(52, 'smkganausada', '1iJ8nr1juipwwR2Y4YLCXXJ1do8RSn75', '$2y$13$Urc30.j5xpxSde7zWMRVa.hY7E1stRkivfsWzE0nBC4eF2O7MWtV.', NULL, 'smkkesgana@gmail.com', 10, 'K0044', '02', 1515421940, 1515421940),
(53, 'smkn1kutsel', '6to5bRgS8irG1DJtqPYezoDAQrau6RXn', '$2y$13$dmygQaMFliP5tZBmV/OhCuF1b3JbOJlCtf2Udh/8MlAtgWbQqMKBy', NULL, 'smkn1kutsel@gmail.com', 10, 'K0045', '02', 1515421970, 1515421970),
(54, 'smknusadua', 'mbZQyayEOsT-anMhorlpzEsGsM88-n5X', '$2y$13$B67dBnwC1vaxIfbxZN4V0.0LOliG08LHcIm6eKLBmlRIvNGBt5E/S', NULL, 'smknusadua@gmail.com', 10, 'K0046', '02', 1515422006, 1515422006),
(55, 'devLPM', 'jS8O-iccHMliS2ecQ63BJPWNXUYF31uA', '$2y$13$xnXr8AU1g0k/j4uwRvk9fuQYYbSwzZxWI6T8MY2xqLv9xAO.vAauK', NULL, 'kiroikun8@gmail.com', 10, 'A0005', '01', 1515651058, 1515651101),
(56, 'pkkbenoa', 'wFRxxg9Zx-ldyx7dWxkG69gIEQo1kIHM', '$2y$13$ILJfBFIq1Sfg8JXbIscZ.OEC/pvm04G/J3u1nHS39yFMNTAA02XbG', NULL, 'pkk@lpmbenoa.org', 10, 'K0047', '02', 1515723356, 1515723356),
(57, 'puskemas', '-RuauYZ8xdImVRAYWnzH22YHmyeN5kSh', '$2y$13$t8i6IEu37fpO.JW1mceGW.bv3MmrZhs4I9l8WOd52YdBuozsgVk0q', NULL, 'benoa@gmail.com', 10, 'K0022', '02', 1516695211, 1516695211),
(58, 'admin', 'tC5t7yWKb_s1ULTKBW0ztzQZuHJqMc2z', '$2y$13$RU..JUUB0jsvHbZmvmqBCufekiabC/XFtQaIIqPuonqHGLDjuyv6y', NULL, 'admin@gmail.com', 10, 'A0007', '01', 1543253104, 1543253711);

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
('02', 1, 'n', 'view'),
('02', 5, 'n', 'view'),
('02', 6, 'n', 'view'),
('02', 7, 'n', 'view'),
('02', 8, 'n', 'view'),
('02', 23, 'n', 'view');

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
('02', 'kepala instansi', 'z_kaling', 'uk_id'),
('04', 'Kepala Lingkungan', 'z_kaling', NULL);

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
('01', 58);

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
('A0004', 'adminLPM', 'info@lpmbenoa.org', 'Benoa', '0361', 'l', 1514786400, 'Benoa', 8, 1515201949, 15, 1515274730),
('A0005', 'devLPM', 'kiroikun8@gmail.com', 'Surabaya', '081246264081', 'l', 853221600, 'Denpasar', 15, 1515651039, 15, 1515651039),
('A0006', 'test', 'test@gmail.com', 'test', '12', 'l', 1517292000, 'test', 55, 1516914010, 55, 1516914010),
('A0007', 'admin', 'admin@gmail.com', 'sby', '-', 'l', 1543273200, 'asd', 55, 1543253088, 55, 1543253088);

-- --------------------------------------------------------

--
-- Table structure for table `z_agenda`
--

CREATE TABLE `z_agenda` (
  `a_id` varchar(9) NOT NULL,
  `a_judul` varchar(100) NOT NULL,
  `a_isi` text NOT NULL,
  `a_location` varchar(255) NOT NULL,
  `a_tanggal` int(11) DEFAULT NULL,
  `a_tanggal_akhir` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `a_status` enum('sudah_terlaksana','belum_terlaksana','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_agenda`
--

INSERT INTO `z_agenda` (`a_id`, `a_judul`, `a_isi`, `a_location`, `a_tanggal`, `a_tanggal_akhir`, `created_by`, `created_at`, `updated_by`, `updated_at`, `a_status`) VALUES
('A001/2018', 'Karya Bakti LPM Kelurahan Benoa', 'Foging, lomba2, pelatihan, gotong-royong, kebersihan & pemberian dana motivasi', 'Kelurahan Benoa', 1518847200, 1529125200, 15, 1515215589, 15, 1515215589, 'belum_terlaksana'),
('A002/2018', 'LPM Benoa Junior CUP', 'Turnament Sepak Bola U12 & U13  Antar SSB/Academy ', 'Lapangan Lagoon', 1516341600, 1517119200, 15, 1515215684, 15, 1517444234, 'sudah_terlaksana'),
('A003/2018', 'Rapat Sosialisasi E-Murenbang  & Program Kerja LPM', 'Sosialisasi Penggunaan E-Musrenbang Kelurahan Benoa', 'Wantilan Kelurahan Benoa', 1515736800, 1515736800, 15, 1515475407, 15, 1515756179, 'sudah_terlaksana'),
('A004/2018', 'PORSENI Kelurahan Benoa', 'Pekan Olah Raga dan Seni Kelurahan Benoa', 'Kelurahan Benpa', 1528434000, 1534482000, 15, 1515475490, 15, 1515475490, 'belum_terlaksana'),
('A005/2018', 'Musrenbang Kelurahan Benoa', 'Musyawaran Rencana Pembangunan Kelurahan Benoa', 'Wantilan Kelurahan Benoa', 1516773600, 1516773600, 15, 1515756234, 15, 1516852908, 'sudah_terlaksana'),
('A010/2017', 'Arisan Suka Duka LPM Benoa', 'Arisan Perdana Suka Duka LPM Kel. Benoa periode 2017-2020', 'Kubu Pratama', 1515909600, 1515909600, 1, 1511982620, 15, 1516421442, 'sudah_terlaksana'),
('A011/2017', 'Bimtek Anggota LPM Benoa', 'Bimbingan Teknis Terkait Lembaga Pemberdayaan Masyarakat Kelurahan ', 'Kantor Lurah Benoa', 1518760800, 1518933600, 1, 1511983419, 15, 1515205036, 'belum_terlaksana');

-- --------------------------------------------------------

--
-- Table structure for table `z_berita`
--

CREATE TABLE `z_berita` (
  `b_id` varchar(9) NOT NULL,
  `b_nama` varchar(100) NOT NULL,
  `b_isi` text,
  `b_gambar` varchar(15) DEFAULT NULL,
  `b_tgl` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `b_status` enum('y','n','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_berita`
--

INSERT INTO `z_berita` (`b_id`, `b_nama`, `b_isi`, `b_gambar`, `b_tgl`, `created_by`, `created_at`, `updated_by`, `updated_at`, `b_status`) VALUES
('B001/2018', 'Pengamanan Malam Tahun Baru 2018', '<p><strong>Benoa (31/12/2017), </strong>Perayaan Malam Tahun Baru 2018 merupakan salah satu ajang akhir tahun yang begitu semarak, dimana-mana ada pesta perayaan, dari kumpul degan keluarga, teman kerabat, pesta kembang api. Oleh karena itu LPM Kelurahan Benoa, Bersama Lurah, Babinsa, Linmas dan pecalag masing2 Lingkungan &amp; Desa Adat melakukan Patroli bersama guna mengantisipasi hal hal yang dapat menganggu keamanan dan ketertiban malam tahun baru.</p>\r\n<p>Patroli di laksanakan dari 09.00 wita(31/12/2017) hingga pukul 01.00 WITA&nbsp; (01/01/2018). Ketua LPM Benoa &amp; Beberapa Anggota Serta Lurah Benoa ikut dalam patroli tersebut. dalam dalam kesempatan tersebut Ketua LPM menyampaikan Apresiasi kepada para LINMAS, Babinsa , Babinkamtibmas &amp; Pecalang Yang sudah sudah meluangkan waktunya dan mengabdi untuk keamanan perayaan Malam Tahun Baru Sehingga pada malam perayaan tidak ada kejadian yang serius dan Kelurahan Benoa dinyatakan Aman&nbsp;<strong>(admin)</strong>&nbsp;</p>', 'B001-2018.jpg', 1514700000, 15, 1515213375, 15, 1515213375, 'y'),
('B002/2018', 'Koordinasi Tindak Lanjut Laporan Warga Dengan manajemen BNDCC', '<p style=\"text-align: justify;\"><strong>Nusa Dua (11/01/2018), </strong>Menindak Lanjtui Laporan Warga Bulan Desember 2017, LPM Kelurahan Benoa Berkoordinasi dengan pihak BNDCC untuk mengadakan Pertemuan dan di sepakati kamis, 11 Januari 2018.</p>\r\n<p style=\"text-align: justify;\">Warga pendamping melaporkan bahwa terjadi \"<em><strong>perubahan rasa terhadap air tanah (air sumur) yang sudah puluhan tahun di gunakan menjadi Asin, akibat adanya pengolahan air laut menjadi air tawar</strong></em>\" (Laporan Awal).&nbsp;&nbsp;</p>\r\n<p style=\"text-align: justify;\">Dalam Pertemuan Tersebut dihadiri oleh :</p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Manajemen BNDCC</li>\r\n<li>Ketua LPM Benoa - I Wayan Ambara putra</li>\r\n<li>Jero Bendesa Adat Bualu - I Wayan Wita</li>\r\n<li>Ketua Tim CSR Desa Adat Bualu - I Nyoman Sueta</li>\r\n<li>Kepala Lingkungan Br. Celuk - I Wayan Mampu</li>\r\n<li>Perwakilan Warga - I Wayan Artha&nbsp;</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">dalam pertemuan tersebut Ketua LPM Menanyakan Proses - Proses pengolahan Air yang di lakukan di BNDCC sesuai dengan laoran warga, karena dari puluhan tahun Sumur tersebut baru 2 bulan (Novermber) ada perubahan Rasa menjasi Asin Mengingat Lokasi Sumur Jauh Dari pantai &amp; Rawa Teluk.&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Penjelansan Managemen :</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Manajemen Menegaskan bahwa : <strong>BNDCC Tidak Mengolah Air Laut Menjadi Air Tawar tetapi pengolahan/penyulingan Air Tanah/Sumur.</strong></li>\r\n<li>Manajemen Mengolah Air Sumur dengan kedalam 14 Meter, Untuk Support kekurangan Air saat even2 besar yang ada disana karena sumber air utama yang di gunakan adalah air dari PDAM</li>\r\n<li>Karena kandungan Zat yang ada di air sumur tersebut dapat merusak beberapa alat2 dan beberapa kandungan Zat agar memenuhi standar air yang layak digunakan maka BNDCC melakukan Penyulingan Air Sumur</li>\r\n<li>Sisa Air Penyulingan/Limbah di bawah ke Sumur Serapan Berukuran 4mx4, sesuai arahan ahli karena jika diserap tanah maka akan kembali menjadi air tanah.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\"><strong>Saran &amp; Kesimpulan</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li>Kaling Celuk, Jero Bendesa , Ketua Tim CSR &amp; Ketua LPM Menyarankan Kepada BNDCC untuk Membuat Penampungan terhadap Sisa hasil penyulingan/limbah agar tidak meluber / sebagai indikasi mempengaruhi air sumur warga</li>\r\n<li>Sisa air penyulingan Tersebut nanti bisa digunakan untuk menyiram Tanaman atau di salurkan ke pembuangan Limbah ITDC</li>\r\n<li>Warga Akan mencoba membuat Sumur Baru dengan kedalaman yang berbeda untuk mendapatkan air Sumur yang Layak untuk di gunakan (Tidak Asin)</li>\r\n<li>Pihak BNDCC akan tetap berkoordinasi dan melakukan dengan warga &amp; pihak terkait sekitar dan tetap mengontrol jika terjadi hal hal lain.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">Pertemuan berjalan dengan suasana kekeluargaan dan jero bendesa menegaskan bahwa Yang Perlu kita garis bawahi adalah informasi yang beredar di masyarakat<strong> bahwa BNDCC Melakukan Pengolahan Air Laut menjadi Air Tawar itu tidak Benar</strong>, Yang Benar adalah <strong>BNDCC Mengolah/Menyuling Air Sumur/Air Tanah</strong>. (admin)</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', 'B002-2018.jpg', 1515650400, 15, 1515645260, 15, 1515659117, 'y'),
('B003/2018', 'Sosialisasi Program Kerja LPM  & Sosialisasi e-musrenbang Kelurahan Benoa', '<p><strong>Nusa Dua (12/01/2018)</strong>,<strong> LPM Kelurahan Benoa</strong> melakukan Rapat Koordinas Dengan Lurah , Kepala lingkungan &amp; Kepala Sekolah SD, SMP &amp; SMU se kelurahan Benoa Guna menyampaikan Prgram Kerja LPM Benoa periode 2017-2020. Dalam rapat tersebut juga sekaligus sosialisasi website LPM Benoa dan Sosialisasi e-musrenbang.</p>\r\n<p>Ketua LPM Benoa <strong>I Wayan Ambara Putra</strong>, Menjelaskan Tujuan <strong>e-musrenbang</strong> kelurahan Benoa adalah bertujuan untuk :</p>\r\n<ol>\r\n<li>Memberikan Informasi kepada masyarakat Kelurahan benoa Pada khususnya terkait usulan-usulan Pembangunan di wilayah Kelurahan Benoa.</li>\r\n<li>Memudahkan instansi/lingkungan untuk menginput data usulan-usulan di masing masing instansi / lingkungan.</li>\r\n<li>Memudahkan Untuk Melihat Usulan Usulan dari masing2 Lingkungan/Instansi.</li>\r\n<li>Meberikan Infomasi Kepada Masyarakat Kelurahan Benoa Terkait usulan-usulan yang sudah direalisasikan.</li>\r\n<li>Sebagai Data Pendukung Kelurahan yang dapat di akses kapanpun, dimanapun terkait usulan rencana pembangunan di Kelurahan Benoa</li>\r\n</ol>\r\n<p>terkait Program kerja LPM Benoa, Ia berharap Dukungan seluruh Kaling &amp; Stackholder serta Masyarat Benoa, dan LPM Benoa akan melangsung even LPM Benoa Junior Cup yang akan berlangsung Tanggal 19-21 Januari 2018 di Lapangan Lagoon. (<strong>admin</strong>)</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'B003-2018.JPG', 1515736800, 15, 1515755624, 15, 1515757295, 'y'),
('B004/2018', 'Inilah Peserta LPM Benoa Junior Cup 2018', '<p><strong>Nusa Dua</strong>, Lembaga Pemberdayaan Masyarakat Kelurahan Benoa bidang&nbsp;<strong>&nbsp;Pemuda dan Olahraga</strong>&nbsp;mengadakan Turnament sepak Bola antar SSB/soccer Academy yang diberi title \"<strong>LPM Benoa Junior Cup 2018</strong>\" Pada Tanggal 19-21 Januari 2018 di Lapangan Lagoon.&nbsp;</p>\r\n<p>Berikut adalah SSB / Academy yang Megikuti Turmanet Tesebut yang Terbagi Ke 2 Kelompok Umur :</p>\r\n<p><strong>Peserta U12 (KU 2006 / 2007)</strong></p>\r\n<ol>\r\n<li>SSB Putra Mumbul A</li>\r\n<li>SSB Putra Mumbul B</li>\r\n<li>SSB Star Kencana</li>\r\n<li>SSB Putra Pemenang</li>\r\n<li>SSB Banyuangi</li>\r\n<li>SSB Mandala United</li>\r\n<li>SSB Putra Perkanti A</li>\r\n<li>SSM Putra Perkanti B</li>\r\n<li>SSB BALI UNITED A</li>\r\n<li>SSB Bina Putra A</li>\r\n<li>SSB Bina Putra B</li>\r\n<li>SSB BALI UNITED B</li>\r\n<li>SSB Guntur</li>\r\n<li>SSB Putra Tresna</li>\r\n<li>SSB Terang Bangsa SEMARANG</li>\r\n<li>SSB Putra Gatra&nbsp; Banyuangi</li>\r\n</ol>\r\n<p><strong>Peserta U13 (KU 2005)</strong></p>\r\n<ol>\r\n<li>SSB Putra Mumbul</li>\r\n<li>SSB Kutuh</li>\r\n<li>SSB Mandala United</li>\r\n<li>SSB Putra Perkanti</li>\r\n<li>SSB BALI UNITED</li>\r\n<li>SSB Bina Putra</li>\r\n<li>SSB Putra Kapal</li>\r\n<li>SSB Guntur A</li>\r\n<li>SSB Bali FC</li>\r\n<li>SSB Mitra Bali United</li>\r\n<li>SSB Darma Cakti</li>\r\n<li>SSB Putra Tresna</li>\r\n</ol>\r\n<p>Upacara Pembukaan Akan di laksanakan 19 januari 2018 Pk. 13.30 Wita dan akan dilanjutkan dengan pertandingan2 babak Penyisihan&nbsp; <strong>(admin).</strong>&nbsp;</p>', 'B004-2018.jpg', 1515909600, 15, 1516018965, 15, 1516019365, 'y'),
('B005/2018', 'Hasil Drawing LPM Benoa Junior Cup 2018', '<p><strong>Nusa Dua,&nbsp;&nbsp;</strong>Berikut Hasil Drawing Peserta LPM Benoa Junior Cup 2018 Turnament Sepak Bola U 12 &amp; U 13 antar SSB / Academy&nbsp; yang di laksanakan di Wantilan Kantor Lurah Benoa</p>\r\n<p style=\"text-align: center;\"><strong>KU 2006/2007 (U12)</strong></p>\r\n<table style=\"border-collapse: collapse; width: 14.5719%; margin-left: auto; margin-right: auto;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; text-align: center; height: 17px;\"><strong>GROUP A</strong></td>\r\n<td style=\"width: 30.6466%; text-align: center; height: 17px;\"><strong>GROUP B</strong></td>\r\n<td style=\"width: 25.2504%; text-align: center; height: 17px;\"><strong>GROUP C</strong></td>\r\n<td style=\"width: 71.985%; text-align: center; height: 17px;\"><strong>GROUP D</strong></td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Putra Mumbul A</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB Putra Mumbul B</td>\r\n<td style=\"width: 25.2504%; height: 17px;\">SSB Putra Mumbul C</td>\r\n<td style=\"width: 71.985%; height: 17px;\">SSB Putra Tresna</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Star Kencana</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB Putra Pemenang A</td>\r\n<td style=\"width: 25.2504%; height: 17px;\">SSB Guntur</td>\r\n<td style=\"width: 71.985%; height: 17px;\">SSB Putra Pemenang B</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Perkanti B</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB Perkanti A</td>\r\n<td style=\"width: 25.2504%; height: 17px;\">SSB Bina Putra</td>\r\n<td style=\"width: 71.985%; height: 17px;\">SSB Bina Putra</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Bali United B</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB Bali United C</td>\r\n<td style=\"width: 25.2504%; height: 17px;\">SSB&nbsp; Mandala United&nbsp;</td>\r\n<td style=\"width: 71.985%; height: 17px;\">SSB Bali United A</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"text-align: center;\"><strong>KU 2005 (U13)</strong></p>\r\n<table style=\"border-collapse: collapse; width: 34.6747%; margin-left: auto; margin-right: auto; height: 280px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; text-align: center; height: 17px;\"><strong>GROUP A</strong></td>\r\n<td style=\"width: 30.6466%; text-align: center; height: 17px;\"><strong>GROUP B</strong></td>\r\n<td style=\"width: 60.8119%; text-align: center; height: 17px;\"><strong>GROUP C</strong></td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 10px;\">SSB Putra Mumbul&nbsp;</td>\r\n<td style=\"width: 30.6466%; height: 10px;\">SSB Mitra Bali United</td>\r\n<td style=\"width: 60.8119%; height: 10px;\">SSB Mandala United</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Putra Tresna</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB Putra Perkanti</td>\r\n<td style=\"width: 60.8119%; height: 17px;\">SSB Guntur B</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Kutuh</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB Guntur A</td>\r\n<td style=\"width: 60.8119%; height: 17px;\">SSB Bina Putra</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 25.3188%; height: 17px;\">SSB Putra Kapal</td>\r\n<td style=\"width: 30.6466%; height: 17px;\">SSB FC Bali</td>\r\n<td style=\"width: 60.8119%; height: 17px;\">SSB&nbsp; Darma Cakti</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: left;\">Walaupun 2 Tim Tamu dari Luar Daerah (Banyuangi &amp; Semarang) Batal untuk ikut serta di karenakan padatnya jadwal &amp; persiapan Turnamnet Danone Nations Cup Region Jawa namun tim tim SSB Lokal Bali Tetap Bersemangat Untuk Mengikuti LPM Benoa Junior Cup 2018, Disamping untuk Turnamnet pemanasa &amp; Persiapan Untuk Mengikuti Danone Nations Cup Region Bali &amp; Nusa Tenggara Barat <strong>(admin)</strong></p>', 'B005-2018.jpg', 1516255200, 15, 1516292734, 15, 1516293266, 'y'),
('B006/2018', 'Lurah Benoa Buka LPM Benoa Junior Cup 2018', '<p>Nusa Dua (19/01/2018) Turnamnet Sepak Bola U-12 &amp; U-13 antar SSB/Academy yang di gelar <strong>Lembaga Pemberdayaan Masyarakat Kelurahan Benoa</strong> dibuka secara Resmi Oleh Lurah Benoa <strong>Drs. I Wayan Solo, M.Si</strong></p>\r\n<p>Dalam Sambutanya Lurah Benoa mengapresiasi Kegiatan Tersebut dan Memberikan Dukungan dan semangat terhadap seluruh peserta untuk tetap menjunjung Tinggi Sportifitas. Beliau Juga Memaklumi Kondisi lapangan yang sedikit Kurang Baik dan Berharap Pemda Badung melalui Bapak Bupati Badung Agar Segera Merealisasikan Pembangunan Stadion dan menata Lapangan Lagoon.&nbsp;</p>\r\n<p>Ketua LPM Kel. Benoa Menegaskan bahwa Turnament ini merupakan salah satu Program kerja LPM bidang<strong> Pemuda &amp; Olah Raga</strong> untuk Meningkatkan minat dan Bakat Generasi amuda khusisnya anak2 U-12 &amp; U-13 di bidang Olah Raga Sepak Bola. Melalui SSB ia berharap Dapat Terlahir Pemain Pemain yang Handal dan dapat berkiprah di Sepak Bola Nasional atau bahkan di tingkat International.</p>\r\n<p>Turnament ini menjadi ajang pemanasan bagi SSB yang akan Berlaga di Danone Nations Cup Bulan Februari untuk Region Bali &amp; Nusa Tenggara Barat. Hadir Dalam kesempatan Tersebut Para Kaling, Babinsa, Babinkabtibmas, ASSBI prov Bali dan Pengurus &amp; anggota LPM Kel. Benoa (<strong>admin</strong>)</p>', 'B006-2018.JPG', 1516341600, 15, 1516353310, 15, 1516360220, 'y'),
('B007/2018', 'Inilah Team Yang Lolos 8 Besar LPM Benoa Junior Cup Kategori U-12', '<ol>\r\n<li><strong>Nusa Dua (19/01/2018)</strong> LPM Benoa Junior Cup Telah Bergulir dan Di Buka Secara Resmi Oleh Lurah Benoa. Setelah Acara pembukaan langsung digelar pertandingan babak penyisihan group Kategori U-12 Yang Terbagi Menjadi 4 Group. Berikut Tim Yang Lolos Ke babak Perempat Final yang akan di gelar 21 Januari 2018</li>\r\n</ol>\r\n<p>Juara grup A SSB PUTRA MUMBUL A<br />Runner up A SSB STAR KENCANA</p>\r\n<p>Juara grup B SSB PUTRA PERKANTI A<br />Runner up B SSB BALI UNITED C</p>\r\n<p>Juara grup C SSB MANDALA UNITED<br />Runner up C SSB GUNTUR</p>\r\n<p>Juara grup D SSB BINA PUTRA B<br />Runner up D SSB PUTRA TRESNA</p>\r\n<p>Besok (20/01/2018) Turnament LPM Benoa Junior Cup Akan Dilanjutkan Dengan babak Penyisihan Group Kategori U-13 Mulai Pukul 13.30 Wita - Selesai.&nbsp;<strong>(admin)</strong></p>\r\n<p>&nbsp;</p>', 'B007-2018.JPG', 1516341600, 15, 1516366476, 15, 1516366643, 'y'),
('B008/2018', 'Ini Alasan Turnament LPM Benoa Junior Cup ditunda', '<p><strong>Nusa Dua (21/01/2018)</strong>, Turnament Sepak Bola LPM Benoa Junior Cup 2018 Yang sudah memasuki Babak Perempat Final - Semifinal dan akan di lanjutkan sampai babak Final &amp; Penutupan di tunda hingga <strong>Minggu, 28 Januari 2018 pk 08.00 Wita - Selesai. </strong>Keputusan tersebut diambil berdasarkan hasil koordinasi Ketua LPM Kelurahan Benoa, Panitia Pelaksana, Wasit, beserta Manager Tim melihat Curah Hujan yang begitu Tinggi dan tidak henti Hentinya serta Kondisi Lapangan Lagoon yang tidak memungkinkan Untuk melaksanakan pertadingan.</p>\r\n<p><strong>Ambara Putra (Ketua LPM Benoa)</strong> menjelaskan kami tidak dapat memaksakan Turnament untuk tetap di gelar hari ini mengingat hujan yang cukup lebat dan tidak henti hentinya, dan kami memutuskan bersama dan menentukan hari Minggu 28/01/2018 untuk di lanjutkan Mengingat senin-sabtu anak-anak peserta Turnament masih mengikuti KBM (Kegiatan Belajar-Mengajar) di sekolah masing2. Disamping itu ditundanya Lanjutan Turnament ini dapat membuat tim tim yang lolos memiliki waktu yang lebih untuk mempersiapkan diri. (admin)</p>\r\n<p>&nbsp;</p>', 'B008-2018.jpg', 1516514400, 15, 1516501846, 15, 1516501906, 'y'),
('B009/2018', 'Musyawarah Rencana Pembangunan Kelurahan Benoa', '<p><strong>Benoa (24/01/2018),&nbsp;</strong>Musyawarah Rencana Pembangunan Yang di kenal dengan MUSRENBANG Kelurahan Benoa yang sedianya di rencanakan tangga 26 januari 2018 di majukan tanggal 24 januari 2018 atas saran dari Anggota DPRD Kab.Badung asal Kelurahan Benoa. Pada MUSRENBANG kali ini di buka langsung oleh <strong>Camat Kuta Selatan.&nbsp;</strong>Dalam sambutannya camat kuta selatan juga menyampaikan realisasi rencana pembangunan di tahun 2018 yang ada di kelurahan Benoa ada 11 usulan yang akan di realisasikan di tahun ini.&nbsp;</p>\r\n<p>Acara tersebut diikuti oleh seluruh Kaling, para kepala sekola, kepala puskesmas, tim penggerak PKK, Anggota LPM, Babinsa, Babin Kabtipmas, Lurah, Kapolsek Tokoh Masyarakat dan Hadir Pula Anggota DPRD Kab.Badung asal Kelurahan Benoa, <strong>Drs. I Made Retha, S.H., M.Ap</strong> dan <strong>I Nyoman Kariana, S.T.</strong></p>\r\n<p>Ketua LPM Benoa <strong>I Wayan Ambara Putra</strong> Yang di tunjuk sebagai Ketua Panitia Melaporkan bahwa Kelurahan Benoa sudah melakukan Pra-Musrenbang ia juga meyampaikan LPM Benoa membuatkan Fasilitas System input musrenbang secara Online E-Musrenbang Kelurahan Benoa, dan sudah masuk Usulan sebanyak 289 usulan yang terbagi dalam 4 Kelompok :&nbsp;<em><strong>Kelompok Ekonomi &amp; Sumber Daya Alam : 13 Usulan ,&nbsp;Kelompok Pengembangan SDM : 29 Usulan ,&nbsp;Kelompok Sarana dan Prasarana Wilayah : 231 Usulan ,&nbsp;Kelompok Sosial Budaya :&nbsp;16 usulan.&nbsp; </strong></em>Dari 289 Usulan tersebut&nbsp; di musyarahkan bersama yang mana saja akan menjadi Usulan Prioritas utama dan dimasukkan kedalam usulan-sulan POKIR (Pokok Pikiran Dewan). Ia juga memohon kepada anggota Dewan yang hadir untuk mengawal usulan-usulan dari kelurahan Benoa, mengingat banyaknya usulan usulan yang sangat Urgent salah satunya yang berkaitan dengan penanggulangan Banjir pada saat Musim Hujan.&nbsp;</p>\r\n<p>MUSRENBANG di tutup oleh Lurah Benoa, <strong>Drs. I Wayan Solo, M.Si</strong> yang berterima kasih kepada seluruh undagan yang sudah hadir dan Beliau berharap Usulan Usulan tersebut dapat di realisasikan di tahun 2019. Ia juga usulan yang di realisasikan di tahun 2018 walaupun hanya 11 usulan mari kita Kawal dan mari kita awasi bersama-sama agar hasilnya maksimal <strong>(admin).</strong></p>', 'B009-2018.jpg', 1516773600, 15, 1516845373, 15, 1516845373, 'y'),
('B010/2018', 'Pastikan Anda Terdaftar Sebagai pemilih Dalam Pilgub Bali 2018', '<p><strong>Benoa (26/01/2017),&nbsp;</strong>Semarak Pesta Demokrasi Pemilihan Kepala Daerah Serentak yang akan di gelar 27 Juni 2018 sudah kian panas. pasangan calon telah Mendaftarkan diri untuk maju menjadi calon kepala daerah. Khususnya Pemilihan Pemimpin Bali (PILGUB Bali) sudah kian panas, ada 2 Paket Kandidat yang sudah mendaftarkan diri bersama partai pengusungnya adalah pasangan&nbsp;<strong>Dr. Ir. Wayan Koster, M.M. dan Dr. Ir Tjok Oka Artha Ardhana Sukawati, M.Si&nbsp;</strong>dan Pasangan&nbsp;<strong>Ida Bagus Rai Dharmawijaya Mantra, S.E.,M.Si dan Drs. I Ketut Sudikerta.</strong></p>\r\n<p>KPU akan menyelesaikan dan mengakhiri Verifikasi Paslon pada tanggal 27 Januari 2018 dan akan di lakukan penetapan Paslon tangga 12 Februari 2018. walaupun demikian media sosial sudah ramai dengan postingan - postingan dari masing2 Paslon, dan juga di berbagai wilayah di BALI sudah diramaikan dengan pemasangan Balihoo Paslon.</p>\r\n<p>Melihat&nbsp; hal tersebut Ketua LPM Benoa yang juga Sebagai Ketua PPS Benoa <strong>I Wayan Ambara Putra</strong>, Melihat itu adalah hal yang wajar artinya antusias masyarakat untuk pemilihan kepala Daerah / Gubernur &amp; Wakil Gubernur Bali cukup besar. Namun Ia berharap Agar masyarakat memperhatikan tahapan-tahapan yang sudah di tetapkan KPU. Ini penting masyarakat Untuk Mengetahui akan tahapan-tahapan yang berjalan, seperti sekarang kami sedang mencoklit pemilih, <em>kami berharap Masyarakat dapat pro aktif untuk bertanya kepada kepala Lingkungan / Pedugas Coklit untuk memastikan dirinya akan terdaftar sebagai Pemilih pada PILGUB 2018</em>. Ia menambahkan di Kelurahan Benoa Sementara ada 33 TPS dengan 63 Petugas PPDP (Petugas Pemutahiran Data Pemilih). Semoga saja Seluruh masyarakat dapat menggunakan Hak Pilihnya. <strong>Kami Menghimbau Kepada masyarakat Kelurahan Benoa Yang sudah memiliki KTP Elektronik Untuk dapat memastikan dirinya Nantinya Terdaftar Sebagai Pemilih pada Pilgub</strong>. <strong>Kalau anda Sudah Terdaftar Maka anda sudah dipastikan dapat memberikan Suara Anda Untuk Paslon Pilihan Anda.</strong></p>\r\n<p><em><strong>\"Masyarakat Dapat Bertanya Langsung ke masing-masing Kepala Lingkungan Atau menghubungi PPS Kelurahan Benoa\"</strong></em></p>\r\n<ol>\r\n<li>I Wayan Ambara Putra 081 236 852 851</li>\r\n<li>I Wayan Nalo&nbsp; 081 236 243 44</li>\r\n<li>Abdhi Putra&nbsp; 081 238 126 81&nbsp;</li>\r\n</ol>\r\n<p>Situs Resmi KPU Kab. Badung :&nbsp;<a href=\"https://kpu-badungkab.go.id/\">https://kpu-badungkab.go.id/</a></p>\r\n<p>Situs resmi KPU Prov. Bali :&nbsp;<a href=\"http://bali.kpu.go.id\">http://bali.kpu.go.id</a></p>\r\n<p>Berikut adalah Nama2 PPDP di Kelurahan Benoa</p>\r\n<table width=\"460\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 48px;\" width=\"48\">NO</td>\r\n<td style=\"width: 290px;\" width=\"212\">NAMA</td>\r\n<td style=\"width: 140px;\" width=\"129\">LINGKUNGAN</td>\r\n<td style=\"width: 10px;\" width=\"71\">TPS</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">1</td>\r\n<td style=\"width: 290px;\">I Ketut Suata, ST</td>\r\n<td style=\"width: 140px;\">Terora</td>\r\n<td style=\"width: 10px;\">1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">2</td>\r\n<td style=\"width: 290px;\">I Made Nerkon</td>\r\n<td style=\"width: 140px;\">Terora</td>\r\n<td style=\"width: 10px;\">1</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">3</td>\r\n<td style=\"width: 290px;\">I Komang Ardika</td>\r\n<td style=\"width: 140px;\">Terora</td>\r\n<td style=\"width: 10px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">4</td>\r\n<td style=\"width: 290px;\">I Nyoman Wandi</td>\r\n<td style=\"width: 140px;\">Terora</td>\r\n<td style=\"width: 10px;\">2</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">5</td>\r\n<td style=\"width: 290px;\">I Wayan Mampu</td>\r\n<td style=\"width: 140px;\">Celuk</td>\r\n<td style=\"width: 10px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">6</td>\r\n<td style=\"width: 290px;\">I Ketut Budiarta</td>\r\n<td style=\"width: 140px;\">Celuk</td>\r\n<td style=\"width: 10px;\">3</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">7</td>\r\n<td style=\"width: 290px;\">I Ketut Suantara</td>\r\n<td style=\"width: 140px;\">Celuk</td>\r\n<td style=\"width: 10px;\">4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">8</td>\r\n<td style=\"width: 290px;\">I Ketut Sukisna</td>\r\n<td style=\"width: 140px;\">Celuk</td>\r\n<td style=\"width: 10px;\">4</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">9</td>\r\n<td style=\"width: 290px;\">I Made Sura Wijaya</td>\r\n<td style=\"width: 140px;\">Peken</td>\r\n<td style=\"width: 10px;\">5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">10</td>\r\n<td style=\"width: 290px;\">I Made Ormit</td>\r\n<td style=\"width: 140px;\">Peken</td>\r\n<td style=\"width: 10px;\">5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">11</td>\r\n<td style=\"width: 290px;\">I Nyoman Darwinta, Sp.</td>\r\n<td style=\"width: 140px;\">Peken</td>\r\n<td style=\"width: 10px;\">6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">12</td>\r\n<td style=\"width: 290px;\">Ir. I Wayan Sueta</td>\r\n<td style=\"width: 140px;\">Peken</td>\r\n<td style=\"width: 10px;\">6</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">13</td>\r\n<td style=\"width: 290px;\">I Nyoman Sueta, SE</td>\r\n<td style=\"width: 140px;\">Penyarikan</td>\r\n<td style=\"width: 10px;\">7</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">14</td>\r\n<td style=\"width: 290px;\">I Wayan Mega</td>\r\n<td style=\"width: 140px;\">Penyarikan</td>\r\n<td style=\"width: 10px;\">7</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">15</td>\r\n<td style=\"width: 290px;\">I Nyoman Sudika</td>\r\n<td style=\"width: 140px;\">Penyarikan</td>\r\n<td style=\"width: 10px;\">8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">16</td>\r\n<td style=\"width: 290px;\">I Made Kerna</td>\r\n<td style=\"width: 140px;\">Penyarikan</td>\r\n<td style=\"width: 10px;\">8</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">17</td>\r\n<td style=\"width: 290px;\">I Wayan Wiranata</td>\r\n<td style=\"width: 140px;\">Penyarikan</td>\r\n<td style=\"width: 10px;\">9</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">18</td>\r\n<td style=\"width: 290px;\">I Wayan Suarjana</td>\r\n<td style=\"width: 140px;\">Penyarikan</td>\r\n<td style=\"width: 10px;\">9</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">19</td>\r\n<td style=\"width: 290px;\">I Made Rigih</td>\r\n<td style=\"width: 140px;\">Peminge</td>\r\n<td style=\"width: 10px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">20</td>\r\n<td style=\"width: 290px;\">I Made Sarana</td>\r\n<td style=\"width: 140px;\">Peminge</td>\r\n<td style=\"width: 10px;\">10</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">21</td>\r\n<td style=\"width: 290px;\">I Made Wirya Adhi Sindhu</td>\r\n<td style=\"width: 140px;\">Peminge</td>\r\n<td style=\"width: 10px;\">11</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">22</td>\r\n<td style=\"width: 290px;\">I Wayan Indra Jaya</td>\r\n<td style=\"width: 140px;\">Peminge</td>\r\n<td style=\"width: 10px;\">11</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">23</td>\r\n<td style=\"width: 290px;\">I Wayan Jabut</td>\r\n<td style=\"width: 140px;\">Sawangan</td>\r\n<td style=\"width: 10px;\">12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">24</td>\r\n<td style=\"width: 290px;\">I Nyoman Mardiana</td>\r\n<td style=\"width: 140px;\">Sawangan</td>\r\n<td style=\"width: 10px;\">12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">25</td>\r\n<td style=\"width: 290px;\">Ni Made Sariani</td>\r\n<td style=\"width: 140px;\">Sawangan</td>\r\n<td style=\"width: 10px;\">13</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">26</td>\r\n<td style=\"width: 290px;\">I Komang Sanjaya Adi Putra</td>\r\n<td style=\"width: 140px;\">Sawangan</td>\r\n<td style=\"width: 10px;\">13</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">27</td>\r\n<td style=\"width: 290px;\">I Ketut Dendi</td>\r\n<td style=\"width: 140px;\">Pande</td>\r\n<td style=\"width: 10px;\">14</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">28</td>\r\n<td style=\"width: 290px;\">I Made Derta</td>\r\n<td style=\"width: 140px;\">Pande</td>\r\n<td style=\"width: 10px;\">14</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">29</td>\r\n<td style=\"width: 290px;\">I Komang Eka Putra</td>\r\n<td style=\"width: 140px;\">Pande</td>\r\n<td style=\"width: 10px;\">15</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">30</td>\r\n<td style=\"width: 290px;\">I Made Sukartina</td>\r\n<td style=\"width: 140px;\">Pande</td>\r\n<td style=\"width: 10px;\">15</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">31</td>\r\n<td style=\"width: 290px;\">I Nyoman Surya Artha, S.Kom</td>\r\n<td style=\"width: 140px;\">Balekembar</td>\r\n<td style=\"width: 10px;\">16</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">32</td>\r\n<td style=\"width: 290px;\">I Wayan Kariyana</td>\r\n<td style=\"width: 140px;\">Balekembar</td>\r\n<td style=\"width: 10px;\">16</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">33</td>\r\n<td style=\"width: 290px;\">I Wayan Danta Wiguna</td>\r\n<td style=\"width: 140px;\">Balekembar</td>\r\n<td style=\"width: 10px;\">17</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">34</td>\r\n<td style=\"width: 290px;\">I Made Wisman</td>\r\n<td style=\"width: 140px;\">Balekembar</td>\r\n<td style=\"width: 10px;\">17</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">35</td>\r\n<td style=\"width: 290px;\">I Nyoman Kariana Wirawan, S.Pd.</td>\r\n<td style=\"width: 140px;\">Bualu</td>\r\n<td style=\"width: 10px;\">18</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">36</td>\r\n<td style=\"width: 290px;\">I Nyoman Tarca Antika</td>\r\n<td style=\"width: 140px;\">Bualu</td>\r\n<td style=\"width: 10px;\">18</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">37</td>\r\n<td style=\"width: 290px;\">I Made Korna AMD.Par.S.Pd.MM</td>\r\n<td style=\"width: 140px;\">Bualu</td>\r\n<td style=\"width: 10px;\">19</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">38</td>\r\n<td style=\"width: 290px;\">I Wayan Wetna</td>\r\n<td style=\"width: 140px;\">Bualu</td>\r\n<td style=\"width: 10px;\">19</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">39</td>\r\n<td style=\"width: 290px;\">I Wayan Garta, SE, MM</td>\r\n<td style=\"width: 140px;\">Bualu</td>\r\n<td style=\"width: 10px;\">20</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">40</td>\r\n<td style=\"width: 290px;\">I Ketut Tena</td>\r\n<td style=\"width: 140px;\">Bualu</td>\r\n<td style=\"width: 10px;\">20</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">41</td>\r\n<td style=\"width: 290px;\">I Wayan Eka Sumariana Putra</td>\r\n<td style=\"width: 140px;\">Mumbul</td>\r\n<td style=\"width: 10px;\">21</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">42</td>\r\n<td style=\"width: 290px;\">I Komang Artana Yasa</td>\r\n<td style=\"width: 140px;\">Mumbul</td>\r\n<td style=\"width: 10px;\">21</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">43</td>\r\n<td style=\"width: 290px;\">I Nyoman Astawa, SH.,MM.,MH</td>\r\n<td style=\"width: 140px;\">Mumbul</td>\r\n<td style=\"width: 10px;\">22</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">44</td>\r\n<td style=\"width: 290px;\">I Gusti Bagus Raka Bismaya</td>\r\n<td style=\"width: 140px;\">Mumbul</td>\r\n<td style=\"width: 10px;\">22</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">45</td>\r\n<td style=\"width: 290px;\">I Wayan Tri Saraswajaya Kusuma</td>\r\n<td style=\"width: 140px;\">Mumbul</td>\r\n<td style=\"width: 10px;\">23</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">46</td>\r\n<td style=\"width: 290px;\">I Wayan Nukra</td>\r\n<td style=\"width: 140px;\">Mumbul</td>\r\n<td style=\"width: 10px;\">23</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">47</td>\r\n<td style=\"width: 290px;\">Agus Parwata</td>\r\n<td style=\"width: 140px;\">Ancak</td>\r\n<td style=\"width: 10px;\">24</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">48</td>\r\n<td style=\"width: 290px;\">I Wayan Darmaja</td>\r\n<td style=\"width: 140px;\">Ancak</td>\r\n<td style=\"width: 10px;\">24</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">49</td>\r\n<td style=\"width: 290px;\">I Gede Sucaya</td>\r\n<td style=\"width: 140px;\">Ancak</td>\r\n<td style=\"width: 10px;\">25</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">50</td>\r\n<td style=\"width: 290px;\">I Kadek Angga Aditya</td>\r\n<td style=\"width: 140px;\">Ancak</td>\r\n<td style=\"width: 10px;\">25</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">51</td>\r\n<td style=\"width: 290px;\">I Kadek Putrawan</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">26</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">52</td>\r\n<td style=\"width: 290px;\">Ni Komang Sri Somayani</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">26</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">53</td>\r\n<td style=\"width: 290px;\">I Wayan Suranata</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">27</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">54</td>\r\n<td style=\"width: 290px;\">I Ketut Diana</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">27</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">55</td>\r\n<td style=\"width: 290px;\">I Nyoman Mantra</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">56</td>\r\n<td style=\"width: 290px;\">Ni Putu Sudaryani</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">28</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">57</td>\r\n<td style=\"width: 290px;\">I Made Sumadya, ST</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">29</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">58</td>\r\n<td style=\"width: 290px;\">I Made Suka</td>\r\n<td style=\"width: 140px;\">Menesa</td>\r\n<td style=\"width: 10px;\">29</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">59</td>\r\n<td style=\"width: 290px;\">I Nyoman Mulyadi</td>\r\n<td style=\"width: 140px;\">Wisma Nusa Permai</td>\r\n<td style=\"width: 10px;\">30</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">60</td>\r\n<td style=\"width: 290px;\">Ni Wayan Leri</td>\r\n<td style=\"width: 140px;\">Permata Nusa Dua</td>\r\n<td style=\"width: 10px;\">31</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">61</td>\r\n<td style=\"width: 290px;\">Ni Putu Teguh Mukti Indraswari</td>\r\n<td style=\"width: 140px;\">Permata Nusa Dua</td>\r\n<td style=\"width: 10px;\">31</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">62</td>\r\n<td style=\"width: 290px;\">I Gusti Ketut Alit Widana</td>\r\n<td style=\"width: 140px;\">Bualu Indah</td>\r\n<td style=\"width: 10px;\">32</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 48px;\">63</td>\r\n<td style=\"width: 290px;\">I Nyoman Sudarta</td>\r\n<td style=\"width: 140px;\">Puri Nusa Dua</td>\r\n<td style=\"width: 10px;\">33</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>', 'B010-2018.jpg', 1517032800, 15, 1516973185, 15, 1516974112, 'y'),
('B011/2018', 'Inilah Juara LPM Benoa Junior Cup U-12', '<p><strong>Nusa Dua (28/01/2018)</strong>, <strong>LPM Benoa Junior Cup</strong> Kembali digelar setelah dintunda selama 1 minggu karena cuaca yg kurang bersahabat. Hari ini Pk.08.00-11.00 digelar lanjutan Turnament Babak perempat final, semifinal dan final untuk U-12 dan nanti pk.13.30-17.00 akan dilanjutkan untuk U-13. Untuk U-12 telah usai dipertandingkan dan keluar sebagai Sbb :&nbsp;</p>\r\n<ol>\r\n<li>Juara 1: SSB Putra Mumbul</li>\r\n<li>Juara 2 : SSB Bali United</li>\r\n<li>Juara 3 : SSB Putra Perkanti</li>\r\n<li>Juara 4 : SSB Mandala</li>\r\n<li>TOP Score : Widi (ssb Putra Mumbul)</li>\r\n</ol>\r\n<p>Pemenang Berhak atas Hadiah berupa Piala + Uang Pembinaan yang di serahkan Oleh Koordinator Pemuda &amp; Olahraga LPM Benoa <strong>I Wayan Suanjaya</strong>, Sekretaris LPM <strong>I Wayan Sata</strong>, Exco PSSI AsKab Badung <strong>I Nyoman Suasta </strong>dan Ketua LPM Kelurahan Benoa <strong>I Wayan Ambara Putra</strong></p>\r\n<p>Ketua LPM Benoa Memberikan selamat Kepada Pemenang &amp; Berterima kasih Kepada seluruh Peserta yang sudah berpartisipasi dalam Turnament Tersebut, Semoga Kami LPM Benoa dapat menyelenggarakan even-even Seperti ini setiap Tahunnya (<em>Admin</em>).</p>\r\n<p>&nbsp;</p>', 'B011-2018.JPG', 1517119200, 15, 1517112666, 15, 1517152699, 'y'),
('B012/2018', 'SSB Mandala United Juara LPM Benoa Junior Cup U-13', '<p><strong>Nusa Dua (28/01/2018)</strong>, LPM Benoa Junior Cup mempertemukan Tuan Rumah SSB Putra Mumbul dengan SSB Putra Mandala United Dalam Laga Final LPM Junior Cup U-13, SSB Putra Mumbul Melaju Ke Final Setelah Menaklukkan SSB Putra Kapal dengan Scor 1-0 dan SSB Mandala United Berhasil ke Final atas Kemenanga melawan SSB Putra Perkanti dengan Scor 4-0, pada babak Final Tersebut Score Imbang 0-0 dan dilanjutkan dengan adu <span data-offset-key=\"4ith9-0-0\">Penalty</span>. SSB Mandala United Nyaris unggul atas SSB Putra Mumbul di menit ke-8 saat pemain SSB Putra Mumbul Melakukan Pelanggaran yang berbuah <span data-offset-key=\"4ith9-0-0\">Penalty</span>, Namun sayang Tendangan Pinaltinya dapat di tepis oleh kiper namun<strong> SSB Mandala United</strong> Tetap Keuar sebagai Juara Turnament <strong>LPM Benoa Junior Cup</strong> setelah menang adu Pinalti (2-0) atas Lawannya SSB Putra Mumbul dan di posisi ketiga di raih oleh SSB Putra Kapal dan posisi keempat di raih Oleh SSB Putra Perkanti.</p>\r\n<p>Setelah Pertandingan Langsung di lakukan acara penutupan yang Ditandai dengan penyerahan Hadiah Kepada para pemenang. Hadiah Berupa Piala + Uang Pembinaan di serahkan Oleh Koordinator Pemuda &amp; Olahraga LPM Benoa <strong>I Wayan Suanjaya</strong>, Bendahara LPM <strong>I Gede Suyasa</strong>, Exco PSSI AsKab Badung <strong>I Nyoman Suasta</strong>, Ketua Panitia dan Ketua LPM Kelurahan Benoa <strong>I Wayan Ambara Putra. (admin)</strong></p>', 'B012-2018.jpg', 1517119200, 15, 1517152301, 15, 1517152581, 'y'),
('B025/2017', 'Penutupan Lokalisasi di Wilayah Kelurahan Benoa', '<p><strong>Benoa, </strong>Pemeritah Kabupaten Badung berdasarkan Perda Nomor 7 tahun 2016 menutup lokalisasi prostitusi di Jalan Teges Nunggal, By Pass Ngurah Rai, Kuta Selatan yang sering di sebut NARKI dan Yang berada di Aseman yang dikenal dengan Nama TURKI pada tanggal 19 Desember 2017.</p>\r\n<p>Pada saat penyegelan di pimpin langsung oleh Bupati Badung <strong>I Nyoman Giri Prasta, S.sos</strong> dan di dampingi oleh Wakil Bupati, Wakapolresta, KasatpolPP kab.Badung<strong> IGKA Surya Negara</strong>, Camat Kuta Selatan, Kapolsek Kuta Selatan, Danramil Kutsel, Lurah Benoa, Ketua &amp; Anggota LPM Kel.Benoa, Bendesa Adat Bualu &amp; Prajuru Desa, Kepala Lingkungan Bualu dan tokok Masyarakat Benoa. Hadir pada kesempatan tersebut Ketua Komisi II DPRD Kab. badung Bapak Luwir Wiana dan Anggota Komisi DPRD Kab. Badung Bpk. Made Reta. Serta diikuti oleh Pecalang Desa Adat, Linmas dan aparat dari unsul TNI &amp; POLRI.</p>\r\n<p>Terdapat 52 wisma yang selama ini melakukan praktek Protitusi yang disegel pada hari itu dan dinyatakan Tidak boleh beroperasi, jika membandel akan dikenakan Sanksi Tegas.</p>\r\n<p>Pada kesempatan tersebut Bupati Badun Menyatakan \"Dasar Hukum kita jelas Perda tentang Ketertiban Umum, oleh karena itulah kami lakukan secara tegas, karena wibawa pemerintah itu ada di Satpol PP dalam penegakan Perda. Kaitannya dengan lokalisasi ini, kami tidak mau warga Badung bertambah-bertambah kasus HIV dan AIDS-nya\" , Bupati Badung Juga Mengatakan \"Jangan sampai penyegelan ini mengganggu Kehidupan sosial kemasyarakatan, Penutupan ini murni kebijakan Bupati Badung, dan Saya Berharap Mulai Hari ini Jangan melakukan praktek Prostitusi lagi, kepada masyarakat saya yang meningkatkan perekonomian dari sini, Sayan Akan Membantu paling tidak mencari izin usahan untuk aktifitas bisnis, asal tidak ada lagi kegiatan prostitusi\".</p>\r\n<p>Ketua LPM Benoa, <strong>I Wayan Ambara Putra</strong> Mengatakan Kami LPM Sangat Mendukung Program Bapak Bupati, dan Kami LPM mengikuti seluruh proses penutupan ini, dan selalu berkoordinasi dengan ketua Tim Yustisi. Berbagai Tahapan Tahapan sudah dilalui diantanya :</p>\r\n<ol>\r\n<li>Tahap Sosialisasi dengan Dinas Sosial, KPA, Kapolsek, Camat, Lurah, LPM, Bendesa, kelian adat, Kepala Lingkungan, dan Tokoh Masyarakat Benoa</li>\r\n<li>Sosialisasi Kepada Pemilik lahan, Pemilik Wisma, dan Pekerja yang ada di TURKI &amp; NARKI</li>\r\n<li>Memberikan Surat Peringatan Kepada para pemilik Wisma yang di lakukan oleh tim penyidik Pol PP kab.Badung</li>\r\n</ol>\r\n<p>Proses yang dilakukan sudah sesuai dengan SOP seperti apa yang di sampaikan oleh bapak Bupati Badung<strong> Nyoman Giri Prasta</strong>. LPM Benoa Berharap Pasca Ditutupnya kedua Tempat Lokalisasi ini Kedepan tidak akan Tumbuh Lagi atau bahkan akan muncul tempat-tempat bari, sehingga perlu partispasi masyarakat dan seluruh pihak untuk ikut mengawasinya. (<strong>admin</strong>)</p>\r\n<p>&nbsp;</p>', 'B025-2017.jpg', 1513663200, 1, 1513823721, 15, 1515212545, 'y'),
('B026/2017', 'Pelatihan Anggota paguyuban dan koperasi taksi', '<p><strong>Benoa</strong>, Indonesia Tourism Development (ITDC) Memberikan Pembinaan Kepada para pedagang dan sopir taksi kawasan ITDC Nusa Dua agar memiliki Keterampilan dan kesadaran akan Pelayanan Yang Baik dan service axcellen Kepada Para Wisatawan. Pelatihan bertemakan \"Refreshment Job Motivation Tourism is our Life dan standardisasi armada serta pelayanan taxi.</p>\r\n<p>Pelatihan ini akan berlangsung dari tanggal 11 &ndash; 20 Desember 2017 di Wantilan The Nusa Dua. Peserta Kegiatan ini akan melibatkan sekitar 900 orang yang berasal 8 Paguyuban Pedagang Pantai sebabyak 422 orang dan 492 peserta dari 3 unit Usaha Transport (Koptax, Kowinu dan Dwi Nusa).</p>\r\n<p>Sebelumnya IDTC Telah Berkoordinasi dengan Lurah Benoa <strong>Drs. I Wayan Solo,M.Si</strong> Bendesa Adat Bualu, Bendesa Adat Kampial, Bendesa Adat Peminge dan Ketua LPm Benoa <strong>I Wayan Ambara Putra</strong>&nbsp; untuk Melakukan Kegiatan Tersebut. dalam rakor tersebut Ketua LPM sangat Memberikan apresiasi terkait kegiatan tersebut dan di harapkan kedepan kegiatan seperti ini lebih di tingkatkan guna menunjang Citra Positif Pariwisata di Nusa Dua, Termasuk Pelatihan Skill secara mendalam semisal kepada warga yang ada di paguyuban Massage, bagaimana cara memberikan kesan baik baik dari segi Hospitality, teknik massage, kebersihan,dll.</p>\r\n<p>Hal senada juga di sampaikan oleh bapak Lurah Benoa dan bendesa adat, intinya kami berterima kasih peda ITDC sudah membantu warga masyarakat kami yang mencari nafkah di Kawasan ITDC Nusa Dua. LPM Benoa di wakilkan Oleh Sekretaris II <strong>Made Muliasa, S.T </strong>menyampaikan kepada Pihak Management ITDC untuk memberikan Juga Pelatihan Kertkait Penanganan Bencana Dini atau kesehatan dan keselamatan kerja dan lingkungan hidup (K3LH). Ini Penting karena Pariwisata Identik Dengan Pemberian Pelayanan Kesenangan, kenikmatan dan Kenyaman, sehingga Sudah tentu setiap aktifitas tersebut akan ada resiko resiko Kecelakaan/Bencana yang akan terjadi.&nbsp;</p>\r\n<p>Narasumber akan dihadirkan diantaranya Drs. I.GN. Wiantara,MBA.MM professional Motivator dan Trainer yang akan memberikan materi refreshment Job Motivation dengan tema &ldquo; Tourism is Our Live&rdquo;. Narasumber Lainya dari&nbsp; Dinas Perhubungan Propinsi Bali, Dari Lurah/LPM/Desa Adat, dan dari beberapa Hotel Yang ada di Kawasan. (<strong>Admin</strong>)</p>', 'B026-2017.jpg', 1512972000, 1, 1513825994, 15, 1515212504, 'y'),
('B027/2017', 'Pengamanan Misa Malam Natal 2017', '<p><strong>Benoa(24/12/17/)</strong>Menyambut Malam Natal dan Tahun Baru Kelurahan Benoa Sudah siap siaga dalam hal pengamanan, Koordinasi sudah dilaksanakan baik tingkat kabupaten hingga kelurahan. Besama Kapolsek, Danramil, Babinsa, BabinKamtibmas, Linmas &amp; Pecalang2 Desa Adat sudah siap dengan personil masing-masing. pada hari ini Kolaborasi tersebut membantu megamankan malam Misa di Gereja Bukit Doa &amp; Gereja Katolik Bunda Maria Ouja Mandala Kelurahan Benoa.</p>\r\n<p>Malam Misa yang di hadiri oleh Bapak Wakil Bupati Badung di dampingi Tripika Kecamatan (Kapolsek, Danramil &amp; Camat) Merupakan Betuk Toleransi Umat Beragama, Toleransi Umat penting untuk di tingkatkan dan di pertahankan. mengingat area Pujamandala terdapat 5 bangunan Suci tempat Umah beribadah yaitu Pura, gereja katolik, gereja protestan, Wihara &amp; masjid.</p>\r\n<p>LPM kelurahan Benoa berkomitment untuk menjalakan Fungi dan Tugasnya untuk mengamankan mendukung Kegiatan pengamanan kegiatan-kegiatan keagamaan terutama Malam Natal dan Malam Penyambutan Tahun baru. Dalam kesempatan Tersebut Koordinator Seksi Keamanan &amp; Ketertiban LPM Benoa yang juga sebagai Danru Pol.PPKec. Kuta Selatan <strong>I Wayan Suhariana, S.H </strong>ikut didalam PAM Pegamanan dan juga Patroli Wilayah.</p>\r\n<p>Ketua LPM Benoa <strong>I Wayan Ambara Putra, S.T</strong> Menegaskan Patroli di Wilayah Kelurahan Penting Untuk Mengawasi &amp; Mengamankan Perayaan Natal Dan Tahun Baru mengingat Masyarakat benoa yang Heterogen dan Banyaknya wisatawan yang sedang berlibur di Nusa Dua. Keamanan di Kelurahan Benoa Menjadi Tanggung jawab kita Bersama Baik masyarakat, Desa Adat, Pecalang, Linmas, Babinsa dan Babinkamtibmas dan Tokoh Masyarakat. Sehingga Kolaborasi dan koordinasi Seluruh Pihak Harus tetap dilakukan. Dalam Kesempatan tersebut LPM Kelurahan Benoa memberika Apresiasi kepada para Linmas dengan Tulus mengabdi untuk ikut serta dalam Patroli dan PAM pengamanan Natal dan Tahun Baru. <strong>(admin) </strong></p>\r\n<p>&nbsp;</p>', 'B027-2017.JPG', 1514095200, 1, 1514119104, 15, 1515212459, 'y'),
('B028/2017', 'Hasil Rakor Gereja Di Wilayah Kel. Benoa Kegiatan NATARU', '<p><strong>Benoa,</strong> Hasil Koordinasi Dengan Pengurus Gereja Wilayah Kel.Benoa terkait Perayaan Natal dan Tahun Baru:</p>\r\n<ul>\r\n<li><strong>GEREJA ROCK NUSA COMPATION SENTER</strong> JLN BAY PASS NGURAH RAI GIAT SBB&nbsp;\r\n<ul>\r\n<li>Minggu 31/12/2017 pukul : 10.00 wta jumblah jemat : 600 org.</li>\r\n</ul>\r\n</li>\r\n<li><strong>GEREJA BETAEL PEMBAHARUAN INDONESIA ( GBPI )</strong> JALAN NEGES NUNGGAL BR BUALU KEL BENOA. GIAT SBB&nbsp;\r\n<ul>\r\n<li>Minggu tanggal : 31/12/2017 pukul : 22.00 wta. jumblah jemat : 200 org.</li>\r\n</ul>\r\n</li>\r\n<li><strong>GEREJA KATOLIK BUNDA MARIA SEGALA BANGSA</strong> JALAN KURU SETRA BR BUALU. KEL BENOA. GIAT SBB&nbsp;\r\n<ul>\r\n<li>minggu 24/12/2017 missa malam Natal pukul : 19.00 wta. jumblah jemat : 1.500. org.</li>\r\n<li>&lrm;Senin 25/12/2017 missa Natal pagi pukul : 08.00 wta. jumblah jemat : 2.500 org.</li>\r\n<li>senin 25/12/2017 missa Natal sore pukul : 18.00 wta jumblah jemat : 1.500 org.&nbsp;</li>\r\n<li>&lrm;Sabtu tanggal : 30/12/2017 pukul : 18.00 wta jumblah jemat 1.500 org.&nbsp;</li>\r\n<li>&lrm;Minggu tanggal : 31/12/2017. missa pesta kudus pukul : 09.00 wta jumblah jemat 1.500 wta.</li>\r\n<li>Senin tanggal : 01/1/2018 missa tahun baru pukul : 09.00 wta. jumblah jemat : 1.500. org.&nbsp;</li>\r\n</ul>\r\n</li>\r\n<li><strong>GEREJA PROTESTAN BUKIT DOA PUJA MANDALA</strong> JLN KURU SETRA BR BUALU GIAT SBB : &lrm;\r\n<ul>\r\n<li>minggu tanggal : 17/12/2017 pukul : 17.00 wta jumblah jemat : 700 orang. &lrm; pendeta kadek Mastra.ten veen Se. m div.&nbsp;</li>\r\n<li>Minggu tanggal : 24/12/2017. pukul : 19.00 wta pendeta sama jumblah jemat : 900 org. &lrm;</li>\r\n<li>Senin 25/12/2017 pukul : 08.00 wta jumblah jemat : 1.500 org.&nbsp;</li>\r\n<li>minggu 31/12/2017 pukul : 18.00 wta. jumblah jemat 1500. org. &lrm;</li>\r\n<li>Senin tanggal : 01/1/2018 pukul : 18.00 wta jumblah jemat 700. org.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><strong>Sumber : Babinsa Kelurahan Benoa</strong></p>', 'B028-2017.JPG', 1513922400, 1, 1514119508, 15, 1515724948, 'y'),
('B031/2017', 'Perpanjangan SIM Keliling Bulan Januari', '<p><strong>Denpasar</strong>, Polresta Denpasar Kembali menggelar <strong>Perpanjanagn SIM Keliling</strong> di beberapa titik di wilayah Denpasar &amp; Badung. Gua memudahkan Masyarakat Untuk Melakukan Perpanjangan. untuk <strong>Kelurahan Benoa</strong> akan di laksanakan di Pasar Central (Depan Kantor Lurah Benoa) pada tanggal 26 januari 2018 Pk. 09.00-selesai.</p>\r\n<p>AdapunPersyaratan untuk dapat melakukan perpanjangan adalah :</p>\r\n<ol>\r\n<li>Membawa KTP</li>\r\n<li>Surat Keteranga Sehat</li>\r\n<li>Membawa SIM Asli yang akan Diperpanjang (Belum Lewat Masa berlakunya)</li>\r\n</ol>\r\n<p>Masyarakat Yang ingin melakukan Perpanjangan silahkan Mendatangi Titik Titik Lokasi sesuai Jadwal yang telah di tetapkan. <strong>(admin)</strong></p>', 'B031-2017.jpg', 1514008800, 1, 1514171035, 1, 1514171035, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `z_instansi`
--

CREATE TABLE `z_instansi` (
  `ins_id` varchar(4) NOT NULL,
  `ins_nama` varchar(255) NOT NULL,
  `ins_alamat` text NOT NULL,
  `ins_telp` varchar(12) NOT NULL,
  `ins_email` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `ins_status` enum('y','n','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_instansi`
--

INSERT INTO `z_instansi` (`ins_id`, `ins_nama`, `ins_alamat`, `ins_telp`, `ins_email`, `created_by`, `created_at`, `updated_by`, `updated_at`, `ins_status`) VALUES
('I001', 'Lingkungan Balekembar', 'Lingkungan Bale Kembar', '081337716622', 'balekembar@gmail.com', 8, 1513898948, 15, 1515235408, 'y'),
('I002', 'Lingkungan Bualu', 'Lingkungan Bualu', '081936093698', 'bualu@gmail.com', 8, 1513900798, 15, 1515235521, 'y'),
('I003', 'Lingkungan Terora', 'Lingkungan Terora', '085100405425', 'terora@gmail.com', 1, 1514085499, 15, 1515235564, 'y'),
('I004', 'Lingkungan Celuk', 'Lingkungan Celuk', '089692469522', 'celuk@gmail.com', 1, 1514989168, 15, 1515235590, 'y'),
('I005', 'Lingkungan Peken', 'Lingkungan Peken', '082247345188', 'peken@gmail.com', 15, 1515235738, 15, 1515235738, 'y'),
('I006', 'Lingkungan Penyarikan', 'Lingkungan Penyarikan', '081237544416', 'penyarikan@gmail.com', 15, 1515235823, 15, 1515235823, 'y'),
('I007', 'Lingkungan Peminge', 'Lingkungan Peminge\r\n', '081999175818', 'peminge@gmail.com', 15, 1515236242, 15, 1515236242, 'y'),
('I008', 'Lingkungan Sawangan', 'Lingkungan Sawangan\r\n', '082145083531', 'sawangan@gmail.com', 15, 1515236359, 15, 1515236359, 'y'),
('I009', 'Lingkungan Pande', 'Lingkungan Pande', '081339194222', 'pande@gmail.com', 15, 1515236478, 15, 1515236478, 'y'),
('I010', 'Lingkungan Ancak', 'Lingkungan Ancak\r\n', '081337653635', 'ancak@gmail.com', 15, 1515236599, 15, 1515236599, 'y'),
('I011', 'Lingkungan Menesa', 'Lingkungan Menesa\r\n', '081338296930', 'menesa@gmail.com', 15, 1515236694, 15, 1515236694, 'y'),
('I012', 'Lingkungan Mumbul', 'Lingkungan Mumbul\r\n', '082144347777', 'mumbul@gmail.com', 15, 1515236824, 15, 1515236824, 'y'),
('I013', 'Lingkungan Puri Nusa Dua', 'Lingkungan Puri Nusa Dua\r\n', '081338182037', 'puri@gmail.com', 15, 1515237042, 15, 1515237042, 'y'),
('I014', 'Lingkungan Bualu Indah', 'Lingkungan Bualu Indah\r\n', '08123812681', 'bualuindah@gmail.com', 15, 1515237125, 15, 1515237125, 'y'),
('I015', 'Lingkungan Permata Nusa Dua', 'Lingkungan Permata Nusa Dua\r\n', '08123981031', 'permata@gmail.com', 15, 1515237275, 15, 1515237275, 'y'),
('I016', 'Lingkungan Wisma Nusa Permai', 'Lingkungan Wisma Nusa Permai\r\n', '08123624344', 'wisma@gmail.com', 15, 1515237370, 15, 1515237370, 'y'),
('I017', 'Puskesmas', 'Kuta Selatan \r\n', '082144364888', 'benoa@gmail.com', 15, 1515237501, 15, 1516695123, 'y'),
('I018', 'LPM Kel.Benoa', 'Kelurahan Benoa', '081236852851', 'ambara77@gmail.com', 15, 1515283619, 15, 1515283619, 'y'),
('I019', 'SD Negeri 1 Benoa', 'Jalan By Pass Ngurah Rai Nusa dua', '081338727459', 'sdn1@gmail.com', 15, 1515418324, 15, 1515418324, 'y'),
('I020', 'SD Negeri 2 Benoa', 'Jln. Celagi Nunggal, Sawangan', '081337100108', 'sdn2@gmail.com', 15, 1515418547, 15, 1515418547, 'y'),
('I021', 'SD Negeri 3 Benoa', 'Jln. Pura Dukuh kampial', '085739900338', 'sdn3@gmail.com', 15, 1515418827, 15, 1515418827, 'y'),
('I022', 'SD Negeri 4 Benoa', 'Jln. Taman Siswa No.4 Mumbul', '0361-7083553', 'sdn4@gmail.com', 15, 1515418908, 15, 1515418908, 'y'),
('I023', 'SD Negeri 5 Benoa', 'Jln. Calonarang', '081338610745', 'sdn5@gmail.com', 15, 1515418976, 15, 1515418976, 'y'),
('I024', 'SD Negeri 6 Benoa', 'Jln. Pratama Gg. Pendidikan', '087860156775', 'sdn6@gmail.com', 15, 1515419074, 15, 1515419074, 'y'),
('I025', 'SD Negeri 7 Benoa', 'Jln. Praja Sentral benoa', '0361-774479', 'sdn7@gmail.com', 15, 1515419143, 15, 1515419143, 'y'),
('I026', 'SD Negeri 8 Benoa', 'Jln. Ayodya No.10 Nusa Dua', '0361-7402460', 'sdn8@gmail.com', 15, 1515419210, 15, 1515419210, 'y'),
('I027', 'SD Negeri 9 Benoa', 'Jln. Taman Werdi Mumbul', '08123632454', 'sdn9@gmail.com', 15, 1515419289, 15, 1515419289, 'y'),
('I028', 'SD Nusa Dua', 'Jln. Taman Mahardika No.4', '0361-7803420', 'sdnusadua@gmail.com', 15, 1515419588, 15, 1515419588, 'y'),
('I029', 'SD Tunas Kasih', 'Jln. Bypass Ngurah Rai Nusa Dua', '0361-774773', 'sdtunaskasih@gmail.com', 15, 1515419680, 15, 1515419680, 'y'),
('I030', 'SD Baitul Amin', 'Puja Mandala', '082341343449', 'sdbaitulamin@gmail.com', 15, 1515419749, 15, 1515419749, 'y'),
('I031', 'SD Bintang Timur', 'Jln. Kuruksetra', '0361-2151883', 'sdbintangtimur@gmail.com', 15, 1515419809, 15, 1515419809, 'y'),
('I032', 'SMPN 4 Kuta Selatan', 'Jln. Pasar Sentral Benoa', '0361-774969', 'smp4@gmail.com', 15, 1515420716, 15, 1515420716, 'y'),
('I033', 'SMP Nusa Dua', 'Jln. Taman Mahardika No.4 Nusa Dua', '0361770347', 'smpnusadua@gmail.com', 15, 1515420795, 15, 1515420795, 'y'),
('I034', 'SMP Dwijendra Bualu', 'By Pass Ngurah Rai', '0361773886', 'dwijendrabualu@gmail.com', 15, 1515420845, 15, 1515420845, 'y'),
('I035', 'SMA Dwijendra Bualu', 'By Pass Ngurah Rai Nusa Dua', '0361777110', 'smadwijendrabualu@gmail.com', 15, 1515420961, 15, 1515420961, 'y'),
('I036', 'SMKN 1 Kuta Selatan', 'Jln Gedong Sari', '0361747340', 'smkn1kutsel@gmail.com', 15, 1515420999, 15, 1515420999, 'y'),
('I037', 'SMK Kesehatan Gana Usada', 'By Pass Nusa Dua', '081805500154', 'smkkesgana@gmail.com', 15, 1515421099, 15, 1515421099, 'y'),
('I038', 'SMK Nusa Dua', 'By Pass Nusa Dua', '081805500154', 'smknusadua@gmail.com', 15, 1515421155, 15, 1515421155, 'y'),
('I039', 'PKK Kelurahan Benoa', 'Kelurahan Benoa', '0361', 'pkk@lpmbenoa.org', 15, 1515723200, 15, 1515723200, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `z_kaling`
--

CREATE TABLE `z_kaling` (
  `uk_id` varchar(5) NOT NULL,
  `uk_nama` varchar(50) NOT NULL,
  `ins_id` varchar(4) NOT NULL,
  `uk_email` varchar(50) NOT NULL,
  `uk_alamat` text NOT NULL,
  `uk_telp` varchar(12) NOT NULL,
  `uk_jk` enum('l','p','','') NOT NULL,
  `uk_tgl_lahir` int(11) DEFAULT NULL,
  `uk_tempat_lahir` varchar(30) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_kaling`
--

INSERT INTO `z_kaling` (`uk_id`, `uk_nama`, `ins_id`, `uk_email`, `uk_alamat`, `uk_telp`, `uk_jk`, `uk_tgl_lahir`, `uk_tempat_lahir`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('K0009', 'I Wayan Mampu', 'I004', 'a@A.com', 'Lingkungan Celuk', '089692469522', 'l', 318578400, 'Badung', 1, 1515077453, 15, 1515236041),
('K0010', 'Made Sura Wijaya', 'I005', 'peken@gmail.com', 'Lingkungan Peken', '082247345188', 'l', 1514786400, 'Badung', 15, 1515236102, 15, 1515236102),
('K0011', 'I Nyoman Sueta', 'I006', 'penyarikan@gmail.com', 'Lingkungan Penyarikan', '081237544416', 'l', 1514786400, 'Badung', 15, 1515236155, 15, 1515236155),
('K0012', 'I Wayan Rigih', 'I007', 'peminge@gmail.com', 'Lingkungan Peminge', '081999175818', 'l', 1514786400, 'Badung', 15, 1515236294, 15, 1515236294),
('K0013', 'Jabud', 'I008', 'sawangan@gmail.com', 'Lingkungan Sawangan', '082145083531', 'l', 1514786400, 'Badung', 15, 1515236407, 15, 1515236407),
('K0014', 'Ketut Dendi', 'I009', 'pande@gmail.com', 'Lingkungan Pande', '081339194222', 'l', 1514786400, 'Badung', 15, 1515236516, 15, 1515236516),
('K0015', 'Drs. I Nyoman Sudiarta', 'I010', 'ancak@gmail.com', 'Lingkungan Ancak', '081337653635', 'l', -113598000, 'Badung', 15, 1515236639, 21, 1515981323),
('K0016', 'Wayan Loka Astina', 'I011', 'menesa@gmail.com', 'Lingkungan Menesa', '081338296930', 'l', 1514786400, 'Badung', 15, 1515236747, 15, 1515236747),
('K0017', 'I Nyoman Astawa', 'I012', 'mumbul@gmail.com', 'Lingkungan Mumbul', '082144347777', 'l', 1514786400, 'Badung', 15, 1515236864, 15, 1515236864),
('K0018', 'Sudiarta', 'I013', 'puri@gmail.com', 'Lingkungan Puri Nusa Dua', '081338182037', 'l', 1514786400, 'Badung', 15, 1515237088, 15, 1515237088),
('K0019', 'I Nyoman Abdi Putra, SE', 'I014', 'bualuindah@gmail.com', 'Lingkungan Bualu Indah C.14', '08123812681', 'l', 361170000, 'Denpasar', 15, 1515237183, 25, 1515724646),
('K0020', 'Leri', 'I015', 'permata@gmail.com', 'Lingkungan Permata Nusa Dua', '08123981031', 'p', 1514786400, 'Badung', 15, 1515237319, 15, 1515237319),
('K0021', 'I Wayan Nalo', 'I016', 'wisma@gmail.com', 'Lingkungan Wisma Nusa Permai', '08123624344', 'l', 1514786400, 'Badung', 15, 1515237410, 15, 1515237410),
('K0022', 'I Wayan Solo', 'I017', 'benoa@gmail.com', 'Lingkungan kelurahan benoa', '082144364888', 'l', 1514786400, 'Badung', 15, 1515237542, 15, 1515237542),
('K0023', 'I Nyoman Surya Artha', 'I001', 'kopijaribesar@gmail.com', 'jl Kuruksetra \r\nLingkungan Balekembar', '081337716622', 'l', 280303200, 'Badung', 15, 1515237701, 29, 1515637545),
('K0024', 'Ketut Suata', 'I003', 'suata@gmail.com', 'Lingkungan Terora', '085100405425', 'l', 1514786400, 'Badung', 15, 1515237755, 15, 1515238203),
('K0025', 'I Nyoman Kariana Wirawan', 'I002', 'bualu@gmail.com', 'Lingkungan Bualu', '081936093698', 'l', 1514786400, 'Badung', 15, 1515237813, 15, 1515237813),
('K0026', 'insLPM', 'I017', 'insedit@lpmbenoa.com', 'benoa', '0361', 'l', 1514786400, 'benoa', 15, 1515275101, 34, 1515275205),
('K0027', 'I Wayan Ambara Putra', 'I018', 'ambara77@gmail.com', 'Jln.Pratama Gang. Ksatria No.4A Nusa Dua', '081236852851', 'l', 466491600, 'Badung', 15, 1515283787, 35, 1515667119),
('K0028', 'I Wayan Wirayasa, Spd', 'I019', 'wyn@gmail.com', 'Jln. Bypass Ngurah Rai Nusa Dua', '081338727459', 'l', 1515477600, 'Badung', 15, 1515418454, 15, 1515418454),
('K0029', 'I Ketut Kadiasa, S.pd', 'I020', 'sdn2@gmail.com', 'Jln. Celagi Nunggal', '081338100108', 'l', 1515564000, 'Badung', 15, 1515418721, 15, 1515418721),
('K0030', 'I Made Landep Astawa, S.Pd', 'I021', 'sdn3@gmail.com', 'Jln.Pura Dukuh Kampial', '085739900338', 'l', 1515477600, 'Badung', 15, 1515420120, 15, 1515420120),
('K0031', 'I Nyoman Suasta, S.Pd', 'I022', 'sdn4@gmail.com', 'Benoa', '081024690973', 'l', 1515477600, 'Badung', 15, 1515420189, 15, 1515420189),
('K0032', 'I Made Gede Aryawa, S.pd,SD', 'I023', 'sdn5@gmail.com', 'Benoa', '081338610745', 'l', 1515477600, 'Badung', 15, 1515420314, 15, 1515420314),
('K0033', 'I Nyoman Ardika, S.Ag', 'I024', 'sdn6@gmail.com', 'Gang. Pendidikan', '087860156775', 'l', 1515477600, 'Badung', 15, 1515420401, 15, 1515420401),
('K0034', 'I Ketut Deresta, S.Ag', 'I025', 'sdn7@gmail.com', 'Benoa', '081338674861', 'l', 1515477600, 'Badung', 15, 1515420494, 15, 1515420494),
('K0035', 'I Bagus Nyoman Wedana, S.Pd', 'I026', 'sdn8@gmail.com', 'Jln. Ayodya No.10 Nusa Dua', '0361-7402460', 'l', 1515477600, 'Badung', 15, 1515420596, 15, 1515420596),
('K0036', 'I Nyoman Mertha, S.Pd', 'I027', 'mertha1959nyoman@gmail.com', 'Jl. Taman Werdi, Lingkungan Mumbul', '085935235365', 'l', -328129200, 'Badung', 15, 1515420665, 44, 1515812245),
('K0037', 'Drs. Wayan Suriani', 'I028', 'sdnusadua@gmail.com', 'Benoa', '085935348243', 'p', 1515477600, 'Badung', 15, 1515420927, 15, 1515420927),
('K0038', 'Noldy C. Walangitan, S.E', 'I029', 'sdtunaskasih@gmail.com', 'Benoa', '0818551689', 'l', 1515477600, 'Badung', 15, 1515420999, 15, 1515420999),
('K0039', 'Enik Giyanti', 'I030', 'sdbaitulamin@gmail.com', 'Benoa', '082341343449', 'l', 1515477600, 'Badung', 15, 1515421065, 15, 1515421065),
('K0040', 'Drs. I Wayan Tur Adnyana, MM', 'I032', 'smp4kutsel@gmail.com', 'Jln. Pasar Sentral Benoa', '08123900819', 'l', 1514786400, 'Badung', 15, 1515421253, 15, 1515421253),
('K0041', 'I Wyn. Korna, A.MA.PAR, S.Pd, M.Pd', 'I033', 'smpnusadua@gmail.com', 'Jln. Taman Mahardika No.4 Nusa Dua', '0361770347', 'l', 1514786400, 'Badung', 15, 1515421362, 15, 1515421362),
('K0042', 'Drs. I Gede Suwirta', 'I034', 'dwijendrabualu@gmail.com', 'By Pass Ngurah Rai', '08124683948', 'l', 1514786400, 'Badung', 15, 1515421429, 15, 1515421429),
('K0043', 'Ir. I Wayan Wita', 'I035', 'smadwijendrabualu@gmail.com', 'By Pass Ngurah Rai Nusa Dua', '0361777110', 'l', 1514786400, 'Badung', 15, 1515421490, 15, 1515421490),
('K0044', 'I Nyoman Astawa, SH', 'I037', 'smkkesgana@gmail.com', 'By Pass Nusa Dua', '081805500154', 'l', 1514786400, 'Badung', 15, 1515421546, 15, 1515421648),
('K0045', 'Drs. I Nyoman Suparta, M.Pd', 'I036', 'smkn1kutsel@gmail.com', 'Jln Gedong Sari', '0361747340', 'l', 1514786400, 'Badung', 15, 1515421694, 15, 1515421694),
('K0046', 'Drs. I Wayan Dayung, S.H, M.Si', 'I038', 'smknusadua@gmail.com', 'By Pass Nusa Dua', '081805500154', 'l', 1514786400, 'Badung', 15, 1515421764, 15, 1515421764),
('K0047', 'Ibu Lurah', 'I039', 'pkk@lpmbenoa.org', 'Kelurahan Benoa', '0361', 'p', 1515564000, 'Badung', 15, 1515723331, 15, 1515723331);

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

-- --------------------------------------------------------

--
-- Table structure for table `z_musrenbang`
--

CREATE TABLE `z_musrenbang` (
  `m_id` varchar(9) NOT NULL,
  `mk_id` varchar(4) NOT NULL,
  `ins_id` varchar(4) NOT NULL,
  `m_kegiatan` varchar(255) NOT NULL,
  `m_location` varchar(100) NOT NULL,
  `m_sifat` enum('baru','lanjutan','rehab','perluasan') NOT NULL,
  `m_volume` varchar(50) DEFAULT NULL,
  `m_biaya` bigint(12) NOT NULL,
  `m_tahun` varchar(10) DEFAULT NULL,
  `m_prioritas` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20') DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `m_status` enum('y','n','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_musrenbang`
--

INSERT INTO `z_musrenbang` (`m_id`, `mk_id`, `ins_id`, `m_kegiatan`, `m_location`, `m_sifat`, `m_volume`, `m_biaya`, `m_tahun`, `m_prioritas`, `created_by`, `created_at`, `updated_by`, `updated_at`, `m_status`) VALUES
('M017/2018', 'MK06', 'I018', 'Pembuatan Tanggul & Pintu Jalur Air untuk penanggulangan Banjir ROB', 'Loloan Bidadari', 'baru', '150m2', 200000000, '2018', '', 35, 1515283965, 15, 1515451255, 'y'),
('M018/2018', 'MK06', 'I018', 'Pembangunan Parkir Puja Mandala', 'Jln. Kuruksetra', 'baru', '5480m2', 2393000000, '2018', '', 35, 1515284195, 15, 1515451317, 'y'),
('M019/2018', 'MK07', 'I018', 'Kegiatan Nusa Dua Culture Festival', 'Lapangan Lagoon', 'baru', '1 paket', 1200000000, '2018', '', 35, 1515284497, 15, 1515451240, 'y'),
('M020/2018', 'MK07', 'I018', 'Kegiatan Karya Bakti & gotong Royong LPM Benoa', 'Keluarahan Benoa', 'baru', '1 paket', 200000000, '2018', '', 35, 1515284615, 15, 1515451183, 'y'),
('M021/2018', 'MK05', 'I018', 'Pelatihan & Workshop E-Bussiness UKM', 'Kelurahan Benoa', 'baru', '50 orang', 50000000, '2018', '', 35, 1515284760, 15, 1515451110, 'y'),
('M022/2018', 'MK05', 'I018', 'Pengadaan Bursa kerja  atau Nusa Dua Job Fair', 'Kelurahan Benoa', 'baru', '1 paket', 150000000, '2018', '', 35, 1515284948, 15, 1515451084, 'y'),
('M023/2018', 'MK04', 'I018', ' Bantuan Usaha Ekonomi Produktif Paguyuban Ternak (Pakan Ternak & Pengelolaan Limbah)', 'Kelurahan Benoa', 'baru', '20 orang', 200000000, '2018', '', 35, 1515285705, 15, 1515451038, 'y'),
('M024/2018', 'MK04', 'I018', 'Bantuan Usaha Ekonomi Produktif Paguyuban Pedagang Pantai ', 'Kelurahan Benoa', 'baru', '15 paguyuban', 300000000, '2018', '', 35, 1515285781, 15, 1515450745, 'y'),
('M025/2018', 'MK04', 'I018', 'Bantuan usaha ekonomi produktif (UEP) kepada keluarga rumah tangga miskin', 'Kelurahan Benoa', 'baru', '2 Kepala keluarga', 120000000, '2018', '', 35, 1515286023, 15, 1515451059, 'y'),
('M027/2018', 'MK04', 'I018', 'Penanaman Terumbu Karang', 'Pantai Nusa Dua', 'baru', '1 paket', 250000000, '2018', '', 35, 1515286549, 15, 1515450628, 'y'),
('M028/2018', 'MK06', 'I018', 'Perlengkapan Fasilitas Wantilan LPM Benoa (Sound & LCD Projector)', 'Wantilan LPM Kelurahan Benoa', 'baru', '1 paket', 50000000, '2018', '', 35, 1515330691, 15, 1515450964, 'y'),
('M029/2018', 'MK06', 'I018', 'Pengadaan Alat Pemadam Kebakaran di Sekolah, Banjar, Kantor Desa &  Kantor Lurah ', 'Kelurahan Benoa', 'baru', '100 unit', 100000000, '2018', '', 35, 1515331780, 15, 1515451206, 'y'),
('M030/2018', 'MK05', 'I018', 'Pembuatan Seragam PDL Anggota LPM Kelurahan Benoa', 'Kelurahan Benoa', 'baru', '30', 30000000, '2018', '', 35, 1515331934, 15, 1515450986, 'y'),
('M031/2018', 'MK07', 'I018', 'Perbaikan Gamelan Gong LPM', 'Kelurahan Benoa', 'rehab', '1 paket', 50000000, '2018', NULL, 35, 1515331997, 35, 1515544771, 'y'),
('M032/2018', 'MK05', 'I018', 'Kegiatan Turnament Sepak bola LPM Junior Cup U-12 & U-13', 'Lapangan Lagoon', 'baru', '1 paket', 60000000, '2018', '', 35, 1515332096, 15, 1515450708, 'y'),
('M033/2018', 'MK07', 'I018', 'Pembinaan Tukang Banten dan Pemangku di 3 Desa Adat', 'Kelurahan Benoa', 'baru', '3', 30000000, '2018', '', 35, 1515333575, 15, 1515450681, 'y'),
('M034/2018', 'MK06', 'I018', 'Pengadaan Mobil Patroli Satgas LPM & LINMAS', 'Kelurahan Benoa', 'baru', '1', 250000000, '2018', '', 35, 1515333700, 15, 1515450907, 'y'),
('M035/2018', 'MK06', 'I018', 'Pengadaan Mobil Hidrolik Pemotongan Pohon', 'Kelurahan Benoa', 'baru', '1 unit', 250000000, '2018', '', 35, 1515334550, 15, 1515451278, 'y'),
('M036/2018', 'MK06', 'I018', 'Pengadaan Mesin Fogging', 'Kelurahan Benoa', 'baru', '2', 35000000, '2018', '', 35, 1515334761, 15, 1515450569, 'y'),
('M047/2018', 'MK06', 'I001', 'Pavingisasi ', 'Jl Pedik Sari Sawangan ( Made karmayasa ) ', 'baru', '15 m x 4 m = 60 m2 ', 10000000, '2018', NULL, 29, 1515636500, 29, 1515636500, 'y'),
('M048/2018', 'MK06', 'I001', 'Lampu Penerangan Jalan ( LPJ )', 'Jl Pratama Gg badak ', 'baru', '2 unit', 30000000, '2018', NULL, 29, 1515636569, 29, 1515636569, 'y'),
('M049/2018', 'MK06', 'I001', 'Lampu Penerangan Jalan ( LPJ )', 'Jl Kuruk Setra , Banjar Balekembar ', 'baru', '1 unit', 15000000, '2018', NULL, 29, 1515636620, 29, 1515636620, 'y'),
('M050/2018', 'MK06', 'I001', 'Pengadaan Prasarana Olah Raga ( Meja Tenis meja, Meja Bilyard,  Papan Catur, Sepeda Statis, Alat angkat berat )', 'Br balekembar', 'baru', '1 Set', 100000000, '2018', NULL, 29, 1515636737, 15, 1516296629, 'y'),
('M051/2018', 'MK06', 'I001', 'Pengadaan Fasilitas Wantilan Banjar Balekembar ( Sound System dan LCD Proyektor )', 'Br balekembar', 'baru', '1 Set', 100000000, '2018', NULL, 29, 1515636814, 29, 1515636814, 'y'),
('M052/2018', 'MK06', 'I001', 'Pavingisasi ', 'Jl Pratama Gg Damai No 31 ( Pak Kode )', 'baru', '4 m x 100 m = 400 m2', 64000000, '2018', NULL, 29, 1515636890, 29, 1515636937, 'y'),
('M053/2018', 'MK06', 'I001', 'Pavingisasi ', 'Jl Pedik Sari II Sawangan ( Made karmayasa 2 )', 'baru', '4 m x 35 m = 140 m2', 23000000, '2018', NULL, 29, 1515637004, 29, 1515637022, 'y'),
('M054/2018', 'MK06', 'I001', 'Pavingisasi ', 'Jl Desa Sawangan Gg Teban baet ( Wayan Sujendra ) ', 'baru', '4 m x 400 m = 1600 m2', 260000000, '2018', NULL, 29, 1515637126, 29, 1515637126, 'y'),
('M055/2018', 'MK06', 'I014', 'Pengadaan LPJ (Lampu Penerangan Jalan)', 'Lingkungan Bualu Indah', 'lanjutan', '6 titik', 30000000, '2018', NULL, 25, 1515655072, 25, 1515655072, 'y'),
('M056/2018', 'MK06', 'I014', 'Perbaikan Got / Saluran air Rumah Tangga', 'Lingkungan Bualu Indah', 'rehab', '3000 M2', 800000000, '2018', NULL, 25, 1515655206, 25, 1515655206, 'y'),
('M057/2018', 'MK06', 'I014', 'Gapura/plang identitas masing-masing Gang/Jalan', 'Lingkungan Bualu Indah', 'baru', '11 Unit', 200000000, '2018', NULL, 25, 1515655477, 25, 1515655477, 'y'),
('M058/2018', 'MK07', 'I014', 'Seperangkat Gamelan Baleganjur', 'Lingkungan Bualu Indah', 'baru', '1 paket', 200000000, '2018', NULL, 25, 1515655549, 25, 1515655549, 'y'),
('M059/2018', 'MK04', 'I014', 'Pengadaan sarana prasarana Koperasi BIC ( brankas, komputer, printer, dll) ', 'Koperasi BIC ( Bualu Indah Centre)', 'baru', '1 paket', 150000000, '2018', NULL, 25, 1515655780, 25, 1515655780, 'y'),
('M060/2018', 'MK04', 'I014', 'Pengadaan pohon penghijauan dan pot', 'Lingkungan Bualu Indah', 'baru', '50 paket', 25000000, '2018', NULL, 25, 1515656097, 25, 1515656097, 'y'),
('M061/2018', 'MK05', 'I014', 'Pelatihan/ Bimtek Pegawai Koperasi', 'Koperasi BIC ( Bualu Indah Centre)', 'baru', '-', 10000000, '2018', NULL, 25, 1515656221, 25, 1515656221, 'y'),
('M062/2018', 'MK06', 'I014', 'Pengadaan penunjang kegiatan Posyandu (meja,kursi, timbangan, dll', 'Lingkungan Bualu Indah', 'baru', '-', 30000000, '2018', NULL, 25, 1515656334, 25, 1515656334, 'y'),
('M063/2018', 'MK04', 'I014', 'Pengadaan Mobil pengangkut sampah', 'Koperasi BIC ( Bualu Indah Centre)', 'baru', '1 unit', 100000000, '2018', NULL, 25, 1515656560, 25, 1515656560, 'y'),
('M065/2018', 'MK06', 'I003', 'Perbaikan dan penggantian LPJ', 'Jalan Pratama Lingkungan Terora', 'rehab', '15 unit', 75000000, '2018', NULL, 33, 1515724192, 33, 1515724192, 'n'),
('M066/2018', 'MK06', 'I003', 'Pemasangan LPJ baru', 'Jalan Pratama Gang Guntur Lingkungan Terora', 'baru', '6 unit', 30000000, '2018', NULL, 33, 1515724307, 33, 1515724307, 'n'),
('M067/2018', 'MK06', 'I003', 'Perbaikan Trotoar dan Grill2 Gater jalan Pratama', 'Jalan prataman di wilayah Lingkungan Terora', 'rehab', '3600 m2', 750000000, '2018', NULL, 33, 1515724518, 33, 1515724518, 'y'),
('M068/2018', 'MK06', 'I003', 'Penataan bangunan Publik dan bangunan kelompok usaha kecil', 'Sepanjang Pantai di wilayah Lingkungan Terora', 'rehab', '1 ls', 500000000, '2018', NULL, 33, 1515724733, 33, 1515724733, 'y'),
('M069/2018', 'MK06', 'I003', 'Rambu - rambu Jalan ', 'Jalan Pratama di Wilayah Lingkungan Terora', 'baru', '1 ls', 100000000, '2018', NULL, 33, 1515724871, 33, 1515724871, 'n'),
('M070/2018', 'MK06', 'I003', 'Tempat-tempat Sampah', 'Jalan prataman di wilayah Lingkungan Terora', 'baru', '30 unit', 30000000, '2018', NULL, 33, 1515724968, 33, 1515724968, 'n'),
('M071/2018', 'MK06', 'I013', 'Gorong gorong /got', 'Link puri nusa dua', 'baru', '1500 m', 20000000, '2018', NULL, 24, 1515729157, 24, 1515729157, 'y'),
('M072/2018', 'MK06', 'I002', 'Pavingnisasi', 'Gg Nelayan ', 'baru', '1m x 80 m', 24000000, '2018', NULL, 31, 1515734429, 31, 1515734951, 'y'),
('M073/2018', 'MK06', 'I002', 'Pavingnisasi', 'Gg Bidadari', 'baru', '3x 200m', 180000000, '2018', NULL, 31, 1515734914, 31, 1515734914, 'y'),
('M074/2018', 'MK07', 'I013', 'Taman', 'Link puri nusa dua', 'baru', '100m', 150000000, '2018', NULL, 24, 1515752365, 24, 1515752365, 'y'),
('M075/2018', 'MK06', 'I027', 'Pembangunan Tembok penyengker sekolah', 'SD No.9 Benoa', 'rehab', '170 M', 850000000, '2018', NULL, 44, 1515762009, 44, 1515762009, 'y'),
('M076/2018', 'MK06', 'I027', 'Pembangunan Ruang UKS', 'SD No.9 Benoa', 'baru', '8 M x 7 M', 280000000, '2018', NULL, 44, 1515762187, 44, 1515762187, 'y'),
('M077/2018', 'MK06', 'I027', 'Pembangunan Ruang Perpustakaan', 'SD No.9 Benoa', 'baru', '8 M x 7 M', 280000000, '2018', NULL, 44, 1515762273, 44, 1515762273, 'y'),
('M078/2018', 'MK06', 'I027', 'Pembangunan Ruang Guru dan Ruang Kepala Sekolah', 'SD No.9 Benoa', 'baru', '10 M x 6 M', 300000000, '2018', NULL, 44, 1515762401, 44, 1515762401, 'y'),
('M079/2018', 'MK06', 'I027', 'Pembangunan Aula', 'SD No.9 Benoa', 'baru', '10 M x 7 M', 630000000, '2018', NULL, 44, 1515762480, 44, 1515762569, 'y'),
('M081/2018', 'MK06', 'I005', 'Gorong gorong ', 'Jln kuruksetra gg sunyi menuju ke lpd desa adat bualu', 'baru', '1200m2', 800000000, '2018', NULL, 16, 1515806293, 16, 1515806293, 'y'),
('M082/2018', 'MK06', 'I027', 'Membuat Patung Saraswati dan Patung Ganesha', 'SD No.9 Benoa', 'baru', '2 unit', 40000000, '2018', NULL, 44, 1515812392, 44, 1515812392, 'y'),
('M084/2018', 'MK06', 'I027', 'Membangun Mess Kepala Sekolah', 'SD No.9 Benoa', 'baru', '10  M x 6 M', 300000000, '2018', NULL, 44, 1515848648, 44, 1515848648, 'y'),
('M085/2018', 'MK06', 'I027', 'Membangun Mess Penjaga sekolah', 'SD No.9 Benoa', 'baru', '8 M x 7 M', 280000000, '2018', NULL, 44, 1515848748, 44, 1515848748, 'y'),
('M086/2018', 'MK06', 'I027', 'Membuat Papan Nama Sekolah dari batu Granit', 'SD No.9 Benoa', 'baru', '2 M x 1 M', 15000000, '2018', NULL, 44, 1515848842, 44, 1515848842, 'y'),
('M087/2018', 'MK06', 'I027', 'Membangun Candi Bentar', 'SD No.9 Benoa', 'baru', '2.5 M x 1.5 M x 3 M', 50000000, '2018', NULL, 44, 1515848972, 44, 1515848972, 'y'),
('M088/2018', 'MK06', 'I027', 'Pengadaan bangku dan kursi siswa', 'SD No.9 Benoa', 'baru', '217 Set', 32550000, '2018', NULL, 44, 1515849254, 44, 1515849254, 'y'),
('M089/2018', 'MK06', 'I011', 'pavingisasi', 'gang arjuna', 'baru', '4M x 385 M', 246400000, '2018', NULL, 22, 1515850231, 22, 1515850231, 'y'),
('M090/2018', 'MK06', 'I011', 'pavingisasi', 'gang yudistira', 'baru', '4M x 345 M', 220800000, '2018', NULL, 22, 1515850429, 22, 1515850429, 'y'),
('M091/2018', 'MK06', 'I011', 'pavingisasi', 'gang cendrawasih', 'baru', '4M x 485 M', 310400000, '2018', NULL, 22, 1515850492, 22, 1515850492, 'y'),
('M092/2018', 'MK06', 'I011', 'pavingisasi', 'gang salia', 'baru', '4M x 585M', 374400000, '2018', NULL, 22, 1515850548, 22, 1515850548, 'y'),
('M093/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Batu Tandal', 'baru', '4,5M x 685M', 493200000, '2018', NULL, 22, 1515850610, 22, 1515850610, 'y'),
('M094/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Sengon', 'baru', '4M x 65M', 41600000, '2018', NULL, 22, 1515850667, 22, 1515850667, 'y'),
('M095/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Cangak', 'lanjutan', '5M x 125M', 100000000, '2018', NULL, 22, 1515850732, 22, 1515850732, 'y'),
('M096/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Sumur', 'baru', '5M x 85M', 54400000, '2018', NULL, 22, 1515850794, 22, 1515850794, 'y'),
('M097/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Endong', 'baru', '4M x 115M', 73600000, '2018', NULL, 22, 1515850842, 22, 1515850842, 'y'),
('M098/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Api Api', 'baru', '4M x 75M', 48000000, '2018', NULL, 22, 1515850911, 22, 1515850911, 'y'),
('M099/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Susu', 'baru', '4M x 78M', 49920000, '2018', NULL, 22, 1515850963, 22, 1515850963, 'y'),
('M100/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Sangit', 'baru', '4M x 125M', 80000000, '2018', NULL, 22, 1515851123, 22, 1515851123, 'y'),
('M101/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Undis', 'baru', '4,5M x 148M', 106560000, '2018', NULL, 22, 1515851185, 22, 1515851185, 'y'),
('M102/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Betet', 'baru', '4M x 378M', 241920000, '2018', NULL, 22, 1515851287, 22, 1515851287, 'y'),
('M104/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Sunari', 'baru', '4M x 175M', 112000000, '2018', NULL, 22, 1515851375, 22, 1515851375, 'y'),
('M105/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Kendrang', 'baru', '4M x 120M ', 76808000, '2018', NULL, 22, 1515851426, 22, 1515851426, 'y'),
('M106/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Lemon', 'baru', '4M x 120M ', 76800000, '2018', NULL, 22, 1515851480, 22, 1515851480, 'y'),
('M107/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Langsat', 'baru', '4M x 148M', 94720000, '2018', NULL, 22, 1515851527, 22, 1515851527, 'y'),
('M108/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Buyan', 'baru', '4M x 76M', 48640000, '2018', NULL, 22, 1515851567, 22, 1515851567, 'y'),
('M110/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Camplung ', 'baru', '4M x 75M', 48000000, '2018', NULL, 22, 1515851623, 22, 1515851623, 'y'),
('M111/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Rinjani', 'baru', '4M x 535M', 342400000, '2018', NULL, 22, 1515851678, 22, 1515851678, 'y'),
('M112/2018', 'MK06', 'I011', 'pavingisasi', 'Gang Pungut', 'baru', '2M x 125M', 40000000, '2018', NULL, 22, 1515851714, 22, 1515851714, 'y'),
('M113/2018', 'MK06', 'I011', 'Lampu Penerangan Jalan (LPJ)', 'Gang Perkutut', 'baru', '4 titik', 14000000, '2018', NULL, 22, 1515851989, 22, 1515852334, 'y'),
('M114/2018', 'MK06', 'I011', 'Lampu Penerangan Jalan (LPJ)', 'Gang Kutilang Pura Panti Mas', 'baru', '3 titik', 10500000, '2018', NULL, 22, 1515852176, 22, 1515852352, 'y'),
('M115/2018', 'MK06', 'I011', 'Lampu Penerangan Jalan (LPJ)', 'Jl.Dukuh Sari 2', 'baru', '25 titik', 37500000, '2018', NULL, 22, 1515852236, 22, 1515852372, 'y'),
('M116/2018', 'MK06', 'I011', 'Lampu Penerangan Jalan (LPJ)', 'Jl.Riun Sari', 'baru', '45 titik', 67500000, '2018', NULL, 22, 1515852302, 22, 1515852302, 'y'),
('M117/2018', 'MK06', 'I011', 'Peningkatan Kwalitas Jalan', 'Jl.Kedaung', 'baru', '5M x 1075M', 1209375000, '2018', NULL, 22, 1515852446, 22, 1515852446, 'y'),
('M118/2018', 'MK06', 'I011', 'Peningkatan Kwalitas Jalan', 'Jl.Dukuh Sari 2', 'baru', '5M x 2300M', 6037500000, '2018', NULL, 22, 1515852622, 22, 1515852622, 'y'),
('M119/2018', 'MK06', 'I011', 'Peningkatan Kwalitas Jalan', 'Jl.Peninjauan', 'baru', '5M x 650M', 1706250000, '2018', NULL, 22, 1515852670, 22, 1515852670, 'y'),
('M120/2018', 'MK06', 'I011', 'Peningkatan Kwalitas Jalan', 'Jl.Goa Tegeh', 'baru', '5M x 685M', 1798250000, '2018', NULL, 22, 1515852794, 22, 1515852794, 'y'),
('M121/2018', 'MK06', 'I011', 'Trotoarisasi', 'Kanan Dan Kiri Jalan Depan LPD Kampial Sampai Depan TVRI', 'baru', '3000M', 375000000, '2018', NULL, 22, 1515853089, 22, 1515853089, 'y'),
('M122/2018', 'MK06', 'I011', 'Jaringan Pipa Air Bersih (PDAM)', 'Jl.Palapa ', 'lanjutan', '850M (pipa 3)', 106250000, '2018', NULL, 22, 1515853202, 22, 1515853202, 'y'),
('M123/2018', 'MK06', 'I011', 'Jaringan Pipa Air Bersih (PDAM)', 'Gang Cangak ', 'baru', '165M (pipa 3M)', 20625000, '2018', NULL, 22, 1515853259, 22, 1515853259, 'y'),
('M124/2018', 'MK06', 'I011', 'Jaringan Pipa Air Bersih (PDAM)', 'Jl.Naruto', 'baru', '675M ', 84375000, '2018', NULL, 22, 1515853310, 22, 1515853310, 'y'),
('M125/2018', 'MK06', 'I011', 'Jaringan Pipa Air Bersih (PDAM)', 'Jl.Dukuh Sari 2', 'lanjutan', '595M (pipa 3)', 74375000, '2018', NULL, 22, 1515853360, 22, 1515853360, 'y'),
('M126/2018', 'MK06', 'I011', 'Pembuatan Drainase Kanan Dan Kiri Jalan', 'Jl.Dukuh sari', 'baru', '6300 M\"', 2677500000, '2018', NULL, 22, 1515853695, 22, 1515853695, 'y'),
('M127/2018', 'MK06', 'I002', 'Pavingnisasi', 'Gg ASEman - By Pass Ngurah Rai Nusa Dua ', 'baru', '4 x 70 M ', 48000000, '2018', NULL, 31, 1515855596, 31, 1515855596, 'y'),
('M128/2018', 'MK06', 'I002', 'Pavingnisasi', 'Gg. Perkasa I', 'baru', '1.5 x 100m', 45000000, '2018', NULL, 31, 1515855729, 31, 1515855729, 'y'),
('M129/2018', 'MK06', 'I002', 'Pavingnisasi', 'Jl Kuruksetra 18 B ( Pak Regen - Bualu) ', 'baru', '1x100 m', 30000000, '2018', NULL, 31, 1515855845, 31, 1515855845, 'y'),
('M130/2018', 'MK06', 'I002', 'Pavingnisasi', 'Gg Perkasa II', 'baru', '3x100', 30000000, '2018', NULL, 31, 1515856085, 31, 1515856085, 'y'),
('M131/2018', 'MK06', 'I002', 'Pavingnisasi', 'Gg. Beringin. Jl Kuruksetra ', 'baru', '1x 150 m', 45000000, '2018', NULL, 31, 1515856349, 31, 1515856349, 'y'),
('M132/2018', 'MK06', 'I002', 'Aspal ', 'Jl. Teges Nunggal ', 'baru', '6x300 m', 400000000, '2018', NULL, 31, 1515856517, 31, 1515856517, 'y'),
('M133/2018', 'MK06', 'I012', 'pavingnisasi', 'Jalan Taman Putri Gg Jaladi', 'baru', '500 M2', 100000000, '2018', NULL, 23, 1515904583, 23, 1515904583, 'y'),
('M134/2018', 'MK06', 'I012', 'pavingnisasi', 'Jalan Taman Putri ', 'baru', '200 M2', 40000000, '2018', NULL, 23, 1515904728, 23, 1515904728, 'y'),
('M135/2018', 'MK06', 'I012', 'pavingnisasi', 'Jalan Taman Giri Gg Jempiring', 'baru', '300 M2', 60000000, '2018', NULL, 23, 1515905049, 23, 1515905049, 'y'),
('M136/2018', 'MK06', 'I012', 'aspal', 'jalan taman mahardika', 'baru', '900 M2', 450000000, '2018', NULL, 23, 1515905353, 23, 1515905353, 'y'),
('M137/2018', 'MK06', 'I012', 'gorong gorong', 'jalan taman sari', 'baru', '240 m3', 144000000, '2018', NULL, 23, 1515906287, 23, 1515906287, 'y'),
('M138/2018', 'MK07', 'I012', 'patroli keamanan lingkungan', 'Lingkungan Mumbul', 'baru', '1800', 330000000, '2018', NULL, 23, 1515913322, 23, 1515913322, 'y'),
('M139/2018', 'MK07', 'I012', 'Seragam Lansia', 'Banjar Mumbul', 'baru', '75', 75000000, '2018', NULL, 23, 1515913481, 23, 1516669752, 'y'),
('M140/2018', 'MK07', 'I012', 'Pujawali', 'Mumbul', 'baru', '8', 400000, '2018', NULL, 23, 1515913743, 23, 1515913743, 'y'),
('M141/2018', 'MK04', 'I012', 'wisata air dan  Sepiritual Taman sari Mumbul', 'Banjar Mumbul', 'baru', '1', 2000000000, '2018', NULL, 23, 1515913975, 23, 1516669689, 'y'),
('M142/2018', 'MK06', 'I012', 'wantilan banjar Mumbul', 'Banjar Mumbul', 'baru', '1800 M2', 6300000000, '2018', NULL, 23, 1515914214, 23, 1515914214, 'y'),
('M143/2018', 'MK06', 'I012', 'pavingnisasi', 'Jalan Taman werdi', 'baru', '160 M2', 32000000, '2018', NULL, 23, 1515915056, 23, 1516669722, 'y'),
('M144/2018', 'MK06', 'I010', 'aspal', 'JL. Cendrawasih menuju setra alit Kampial', 'baru', '5x150 m2', 170000000, '2018', NULL, 21, 1515980570, 21, 1516756986, 'y'),
('M145/2018', 'MK06', 'I010', 'pavingisasi', 'Perum Pondok Kampial Gang Flamboyan', 'baru', '5x15 m2', 75000000, '2018', NULL, 21, 1515980658, 21, 1515980658, 'y'),
('M146/2018', 'MK06', 'I010', 'aspal', 'pondok kampial menuju pura dalem penganyungan', 'baru', '7x15 m2', 50000000, '2018', NULL, 21, 1515980772, 21, 1515980772, 'y'),
('M147/2018', 'MK06', 'I010', 'pembuatan gapura di depan menuju banjar ancak', 'JL. Darmawangsa Gang Cendrawasih', 'baru', '5x1,5x2 m2', 150000000, '2018', NULL, 21, 1515981162, 21, 1515981162, 'y'),
('M148/2018', 'MK06', 'I009', 'gorong gorong', 'lingkungan pande jalan plamboyan', 'baru', '150 M3', 90000000, '2018', NULL, 20, 1515982125, 20, 1515982125, 'y'),
('M149/2018', 'MK06', 'I001', 'Pavingisasi ', 'Jl Darmawangsa Gg Kubu Anyar Kampial ( Pak Febri )', 'baru', '96 m x 3 m = 288 m2', 50000000, '2018', NULL, 29, 1516008842, 29, 1516008842, 'y'),
('M150/2018', 'MK06', 'I006', 'Rehab pavingisasi', 'Gg basur lingk penyarikan', 'rehab', '2m x 150 m', 150000000, '2018', NULL, 17, 1516082916, 17, 1516082916, 'y'),
('M151/2018', 'MK06', 'I006', 'Pavingisasi', 'Gg.claziria', 'baru', '1,5 meter x 150 meter', 120000000, '2018', NULL, 17, 1516083083, 17, 1516083083, 'y'),
('M152/2018', 'MK06', 'I006', 'Pavingisasi', 'Gg.2 maya loka. Lingk bualu', 'baru', '1,5 meter x 80 Meter', 90000000, '2018', NULL, 17, 1516083296, 17, 1516083296, 'y'),
('M155/2018', 'MK06', 'I006', 'Lpj', 'Jl. Penataran sari LPJ ( Lampu penerangan jalan )', 'baru', '2 titik', 15000000, '2018', NULL, 17, 1516084281, 17, 1516084281, 'y'),
('M156/2018', 'MK06', 'I006', 'Lpj', 'SD 5 benoa jl srikandi', 'baru', '1 titik', 7500000, '2018', NULL, 17, 1516084506, 17, 1516084506, 'y'),
('M157/2018', 'MK06', 'I006', 'Lpj', 'Gg ramayana jl srikandi', 'baru', '2 titik', 15000000, '2018', NULL, 17, 1516084588, 17, 1516084588, 'y'),
('M158/2018', 'MK06', 'I021', '12 Ruang Kelas Belajar (3 lantai)', 'Jl. Pura Dukuh Sari Kampial Benoa Kuta Selatan Badung', 'baru', '172 m2', 2000000000, '2018', NULL, 38, 1516164768, 38, 1516686495, 'y'),
('M159/2018', 'MK06', 'I021', 'Ruang Guru dan Laboratorium (2 lantai)', 'Jl. Pura Dukuh Sari Kampial Benoa Kuta Selatan Badung', 'baru', '120 m2', 2000000000, '2018', NULL, 38, 1516164840, 38, 1516164886, 'y'),
('M160/2018', 'MK06', 'I021', 'Kantin Sekolah (Gedung)', 'Jl. Pura Dukuh Sari Kampial Benoa Kuta Selatan Badung', 'baru', '18 m2', 100000000, '2018', NULL, 38, 1516164930, 38, 1516164930, 'y'),
('M161/2018', 'MK06', 'I021', 'AC 2 PK (Untuk Ruang Guru)', 'Jl. Pura Dukuh Sari Kampial Benoa Kuta Selatan Badung', 'baru', '3', 15000000, '2018', NULL, 38, 1516585798, 38, 1516686669, 'y'),
('M162/2018', 'MK06', 'I021', 'AC 1 PK (Untuk Ruang Kelas)', 'Jl. Pura Dukuh Sari Kampial Benoa Kuta Selatan Badung', 'baru', '18', 81000000, '2018', NULL, 38, 1516585904, 38, 1516686649, 'y'),
('M163/2018', 'MK06', 'I021', 'LCD (Untuk Ruang Kelas)', 'Jl. Pura Dukuh Sari Kampial Benoa Kuta Selatan Badung', 'baru', '18', 90000000, '2018', NULL, 38, 1516586040, 38, 1516686620, 'y'),
('M164/2018', 'MK06', 'I012', 'pengaspalan', 'jalan Taman Giri Asri', 'baru', '1500 m2', 900000000, '2018', NULL, 23, 1516667551, 23, 1516667551, 'y'),
('M165/2018', 'MK06', 'I012', 'gorong gorong', 'jalan Taman Giri Asri', 'baru', '8 M3', 8000000, '2018', NULL, 23, 1516667888, 23, 1516667888, 'y'),
('M166/2018', 'MK06', 'I012', 'lpj', 'Jalan Taman Putri ', 'baru', '6 titik', 60000000, '2018', NULL, 23, 1516669002, 23, 1516669002, 'y'),
('M167/2018', 'MK06', 'I022', 'Persiapan Lomba Sekolah Sehat Tingkat Nasional', 'SD Negeri 4 Benoa', 'lanjutan', 'Sesuai Tagihan', 600000000, '2018', NULL, 39, 1516671758, 39, 1516672400, 'y'),
('M168/2018', 'MK06', 'I022', 'RKB 3 Lantai (6 Rombel)', 'SD Negeri 4 Benoa', 'baru', '1 Unit', 2500000000, '2018', NULL, 39, 1516671905, 39, 1516672419, 'y'),
('M169/2018', 'MK06', 'I022', 'Mes Guru 2 Lantai (6 Bilik Keluarga)', 'SD Negeri 4 Benoa', 'baru', '1 Unit', 1500000000, '2018', NULL, 39, 1516671961, 39, 1516672441, 'y'),
('M170/2018', 'MK06', 'I022', 'Bangunan Wantilan', 'SD Negeri 4 Benoa', 'baru', '1 Unit', 750000000, '2018', NULL, 39, 1516672023, 39, 1516672459, 'y'),
('M171/2018', 'MK06', 'I022', 'Tembok Penyengker dan Candi Bentar', 'SD Negeri 4 Benoa', 'baru', '600 M', 500000000, '2018', NULL, 39, 1516672072, 39, 1516672477, 'y'),
('M172/2018', 'MK06', 'I022', 'Bangunan Gazebo', 'SD Negeri 4 Benoa', 'baru', '4 Unit', 800000000, '2018', NULL, 39, 1516672122, 39, 1516672502, 'y'),
('M173/2018', 'MK06', 'I022', 'Bangunan POS Satpam', 'SD Negeri 4 Benoa', 'baru', '1 Unit', 200000000, '2018', NULL, 39, 1516672190, 39, 1516672518, 'y'),
('M174/2018', 'MK06', 'I022', 'Penambahan Beban Listrik', 'SD Negeri 4 Benoa', 'perluasan', '15000 KWH', 150000000, '2018', NULL, 39, 1516672243, 39, 1516672550, 'y'),
('M176/2018', 'MK06', 'I022', 'Pemasangan Telp Kabel dan Internet', 'SD Negeri 4 Benoa', 'baru', '1 Unit', 100000000, '2018', NULL, 39, 1516672597, 39, 1516672597, 'y'),
('M177/2018', 'MK06', 'I022', 'Mengisi Sarana LAB Komputer', 'SD Negeri 4 Benoa', 'baru', '20 Unit', 300000000, '2018', NULL, 39, 1516672718, 39, 1516672718, 'y'),
('M178/2018', 'MK06', 'I022', 'Meja dan Kursi Rapat', 'SD Negeri 4 Benoa', 'baru', '40 Set', 20000000, '2018', NULL, 39, 1516672761, 39, 1516672761, 'y'),
('M179/2018', 'MK06', 'I022', 'Meja dan Kursi Guru', 'SD Negeri 4 Benoa', 'baru', '30 Set', 15000000, '2018', NULL, 39, 1516672805, 39, 1516672805, 'y'),
('M180/2018', 'MK06', 'I022', 'AC 1,5 PK', 'SD Negeri 4 Benoa', 'baru', '38 Set', 190000000, '2018', NULL, 39, 1516672849, 39, 1516672849, 'y'),
('M181/2018', 'MK06', 'I022', 'Penataan Halaman', 'SD Negeri 4 Benoa', 'lanjutan', NULL, 300000000, '2018', NULL, 39, 1516672882, 39, 1516672882, 'y'),
('M182/2018', 'MK06', 'I022', 'Lampu Penerangan', 'SD Negeri 4 Benoa', 'baru', '8 Set', 20000000, '2018', NULL, 39, 1516672925, 39, 1516672925, 'y'),
('M183/2018', 'MK07', 'I022', 'Gong Mini 1 Barung', 'SD Negeri 4 Benoa', 'baru', '1 Set', 150000000, '2018', NULL, 39, 1516672980, 39, 1516672980, 'y'),
('M184/2018', 'MK07', 'I022', 'Alat Musik (Band) Lengkap', 'SD Negeri 4 Benoa', 'baru', '1 Set', 50000000, '2018', NULL, 39, 1516673036, 39, 1516673036, 'y'),
('M185/2018', 'MK06', 'I008', 'Pembangunan jembatan Tasik Madu', 'Jl Tasik Madu Sawangan', 'baru', '20mx4m', 120000000, '2018', NULL, 19, 1516676583, 19, 1516676583, 'y'),
('M186/2018', 'MK06', 'I008', 'Pembangunan Jembatan Celagi Nunggul', 'Jl Celagi Nunggul Sawangan', 'baru', '15mx4m', 150000000, '2018', NULL, 19, 1516676682, 19, 1516697231, 'y'),
('M187/2018', 'MK06', 'I008', 'Pembangunan Jembatan Bongantik', 'Jl Bongantik Sawangan', 'baru', '6mx4m', 100000000, '2018', NULL, 19, 1516676796, 19, 1516676796, 'y'),
('M188/2018', 'MK06', 'I008', 'Pembangunan Gedung Sekolah TK Giri Sari Kumara', 'Jl Celagi Nunggul Sawangan', 'rehab', '20mx6m', 500000000, '2018', NULL, 19, 1516676933, 19, 1516676933, 'y'),
('M189/2018', 'MK06', 'I008', 'Pengaspalan Jalan Pura Segara', 'Jl Gunung Payung II Sawangan', 'baru', '550mx6m', 1000000000, '2018', NULL, 19, 1516677141, 19, 1516677141, 'y'),
('M190/2018', 'MK06', 'I008', 'Pengaspalan jalan Melati', 'Jalan melati Sawangan', 'lanjutan', '700mx5m', 1000000000, '2018', NULL, 19, 1516677236, 19, 1516677236, 'y'),
('M191/2018', 'MK06', 'I008', 'Pengaspalan jalan Anahata', 'Jalan Anahata Sawangan', 'lanjutan', '350mx5m', 400000000, '2018', NULL, 19, 1516677333, 19, 1516677333, 'y'),
('M192/2018', 'MK06', 'I008', 'Pengaspalan jalan penganyungan', 'Jalan penganyungan Sawangan', 'baru', '600mx4m', 1000000000, '2018', NULL, 19, 1516677477, 19, 1516677477, 'y'),
('M193/2018', 'MK06', 'I008', 'Pengaspalan jl Gunung Riung', 'Gunung Payung Sawangan', 'baru', '300mx4m', 500000000, '2018', NULL, 19, 1516677574, 19, 1516677574, 'y'),
('M194/2018', 'MK06', 'I008', 'Paving Gang Rama', 'Gunung Payung Sawangan', 'lanjutan', '100mx4m', 20000000, '2018', NULL, 19, 1516677740, 19, 1516677740, 'y'),
('M195/2018', 'MK06', 'I008', 'Paving Gang Segara Giri', 'Gunung Payung Sawangan', 'baru', '120mx4m', 24000000, '2018', NULL, 19, 1516677847, 19, 1516696877, 'y'),
('M196/2018', 'MK06', 'I008', 'Paving Segara Madu', 'Gunung Payung Sawangan', 'baru', '230mx4m', 30000000, '2018', NULL, 19, 1516677919, 19, 1516677919, 'y'),
('M197/2018', 'MK06', 'I008', 'Paving Gang Taman Ayu', 'Langdukuh sawangan', 'baru', '300mx4m', 45000000, '2018', NULL, 19, 1516678073, 19, 1516678073, 'y'),
('M198/2018', 'MK06', 'I008', 'Paving Gang Mangga', 'Langdukuh sawangan', 'baru', '230mx4m', 30000000, '2018', NULL, 19, 1516678188, 19, 1516678188, 'y'),
('M199/2018', 'MK06', 'I008', 'Paving Gang Gunung Sari', 'Gunung Payung Sawangan', 'baru', '300mx4m', 60000000, '2018', NULL, 19, 1516678354, 19, 1516678354, 'y'),
('M200/2018', 'MK06', 'I008', 'Paving Gang Bongli', 'Pedik Sawangan', 'baru', '100mx3m', 15000000, '2018', NULL, 19, 1516678451, 19, 1516678451, 'y'),
('M201/2018', 'MK06', 'I008', 'Paving Gang Shanti', 'Gunung Payung Sawangan', 'baru', '250mx4m', 35000000, '2018', NULL, 19, 1516678538, 19, 1516678538, 'y'),
('M202/2018', 'MK06', 'I008', 'Paving Gang Krenyong Utara', 'Krenyong Sawangan', 'lanjutan', '350mx4m', 65000000, '2018', NULL, 19, 1516678639, 19, 1516678639, 'y'),
('M203/2018', 'MK06', 'I008', 'Gang Brlong jepun II', 'Gunung Payung Sawangan', 'baru', '100mx3m', 20000000, '2018', NULL, 19, 1516678726, 19, 1516678726, 'y'),
('M204/2018', 'MK06', 'I008', 'Paving gang belong jepun III', 'Gunung Payung Sawangan', 'baru', '200mx4', 30000000, '2018', NULL, 19, 1516678826, 19, 1516678826, 'y'),
('M205/2018', 'MK06', 'I008', 'Paving Gang Pudak III', 'Pedik Sawangan', 'baru', '200mx4m', 35000000, '2018', NULL, 19, 1516678957, 19, 1516678957, 'y'),
('M206/2018', 'MK06', 'I008', 'Paving Gang Penganyungan I', 'Pedik Sawangan', 'baru', '200mx4m', 40000000, '2018', NULL, 19, 1516679076, 19, 1516679076, 'y'),
('M207/2018', 'MK06', 'I008', 'Paving Gang Penganyungan II', 'Pedik Sawangan', 'baru', '200mx4m', 40000000, '2018', NULL, 19, 1516679155, 19, 1516679155, 'y'),
('M208/2018', 'MK06', 'I008', 'Paving Gang Penganyungan III', 'Pedik Sawangan', 'baru', '200mx4m', 40000000, '2018', NULL, 19, 1516679240, 19, 1516679240, 'y'),
('M209/2018', 'MK06', 'I008', 'Paving Gang Penganyungan IV', 'Pedik Sawangan', 'baru', '400mx4m', 80000000, '2018', NULL, 19, 1516679342, 19, 1516679342, 'y'),
('M210/2018', 'MK06', 'I008', 'Paving Gang Bambu', 'Jl Melati Sawangan', 'baru', '100mx4m', 20000000, '2018', NULL, 19, 1516679467, 19, 1516679467, 'y'),
('M211/2018', 'MK06', 'I008', 'Paving Gang Waru', 'Jl Melati Sawangan', 'baru', '100mx4m', 25000000, '2018', NULL, 19, 1516680357, 19, 1516680357, 'y'),
('M212/2018', 'MK06', 'I008', 'Paving Gang Batu Kakeb III', 'Jl Melati Sawangan', 'baru', '100mx4m', 25000000, '2018', NULL, 19, 1516680463, 19, 1516680463, 'y'),
('M213/2018', 'MK06', 'I008', 'Paving Gang Melati I', 'Jl Melati Sawangan', 'baru', '100mx3m', 20000000, '2018', NULL, 19, 1516680534, 19, 1516680534, 'y'),
('M214/2018', 'MK06', 'I008', 'Paving Gang Langkubung', 'Jl Celagi Nunggul Sawangan', 'baru', '210mx3m', 30000000, '2018', NULL, 19, 1516680614, 19, 1516680614, 'y'),
('M215/2018', 'MK06', 'I008', 'Paving Gang Bougenvile', 'Jl Bongantik Sawangan', 'baru', '100mx4m', 25000000, '2018', NULL, 19, 1516680706, 19, 1516680706, 'y'),
('M216/2018', 'MK06', 'I008', 'Paving Gang Kau Belang I', 'Jl Bongantik Sawangan', 'baru', '120mx3m', 20000000, '2018', NULL, 19, 1516680804, 19, 1516680804, 'y'),
('M217/2018', 'MK06', 'I008', 'Paving Gang Jambu', 'Jl Celagi Nunggul Sawangan', 'baru', '150mx4m', 30000000, '2018', NULL, 19, 1516680867, 19, 1516680867, 'y'),
('M218/2018', 'MK06', 'I008', 'Paving Gang Pedik Sari I', 'Jl Pedik Sari Sawangan', 'baru', '100mx3m', 25000000, '2018', NULL, 19, 1516680962, 19, 1516680962, 'y'),
('M219/2018', 'MK06', 'I008', 'Paving Gang Gangga Sari', 'Pedik Sawangan', 'baru', '200mx400m', 40000000, '2018', NULL, 19, 1516681092, 19, 1516681092, 'y'),
('M220/2018', 'MK06', 'I008', 'Paving Gang Jati Baru', 'Bogbogan Sawangan', 'baru', '400mx4m', 80000000, '2018', NULL, 19, 1516681176, 19, 1516681176, 'y'),
('M221/2018', 'MK06', 'I008', 'Paving Gang Tenguli', 'JL Tukad Bajang Sawangan', 'baru', '70mx4m', 15000000, '2018', NULL, 19, 1516681257, 19, 1516681257, 'y'),
('M222/2018', 'MK06', 'I007', 'Normalisasi Gorong Gorong dan Pengaspalan ', 'Jalan Nusa Dua Selatan Tembus Niko', 'rehab', '2Km', 3000000000, '2018', NULL, 18, 1516681574, 18, 1516681574, 'y'),
('M223/2018', 'MK06', 'I007', 'Perbaikan Lampu Jalan', 'Jalan Nusa Dua Selatan Tembus Niko', 'rehab', '150 titik', 750000000, '2018', NULL, 18, 1516681630, 18, 1516681630, 'y'),
('M224/2018', 'MK06', 'I007', 'Normalisasi Sungai atau Tukad', 'Tukad Timus, Tukad Bajang dan Tukad Beririt', 'baru', '3 paket', 1000000000, '2018', NULL, 18, 1516681700, 18, 1516683055, 'y'),
('M225/2018', 'MK06', 'I008', 'Paving dan gorong-Gorong Gang Kakao', 'JL Tukad Bajang Sawangan', 'baru', '100mx1,5m', 75000000, '2018', NULL, 19, 1516681752, 19, 1516681752, 'y'),
('M226/2018', 'MK06', 'I007', 'Normalisasi Gorong Gorong , Pengaspalan dan lampu penerangan jalan', 'Jalan Pantai Mengiat', 'baru', '1 Km', 2000000000, '2018', NULL, 18, 1516681816, 18, 1516681816, 'y'),
('M227/2018', 'MK06', 'I008', 'Paving Gang Sari', 'JL Tukad Bajang Sawangan', 'baru', '50mx2m', 10000000, '2018', NULL, 19, 1516681848, 19, 1516681848, 'y'),
('M228/2018', 'MK06', 'I007', 'Pembuatan Gorong Gorong ', 'Jalan Setra Peminge', 'baru', '500 m', 1000000000, '2018', NULL, 18, 1516681941, 18, 1516681941, 'y'),
('M229/2018', 'MK06', 'I008', 'Lampu Penerangan Jalan', 'Sawangan dan Pura Pedadian', 'lanjutan', '50 titik', 500000000, '2018', NULL, 19, 1516681982, 19, 1516681982, 'y'),
('M230/2018', 'MK06', 'I008', 'Penataan Parkir Pura Segara', 'Jl Gunung Payung II Sawangan', 'baru', '25mx25m', 250000000, '2018', NULL, 19, 1516682082, 19, 1516682082, 'y'),
('M231/2018', 'MK06', 'I008', 'Penataan Pelataran Pura Pengastulan', 'Sawangan', 'baru', '30mx20m', 300000000, '2018', NULL, 19, 1516682185, 19, 1516682185, 'y'),
('M232/2018', 'MK06', 'I008', 'Penataan Pelataran Pura Penaweng jagat', 'Sawangan', 'baru', '20mx18m', 200000000, '2018', NULL, 19, 1516682274, 19, 1516682274, 'y'),
('M233/2018', 'MK06', 'I008', 'Penataan Taman Lingkungan', 'Sawangan', 'lanjutan', '50mx1m', 50000000, '2018', NULL, 19, 1516682364, 19, 1516682364, 'y'),
('M234/2018', 'MK06', 'I008', 'Drainase jalan Desa Sawangan', 'Jl Desa Sawangan', 'baru', '400mx 0,6m', 500000000, '2018', NULL, 19, 1516682476, 19, 1516682476, 'y'),
('M235/2018', 'MK06', 'I008', 'Trotoar jalan Raya Nusa Dua Selatan', 'Sawangan', 'baru', '1000mx2m', 1500000000, '2018', NULL, 19, 1516682579, 19, 1516682579, 'y'),
('M236/2018', 'MK06', 'I008', 'Pengadaan air bersih', 'Pedik, gunung payung dan bogbogan Sawangan', 'lanjutan', '250 m', 1000000000, '2018', NULL, 19, 1516682688, 19, 1516682688, 'y'),
('M237/2018', 'MK06', 'I008', 'Pembangunan  Trotoar ', 'Jalan Segara dan jalan Desa Sawangan', 'baru', '1000mx1m', 1000000000, '2018', NULL, 19, 1516682803, 19, 1516682803, 'y'),
('M238/2018', 'MK05', 'I008', 'Pembinaan dan kesejahteraan kelompok BKL,BKB,BKR', 'Sawangan', 'baru', NULL, 100000000, '2018', NULL, 19, 1516682949, 19, 1516682949, 'y'),
('M239/2018', 'MK04', 'I008', 'Pengadaan bibit ternak sapi', 'Sawangan', 'baru', NULL, 100000000, '2018', NULL, 19, 1516683053, 19, 1516697099, 'y'),
('M240/2018', 'MK05', 'I008', 'Pengadaan alat kelengkapan posyandu ', 'Sawangan', 'baru', NULL, 50000000, '2018', NULL, 19, 1516683141, 19, 1516683141, 'y'),
('M241/2018', 'MK07', 'I008', 'Pembinaan sanggar Tari ', 'Sawangan', 'lanjutan', NULL, 100000000, '2018', NULL, 19, 1516683226, 19, 1516683226, 'y'),
('M242/2018', 'MK07', 'I008', 'Pembinaan Tari sakral dan tabuh', 'Sawangan', 'lanjutan', NULL, 200000000, '2018', NULL, 19, 1516683302, 19, 1516683302, 'y'),
('M243/2018', 'MK06', 'I016', 'Pembuatan Gorong - Gorong Saluran Air Hujan', 'Dari Perum Wisma Nusa Permai menuju Tukad Mati Mayaloka di Lingkungan Bualu', 'baru', '115 m X 1 meter', 600000000, '2018', NULL, 27, 1516683410, 27, 1516683410, 'y'),
('M244/2018', 'MK05', 'I008', 'Pengadaan sarana olah raga, meja tenis, bola ', 'Sawangan', 'baru', NULL, 50000000, '2018', NULL, 19, 1516683427, 19, 1516683427, 'y'),
('M245/2018', 'MK05', 'I016', 'Pembuatan Taman Bermain ', 'Lingk. Wisma Nusa Permai', 'baru', '10m x 10m', 100000000, '2018', NULL, 27, 1516683481, 27, 1516683481, 'y'),
('M246/2018', 'MK07', 'I008', 'Pembinaan Tari sakral dan tabuh', 'Sawangan', 'lanjutan', NULL, 200000000, '2018', NULL, 19, 1516683557, 19, 1516683557, 'y'),
('M247/2018', 'MK05', 'I039', 'pembuatan Tempat Bermain Anak Anak', 'Kelurahan Benoa', 'baru', '17', 1700000000, '2018', NULL, 56, 1516694429, 56, 1516694429, 'y'),
('M248/2018', 'MK06', 'I017', 'Pembangunan BKIA', 'Benoa', 'baru', '1 unit', 500000000, '2018', NULL, 57, 1516695436, 57, 1516695436, 'y'),
('M249/2018', 'MK06', 'I017', 'Pembangunan Puskesmas Kutsel / Relokasi Puskesmas', 'Benoa', 'baru', '1 unit', 3000000000, '2018', NULL, 57, 1516695524, 57, 1516695524, 'y'),
('M250/2018', 'MK06', 'I017', 'Rehad Sedang Perumahan Medis', 'puskesmas Induk', 'rehab', '4 unit', 180000000, '2018', NULL, 57, 1516695576, 57, 1516695576, 'y'),
('M251/2018', 'MK06', 'I017', 'Peningkatan Daya Listrik dari 900 menjadi 3000 watt', 'Klinik VCT & IMS', 'baru', '1 unit', 2500000, '2018', NULL, 57, 1516695664, 57, 1516695664, 'y'),
('M252/2018', 'MK06', 'I017', 'Rehad Penyengker Rumah Medis', 'Perumahan MedisPusk Induk', 'rehab', '20m2', 80000000, '2018', NULL, 57, 1516695719, 57, 1516695719, 'y'),
('M253/2018', 'MK06', 'I017', 'Pengadaan AC di Puskesmas', 'puskesmas ', 'baru', '7 unit', 70000000, '2018', NULL, 57, 1516695771, 57, 1516695771, 'y'),
('M254/2018', 'MK06', 'I017', 'Pengadaan Obat Fogging ( Cinoff )', 'puskesmas ', 'lanjutan', '200 Dirigen', 13000000, '2018', NULL, 57, 1516695841, 57, 1516695841, 'y'),
('M255/2018', 'MK06', 'I017', 'Pengadaan Mobil Fogging', 'puskesmas Induk', 'baru', '1 unit', 200000000, '2018', NULL, 57, 1516695881, 57, 1516695881, 'y'),
('M256/2018', 'MK06', 'I017', 'Pengadaan Mobil Ambulance', 'puskesmas Induk', 'baru', '1 unit', 200000000, '2018', NULL, 57, 1516695929, 57, 1516695929, 'y'),
('M257/2018', 'MK05', 'I017', 'Pengadaan Paket UKS Sekolah', '17 Sekolah', 'baru', '17 paket', 500000000, '2018', NULL, 57, 1516695978, 57, 1516695978, 'y'),
('M258/2018', 'MK05', 'I017', 'Pengadaan APE', 'puskesmas ', 'baru', '16', 55900000, '2018', NULL, 57, 1516696096, 57, 1516696096, 'y'),
('M259/2018', 'MK06', 'I017', 'Alat Alat Kesehatan', 'puskesmas , Pustu, Ambulan KBS', 'baru', '1 paket', 200000000, '2018', NULL, 57, 1516696186, 57, 1516696186, 'y'),
('M260/2018', 'MK05', 'I017', 'Dokter Jaga UGD 24 Jam', 'puskesmas ', 'baru', '3 orang', 100000000, '2018', NULL, 57, 1516696270, 57, 1516696270, 'y'),
('M261/2018', 'MK05', 'I017', 'Tenaga Apoteker', 'puskesmas ', 'baru', '1', 30000000, '2018', NULL, 57, 1516696315, 57, 1516696315, 'y'),
('M262/2018', 'MK05', 'I017', 'Tenaga Analis', 'puskesmas ', 'baru', '1 orang', 30000000, '2018', NULL, 57, 1516696355, 57, 1516696711, 'y'),
('M263/2018', 'MK05', 'I017', 'Tenaga Kesling', 'puskesmas ', 'baru', '2 orang', 60000000, '2018', NULL, 57, 1516696414, 57, 1516696688, 'y'),
('M264/2018', 'MK05', 'I017', 'Tenaga IT', 'puskesmas ', 'baru', '1 orang', 30000000, '2018', NULL, 57, 1516696477, 57, 1516696670, 'y'),
('M265/2018', 'MK05', 'I017', 'Tenaga Administrasi', 'puskesmas ', 'baru', '3 orang', 90000000, '2018', NULL, 57, 1516696527, 57, 1516696527, 'y'),
('M266/2018', 'MK05', 'I017', 'Sopir', 'puskesmas ', 'baru', '2 orang', 60000000, '2018', NULL, 57, 1516696591, 57, 1516696591, 'y'),
('M267/2018', 'MK05', 'I017', 'Cleaning Service', 'puskesmas ', 'baru', '3 orang', 90000000, '2018', NULL, 57, 1516696635, 57, 1516696635, 'y'),
('M268/2018', 'MK05', 'I017', 'Represing Kader Posyandu', 'puskesmas ', 'baru', '16 Posy', 8000000, '2018', NULL, 57, 1516696780, 57, 1516696780, 'y'),
('M269/2018', 'MK05', 'I017', 'Penambahan Insentif Kader Posyandu', 'puskesmas ', 'baru', '16 posy', 160800000, '2018', NULL, 57, 1516696826, 57, 1516696826, 'y'),
('M270/2018', 'MK05', 'I017', 'Penambahan Insentif Kader Posyandu Lansia', 'puskesmas ', 'baru', '6 posy', 21600000, '2018', NULL, 57, 1516696874, 57, 1516696874, 'y'),
('M271/2018', 'MK05', 'I017', 'Pemberian PMT Balita', 'puskesmas ', 'baru', '16 Posy', 40000000, '2018', NULL, 57, 1516696928, 57, 1516696928, 'y'),
('M272/2018', 'MK05', 'I017', 'Pemberian PMT Lansia', 'puskesmas ', 'baru', '6 Posy', 27000000, '2018', NULL, 57, 1516696990, 57, 1516696990, 'y'),
('M273/2018', 'MK05', 'I017', 'pengadaan Baju Kader Balita', 'puskesmas ', 'baru', '16 Posy', 16000000, '2018', NULL, 57, 1516697026, 57, 1516697026, 'y'),
('M274/2018', 'MK05', 'I017', 'pengadaan Baju Kader Lansia', 'puskesmas ', 'baru', '6 posy', 1600000, '2018', NULL, 57, 1516697076, 57, 1516697076, 'y'),
('M275/2018', 'MK06', 'I013', 'Taman', 'Lingkungan puri nusa dua', 'baru', '200m', 150000000, '2018', NULL, 24, 1516706517, 24, 1516706517, 'y'),
('M276/2018', 'MK04', 'I002', 'Pavingisasi ', 'Gg. Bambu III - Jl. Raya Siligita  ( Belakang Hardis )', 'baru', '25m x 5m', 37500000, '2018', NULL, 31, 1516721132, 31, 1516721132, 'y'),
('M277/2018', 'MK06', 'I002', 'Pavingisasi ', 'Jl. Teba Sari I - Jl. Raya Siligita  ( depan Bengkel Cuci Mobil )', 'baru', '200m x 3m', 180000000, '2018', NULL, 31, 1516721273, 31, 1516721273, 'y'),
('M278/2018', 'MK06', 'I002', 'Pavingisasi ', 'Gg. Teba Sari II - Jl. Raya Siligita  ( depan Bengkel Cuci Mobil )', 'baru', '70m x 3m', 63000000, '2018', NULL, 31, 1516721395, 31, 1516721395, 'y'),
('M279/2018', 'MK06', 'I002', 'Pavingisasi ', 'Pengaspalan - Jl. Pura Songit ( Inspeksi  ) ', 'baru', '200m x 5m', 1000000000, '2018', NULL, 31, 1516721582, 31, 1516721582, 'y'),
('M280/2018', 'MK06', 'I002', 'Lampu Penerangan Jalan', 'Jl. Taman Mumbul Lingkungan Bualu ', 'baru', ' 150 titik ', 1125000000, '2018', NULL, 31, 1516721668, 31, 1516721668, 'y'),
('M281/2018', 'MK06', 'I002', 'pengaspalan ', 'JL. Kebo Iwa Taman Mumbul', 'baru', '2km x 6m ', 12000000000, '2018', NULL, 31, 1516721770, 31, 1516721770, 'y'),
('M282/2018', 'MK04', 'I002', 'Pengembagan Objek Wisata Baru - Wisata Manggrove  /Bahari ', 'Nelayan Wana Seagara Alaslinggah', 'baru', '1 paket', 3000000000, '2018', NULL, 31, 1516721987, 31, 1516721987, 'y'),
('M283/2018', 'MK06', 'I002', 'Pavingisasi', 'Jaba Pura Alaslinggah - Pura Alaslinggah Taman Mumbul', 'baru', '6m x 30m', 36000000, '2018', NULL, 31, 1516722147, 31, 1516722147, 'y'),
('M284/2018', 'MK06', 'I002', 'Pondasi / Senderan Tukad Taman Mumbul ', 'Taman Mumbul ', 'baru', '1 paket', 1500000000, '2018', NULL, 31, 1516722331, 31, 1516722331, 'y'),
('M285/2018', 'MK07', 'I002', 'Renovasi Balai Banjar Bualu', 'Br. Bualu', 'baru', '1 paket', 3000000000, '2018', NULL, 31, 1516722395, 31, 1516722395, 'y'),
('M286/2018', 'MK06', 'I002', 'Pembuatan Taman di Pintu Masuk Taman Mumbul ', 'Taman Mumbul ', 'baru', '1 paket', 700000000, '2018', NULL, 31, 1516722554, 31, 1516722554, 'y'),
('M287/2018', 'MK06', 'I015', 'Perbaikan Gorong-Gorong & Got Lingkungan Permata Nusa Dua', 'Lingk. Permata Nusa Dua', 'baru', '5.580', 2000000000, '2018', NULL, 26, 1516723515, 26, 1516723515, 'y'),
('M290/2018', 'MK06', 'I022', 'Perbaikan DAK dan Plapon', 'SDN 4 Benoa', 'baru', '5m x 5m', 200000000, '2018', NULL, 39, 1516751978, 39, 1516751978, 'y'),
('M291/2018', 'MK06', 'I022', 'Penambahan beban Listrik', 'SDN 4 Benoa', 'baru', '15.000 kwh', 500000000, '2018', NULL, 39, 1516752074, 39, 1516752074, 'y'),
('M292/2018', 'MK06', 'I036', 'Perbaikan got Jln Gedong Sari jalan akses masuk ke SMKN 1 Kuta Selatan', 'SMKN 1 Kuta Selatan', 'baru', '100m2', 1000000000, '2018', NULL, 53, 1516752238, 53, 1516752238, 'y'),
('M293/2018', 'MK05', 'I023', 'Ruang Belajar', 'SDN 5 Benoa', 'baru', '8 unit', 1000000000, '2018', NULL, 40, 1516752322, 40, 1516752322, 'y'),
('M294/2018', 'MK06', 'I023', 'Pengadaan Gudang', 'SDN 5 Benoa', 'baru', '6x4', 20000000, '2018', NULL, 40, 1516752404, 40, 1516752404, 'y'),
('M295/2018', 'MK06', 'I023', 'sumur peresapan', 'SDN 5 Benoa', 'baru', '5 titik', 30000000, '2018', NULL, 40, 1516752478, 40, 1516752478, 'y'),
('M296/2018', 'MK06', 'I023', 'Pembuatan Wash Tafel	', 'SDN 4 Benoa', 'baru', '6 unit', 30000000, '2018', NULL, 40, 1516752572, 40, 1516752572, 'y'),
('M297/2018', 'MK06', 'I023', 'Pebuatan Toilet/Wc', 'SDN 5 Benoa', 'rehab', '50m2', 50000000, '2018', NULL, 40, 1516752636, 40, 1516752636, 'y'),
('M298/2018', 'MK06', 'I023', 'Penataan Kebun', 'SDN 5 Benoa', 'baru', '100m2', 50000000, '2018', NULL, 40, 1516752729, 40, 1516752729, 'y'),
('M299/2018', 'MK06', 'I026', '2 Bak sampah penampung', 'SDn 8 Benoa', 'baru', '2X1,5X1.2', 10000000, '2018', NULL, 43, 1516752847, 43, 1516752847, 'y'),
('M300/2018', 'MK06', 'I026', 'Pembuatan Gudng', 'SDn 8 Benoa', 'baru', '6x4', 20000000, '2018', NULL, 43, 1516752921, 43, 1516752921, 'y'),
('M301/2018', 'MK06', 'I026', 'Parkir Guru', 'SDn 8 Benoa', 'baru', '4x15', 15000000, '2018', NULL, 43, 1516753059, 43, 1516753059, 'y'),
('M302/2018', 'MK06', 'I026', '1 buah mesin air/ pompa air dan pipa', 'SDn 8 Benoa', 'baru', '1 set', 10000000, '2018', NULL, 43, 1516753100, 43, 1516753100, 'y'),
('M303/2018', 'MK06', 'I026', 'Pembutan Trally jendela dan pintu', 'SDn 8 Benoa', 'baru', '1 set', 12000000, '2018', NULL, 43, 1516753158, 43, 1516753158, 'y'),
('M304/2018', 'MK06', 'I026', 'Pembuatan Rak Sepatu untuk di perpustakaan', 'SDn 8 Benoa', 'baru', '1 set', 1000000, '2018', NULL, 43, 1516753212, 43, 1516753212, 'y'),
('M305/2018', 'MK06', 'I025', 'Pavingisasi ', 'SDN 7 Benoa', 'baru', '70m2', 56000000, '2018', NULL, 42, 1516753916, 42, 1516753916, 'y'),
('M306/2018', 'MK06', 'I025', 'Penataan Kebun', 'SDN 7 Benoa', 'baru', '80m2', 64000000, '2018', NULL, 42, 1516753970, 42, 1516753970, 'y'),
('M307/2018', 'MK07', 'I025', 'Pembuatan Bale Piasan Padmasana', 'SDN 7 Benoa', 'baru', '6m2', 25000000, '2018', NULL, 42, 1516754011, 42, 1516754011, 'y'),
('M308/2018', 'MK05', 'I025', 'Pojok Baca', 'SDN 7 Benoa', 'baru', '1 paket', 30000000, '2018', NULL, 42, 1516754049, 42, 1516754049, 'y'),
('M309/2018', 'MK06', 'I025', 'Kursi Untuk Wantilan', 'SDN 7 Benoa', 'baru', '100 unit', 50000000, '2018', NULL, 42, 1516754087, 42, 1516754087, 'y'),
('M310/2018', 'MK06', 'I024', 'UKS', 'SDN 6 Benoa', 'baru', '36m2', 144000000, '2018', NULL, 41, 1516754264, 41, 1516754264, 'y'),
('M311/2018', 'MK06', 'I024', 'Perlengkapan UKS', 'SDN 6 Benoa', 'baru', '1 paket', 80000000, '2018', NULL, 41, 1516754308, 41, 1516754308, 'y'),
('M312/2018', 'MK06', 'I024', 'Wantilan', 'SDN 6 Benoa', 'baru', '80m2', 320000000, '2018', NULL, 41, 1516754353, 41, 1516754353, 'y'),
('M313/2018', 'MK06', 'I024', 'pemavingan Halaman Sekolah', 'SDN 6 Benoa', 'baru', '1330', 2660000000, '2018', NULL, 41, 1516754397, 41, 1516754397, 'y'),
('M314/2018', 'MK06', 'I024', 'Tembok Penyengker', 'SDN 6 Benoa', 'baru', '85m2', 340000000, '2018', NULL, 41, 1516754435, 41, 1516754435, 'y'),
('M315/2018', 'MK06', 'I032', 'Pengadaan AC', 'SMPN 4 Kuta Selatan', 'baru', '20 unit', 120000000, '2018', NULL, 48, 1516755095, 48, 1516755095, 'y'),
('M316/2018', 'MK06', 'I032', 'Pavingisasi ', 'SMPN 4 Kuta Selatan', 'baru', '50m2', 50000000, '2018', NULL, 48, 1516755140, 48, 1516755140, 'y'),
('M317/2018', 'MK06', 'I032', 'Pemindahan gorong-gorong dari pasar sentral', 'SMPN 4 Kuta Selatan', 'baru', '200m', 820000000, '2018', NULL, 48, 1516755204, 48, 1516755204, 'y'),
('M318/2018', 'MK04', 'I032', 'Renovasi Lapangan Basket', 'SMPN 4 Kuta Selatan', 'rehab', '400 m2', 400000000, '2018', NULL, 48, 1516755267, 48, 1516755267, 'y'),
('M319/2018', 'MK06', 'I010', 'pengadaan perlengkapan posyandu ( meja, kursi, timbangan, dll)', 'Banjar Ancak', 'baru', '-', 50000000, '2018', NULL, 21, 1516756835, 21, 1516756835, 'y'),
('M320/2018', 'MK06', 'I010', 'peningkatan jalan lingkar pura penganyungan', 'pondok kampial menuju pura dalem penganyungan', 'rehab', '7 x 120 M', 150000000, '2018', NULL, 21, 1516756953, 21, 1516756953, 'y'),
('M321/2018', 'MK06', 'I010', 'saluran drainase dan trotoarisasi kiri dan kanan dari pura dalem- pura desa adat kampial yang rawan banjir', 'JL. Darmawangsa kampial', 'baru', '1300 X 2 M', 300000000, '2018', NULL, 21, 1516757120, 21, 1516757120, 'y'),
('M322/2018', 'MK06', 'I010', 'pembuatan penutup got dibelakang br. ancak', 'Banjar Ancak', 'baru', '100 m X 1,2 m', 50000000, '2018', NULL, 21, 1516757227, 21, 1516757227, 'y'),
('M323/2018', 'MK06', 'I015', 'Pavingisasi Lingk. Permata', 'Lingk. Permata Nusa Dua', 'baru', '10.500m2', 1150000000, '2018', NULL, 15, 1516770394, 15, 1516770394, 'y'),
('M324/2018', 'MK04', 'I015', 'Penghijauan', 'Lingk. Permata Nusa Dua', 'baru', '40', 40000000, '2018', NULL, 15, 1516770518, 15, 1516770518, 'y'),
('M325/2018', 'MK06', 'I035', 'Pembangunan Ruang kelas', 'SMA Dwi Jendra Bualu', 'baru', '3 Kelas', 350000000, '2018', NULL, 15, 1516770657, 15, 1516770741, 'y'),
('M326/2018', 'MK06', 'I015', 'Pembuatan Plang Nama-nama Jalan', 'Lingk. Permata Nusa Dua', 'baru', '12', 12000000, '2018', NULL, 15, 1516771057, 15, 1516771057, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `z_musrenbang_kat`
--

CREATE TABLE `z_musrenbang_kat` (
  `mk_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `mk_kelompok` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mk_status` enum('y','n') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_musrenbang_kat`
--

INSERT INTO `z_musrenbang_kat` (`mk_id`, `mk_kelompok`, `mk_status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
('MK04', 'Ekonomi & Sumber Daya Alam', 'y', 15, 1515439106, 15, 1515439106),
('MK05', 'Pengembangan Sumber Daya Manusia', 'y', 15, 1515439121, 15, 1515439121),
('MK06', 'Sarana dan Prasarana Wilayah', 'y', 15, 1515439131, 15, 1515439131),
('MK07', 'Sosial Budaya', 'y', 15, 1515439143, 15, 1515439143);

-- --------------------------------------------------------

--
-- Table structure for table `z_profile_anggaran`
--

CREATE TABLE `z_profile_anggaran` (
  `pa_id` int(1) NOT NULL,
  `pa_isi` text,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `pa_status` enum('y','n','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_profile_anggaran`
--

INSERT INTO `z_profile_anggaran` (`pa_id`, `pa_isi`, `created_at`, `created_by`, `updated_at`, `updated_by`, `pa_status`) VALUES
(1, '<p style=\"font-weight: 400; text-align: center;\"><strong>DEWAN PIMPINAN PUSAT</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Lembaga pemberdayaan masyarakat</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>ANGGARAN DASAR</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>LEMBAGA PEMBERDAYAAN MASYARAKAT</strong></p>\r\n<p style=\"text-align: center;\"><strong>( L P M )</strong></p>\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Menghadapi masa depan bangsa,&nbsp;di era globalisasi, demokrasi dan otonomi daerah&nbsp;&nbsp;kehidupan dan&nbsp;ketahanan masyarakat&nbsp;Indonesia&nbsp; sebagai dasar ketahanan nasional&nbsp; memerlukan perhatian dari seluruh kekuatan bangsa&nbsp;untuk&nbsp;mewujudkan tuntutan dari hati nurani&nbsp;seluruh rakyat&nbsp;&nbsp;yang&nbsp;mandiri, tangguh, maju,&nbsp; adil dan makmur&nbsp;&nbsp;sebagaimana amanat&nbsp; Undang Undang Dasar Negara Republik Indonesia.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Selaras dengan Visi dan Misi Pemerintah RI 2015 &ndash; 2019 yang menyatakan terwujudnya Indonesia yang berdaulat, mandiri dan berkepribadianberlandaskan gotong royong, maka&nbsp;&nbsp;perlu didukung dengan Lembaga&nbsp;yang dapat menyatukan semangat&nbsp;&nbsp; dalam&nbsp;jiwa&nbsp;kehidupan&nbsp;masyarakat Desa / Kelurahan yaitu Lembaga Pemberdayaan Masyarakat (LPM)&nbsp;yang merupakan lembaga kemasyarakatan yang telah berperan&nbsp;aktif dalam pembangunan sebagai mitra pemerintah dan pihak-pihak lain. Untuk itu LPM&nbsp;harus tetap dijaga dan ditingkatkan sebagai institusi yang mampu memotivasi dan mendinamisasikan gerak&nbsp;di segala aspek kehidupan&nbsp;masyarakat.</p>\r\n<p style=\"font-weight: 400;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Dengan memerhatikan alinea pertama&nbsp;dan&nbsp;kedua&nbsp; serta&nbsp;hasil&nbsp;Munas Il&nbsp;LPM&nbsp;&nbsp; Tahun 2010,&nbsp;maka dengan Rahmat Tuhan Yang Maha Esa Anggaran Dasar dan Anggaran Rumah Tangga Lembaga Pemberdayaan Masyarakat Tahun 2010 disempurnakan.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB I</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>NAMA, TEMPAT, KEDUDUKAN DAN WAKTU</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasar&nbsp;</strong><strong>&nbsp;</strong><strong>1</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Nama Organisasi</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Organisasi ini bernama Lembaga Pemberdayaan&nbsp; Masyarakat ( LPM ).</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp;</strong><strong>&nbsp;</strong><strong>2</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Tempat Kedudukan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pimpinan Pusat&nbsp;Lembaga Pemberdayaan Masyarakat&nbsp; berkedudukan di&nbsp;IbuKota Negara Republik Indonesia.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pimpinan Daerah&nbsp;Lembaga Pemberdayaan Masyarakat Provinsi di Ibukota Provinsi.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pimpinan Daerah&nbsp;Lembaga Pemberdayaan Masyarakat Kabupaten/Kota berkedudukan di Ibukota Kabupaten / Kota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pimpinan Cabang&nbsp;Lembaga Pemberdayaan Masyarakat Kecamatan berkedudukan di Ibukota Kecamatan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Lembaga Pemberdayaan Masyarakat&nbsp;Desa / Kelurahan&nbsp;&nbsp;berkedudukan di&nbsp;Desa / Kelurahan / sebutan lain.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 3</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Waktu Pembentukan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Lembaga Pemberdayaan Masyarakat dibentuk pada tanggal 21&nbsp;Juli 2000 di Bandung untuk jangka waktu yang tidak ditentukan.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB II</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>KEDAULATAN</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 4</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Kedaulatan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Kedaulatan organisasi ada di tangan anggota dan dilaksanakan sepenuhnya dalam Musyawarah Nasional.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB III</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>AZAS, LANDASAN DAN TUJUAN</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 5</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Azas</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">Lembaga Pemberdayaan Masyarakat berazaskan Pancasila dan Undang Undang Dasar&nbsp;Negara&nbsp;Republik Indonesia tahun&nbsp;1945.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 6</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Landasan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Lembaga Pemberdayaan Masyarakat berlandaskan kepada Peraturan Perundang-Undangan yang berlaku dan Keputusan-keputusan Musyawarah anggota sebagai landasan operasional.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 7</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Tujuan</strong></p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Lembaga Pemberdayaan Masyarakat&nbsp; di&nbsp;tingkat Pusat, Provinsi, Kabupaten / Kota, Kecamatan,&nbsp;&nbsp;Desa&nbsp;/Kelurahan&nbsp;/sebutan lain&nbsp;bertujuan memberdayakan seluruh potensi masyarakat&nbsp;Indonesia.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 8.</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Fungsi</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Lembaga Pemberdayaan Masyarakat berfungsi :</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Meningkatkan partisipasi masyarakat dalam pembangunan&nbsp; di segala bidang.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Menjembatani antara kepentingan masyarakat dengan pemerintah dan pihak lain sebagai wujud pembangunan partisipatif.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Berperan secara aktif dalam membina persatuan dan kesatuan bangsa.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">&nbsp;&nbsp;Mengembangkan program pemerintah dengan aspirasi masyarakat.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Meningkatkan kemampuan ekonomi rakyat, baik yang berada di&nbsp;kota maupun di&nbsp;Desa&nbsp;/&nbsp;Kelurahan&nbsp;/sebutan lain yang setingkat, agar dapat menikmati hasil-hasil pembangunan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Memperkuat potensi masyarakat untuk bergotong-royong dalam aksi sosial dan penanggulangan bencana.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB IV</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BENTUK DAN SIFAT</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 9</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Bentuk</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Lembaga Pemberdayaan Masyarakat adalah organisasi yang berbentuk kesatuan dan terstruktur, mulai dari Pusat, Provinsi, Kabupaten / Kota,&nbsp;Kecamatan&nbsp;dan Desa / Kelurahan / sebutan lain&nbsp;&nbsp;di&nbsp; seluruh Indonesia.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 10</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Sifat</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Lembaga Pemberdayaan Masyarakat bersifat independen.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB V</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>ATRIBUT</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 11</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">Lambang, Panji,&nbsp;Mars, Hymne&nbsp;dan Atribut lainnya diatur dalam Anggaran Rumah Tangga.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB VI</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>PENGURUS</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">Setiap orang dapat dipilih untuk menjadi pengurus LPM di semua tingkatan</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Syarat-syarat Pengurus :</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Tau, mau dan mampu menjalankan amanat Munas.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Sehat Jasmani dan Rohani, Jujur dan Berkepribadian baik.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Sanggup dan bersedia untuk memajukan organisasi</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Sanggup hadir, bekerja dan menjalankan roda organisasi</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Sedang tidak kehilangan Hak nya bebas dari hukuman Pidana / Perdata lebih dari 5 (lima) tahun.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 1</strong><strong>2</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Keanggotaan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Keanggotaan&nbsp; Lembaga Pemberdayaan Masyarakat terdiri dari :</p>\r\n<ol style=\"text-align: justify;\">\r\n<li style=\"font-weight: 400;\">Anggota Biasa.</li>\r\n<li style=\"font-weight: 400;\">Anggota Luar Biasa.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: justify;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 1</strong><strong>3</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Anggota Biasa adalah&nbsp;terdiri dari orang per-orang yang menjadi anggota dan atau pengurus LPM.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Anggota Luar Biasa&nbsp;adalah orang per-orang&nbsp; yang peduli dan mempunyai keahlian tertentu ikut berberpartisipasi dalam pengembangan Pemberdayaan Masyarakat.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: justify;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 1</strong><strong>4</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Hak Anggota</strong></p>\r\n<p style=\"font-weight: 400; text-align: justify;\"><strong>Hak Anggota Biasa adalah :</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Hak memilih dan dipilih.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Hak mengemukakan pendapat dan mengajukan pertanyaan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Hak untuk mengikuti kegiatan Lembaga Pemberdayaan Masyarakat dan hak untuk memperoleh fasilitas organisasi.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Hak membela diri.</li>\r\n</ol>\r\n<p><strong>Hak Anggota Luar Biasa :</strong></p>\r\n<ol>\r\n<li>Mengemukakan pendapat dan mengajukan usul-usul.</li>\r\n<li>Mengikuti kegiatan organisasi Lembaga Pemberdayaan Masyarakat.</li>\r\n<li>Mempunyai hak &nbsp;di pilih dan tidak mempunyai hak memilih.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: justify;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 1</strong><strong>5</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Kewajiban Anggota</strong></p>\r\n<p style=\"text-align: justify;\"><strong>Kewajiban Anggota Biasa&nbsp; adalah :</strong></p>\r\n<ol style=\"text-align: justify;\">\r\n<li style=\"font-weight: 400;\">Menaati Anggaran Dasar dan Anggaran Rumah Tangga&nbsp; serta peraturan organisasi.</li>\r\n<li style=\"font-weight: 400;\">Menjaga dan menjunjung tinggi nama baik dan kehormatan&nbsp; Lembaga Pemberdayaan Masyarakat.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\"><strong>Kewajiban Anggota Luar Biasa adalah :</strong></p>\r\n<ol>\r\n<li>Menaati Anggaran Dasar dan Anggaran Rumah Tangga serta peraturan organisasi.</li>\r\n<li>Menjaga&nbsp; dan menjunjung tinggi nama baik dan kehormatan Lembaga Pemberdayaan Masyarakat.</li>\r\n<li>Memberikan bantuan yang tidak mengikat.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB VII</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>ORGANISASI</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 1</strong><strong>6</strong></p>\r\n<p style=\"font-weight: 400; text-align: justify;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Lembaga Pemberdayaan Masyarakat berada dalam garis hubungan berjenjang dari&nbsp; Tingkat&nbsp;Pusat, Provinsi, Kabupaten / Kota,&nbsp; Kecamatan dan Desa / Kelurahan / sebutan lain:</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Tingkat&nbsp;Pusat&nbsp;disebut DPP Lembaga Pemberdayaan Masyarakat.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Tingkat Provinsi disebut DPD Lembaga Pemberdayaan Masyarakat Provinsi.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Tingkat Kabupaten / Kota disebut DPD Lembaga Pemberdayaan Masyarakat Kabupaten / Kota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Tingkat Kecamatan disebut&nbsp;DPC&nbsp;Lembaga Pemberdayaan Masyarakat Kecamatan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Tingkat Desa&nbsp;/&nbsp;Kelurahan&nbsp;/ sebutan lain&nbsp;disebut Lembaga Pemberdayaan Masyarakat Desa / Kelurahan&nbsp;(LPM D&nbsp;/&nbsp;K).</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Pasal 17</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>DPP Lembaga Pemberdayaan Masyarakat.</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">DPP Lembaga Pemberdayaan Masyarakat merupakan pelaksana organisasi yang bersifat kolektif mewakili organisasi ke&nbsp;dalam dan ke&nbsp;luar, dalam melaksanakan tugasnya yang bertanggung jawabkepada Musyawarah Nasional.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPP Lembaga Pemberdayaan Masyarakat&nbsp; berwenang untuk menentukan kebijakan organisasi dan berkewajiban melaksanakan dan mematuhi Anggaran Dasar dan Anggaran Rumah Tangga serta segala keputusan Musyawarah Nasional, Musyawarah Luar Biasa, Rapat Kerja Nasional serta Rapat Pimpinan Nasional.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pimpinan Pusat berwenang mengukuhkan dan mengesahkan susunan dan personalia DPD Lembaga Pemberdayaan Masyarakat hasil Musyawarah Daerah Provinsi.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 1</strong><strong>8</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>DPD Lembaga Pemberdayaan Masyarakat Provinsi.</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lembaga Pemberdayaan Masyarakat Provinsi merupakan pelaksana organisasi yang bersifat kolektif mewakili organisasi kedalam dan ke&nbsp;luar, dalam melaksanakan tugasnya yang bertanggung jawab&nbsp;kepada Musyawarah Daerah Provinsi.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lembaga Pemberdayaan Masyarakat Provinsi&nbsp; berwenang untuk menentukan kebijakan organisasi di tingkat Provinsi dan Musyawarah&ndash;musyawarah Daerah yang bersangkutan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">&nbsp;DPD Lembaga Pemberdayaan Masyarakat Provinsi berkewajiban&nbsp; memberikan laporankegiatan&nbsp; organisasi&nbsp;secara periodik&nbsp;kepada DPP.&nbsp;</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lembaga Pemberdayaan Masyarakat Provinsi&nbsp; berwenang mengukuhkan dan mengesahkan susunan dan personalia DPD Lembaga Pemberdayaan Masyarakat hasil Musyawarah Daerah Kabupaten / Kota.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp;</strong><strong>19</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>DPD Lembaga Pemberdayaan Masyarakat Kabupaten / Kota :</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lembaga Pemberdayaan Masyarakat&nbsp; Kabupaten / Kota merupakan pelaksana organisasi yang bersifat kolektif mewakili organisasi kedalam dan ke&nbsp;luar, dalam melaksanakan tugasnya yang bertanggung jawab&nbsp;kepada Musyawarah Daerah Kabupaten / Kota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lembaga Pemberdayaan Masyarakat Kabupaten / Kota&nbsp; berwenang untuk menentukan kebijakan organisasi di Daerah Kabupaten / Kota dan Musyawarah&ndash;musyawarah Daerah Kabupaten / Kota yang bersangkutan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lembaga Pemberdayaan Masyarakat Kabupaten / Kota&nbsp; berkewajiban&nbsp; memberikan laporankegiatan organisasi kepada DPD LPM Propinsi.&nbsp;</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPD Lermbaga Pemberdayaan Masyarakat Kabupaten / Kota&nbsp; berwenang mengukuhkan dan mengesahkan susunan dan personalia DPC&nbsp;Lembaga Pemberdayaan Masyarakat hasil Musyawarah Kecamatan.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 2</strong><strong>0</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>DPC&nbsp;Lembaga Pemberdayaan Masyarakat&nbsp;Kecamatan&nbsp;&nbsp;:</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">DPCLembaga Pemberdayaan Masyarakat&nbsp; Kecamatan&nbsp;merupakan pelaksana organisasi yang bersifat kolektif mewakili organisasi ke&nbsp;dalam dan ke&nbsp;luar, dalam melaksanakan tugasnya yang bertanggung jawab pada Musyawarah&nbsp;Cabang Kecamatan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPCLembaga Pemberdayaan Masyarakat Kecamatan&nbsp;&nbsp;berwenang untuk menentukan kebijakan organisasi&nbsp;Kecamatan&nbsp;dan Musyawarah&ndash;musyawarah&nbsp;Kecamatan&nbsp;yang bersangkutan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPCLembaga Pemberdayaan Masyarakat Kecamatan&nbsp; berkewajiban untuk memberikan laporankegiatan&nbsp;organisasi kepada DPD LPM&nbsp;Kabupaten / Kota.&nbsp;</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">DPC&nbsp;Lermbaga Pemberdayaan Masyarakat&nbsp;Kecamatan&nbsp; berwenang mengukuhkan dan mengesahkan susunan dan personalia&nbsp; Lembaga Pemberdayaan Masyarakat hasil MusyawarahDesa / Kelurahan.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 2</strong><strong>1</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Lembaga Pemberdayaan Masyarakat Desa / Kelurahan&nbsp;</strong><strong>(LPM D</strong><strong>&nbsp;</strong><strong>/</strong><strong>&nbsp;</strong><strong>K)</strong></p>\r\n<ol style=\"font-weight: 400; text-align: center;\">\r\n<li style=\"text-align: justify;\">Lembaga Pemberdayaan Masyarakat&nbsp;&nbsp;Desa / Kelurahan&nbsp;merupakan pelaksana organisasi yang bersifat kolektif mewakili organisasi ke&nbsp;dalam dan ke&nbsp;luar, dalam melaksanakan tugasnya yang bertanggung jawab pada Musyawarah&nbsp;Desa / Kelurahan.</li>\r\n<li style=\"text-align: justify;\">Lembaga Pemberdayaan Masyarakat Desa / Kelurahan merupakan organisasi terendah dalam struktur organisasi sebagai pelaksana kebijakan pemberdayaan masyarakat di Desa / Kelurahan&nbsp;/sebutan lain.</li>\r\n<li style=\"text-align: justify;\">Pengurus lembaga Pemberdayaan Masyarakat&nbsp; Desa / Kelurahan&nbsp;&nbsp; berkewajiban memberikan laporan kegiatan&nbsp;secara periodik&nbsp;kepada&nbsp;DPC&nbsp;Lembaga Pemberdayaan Masyarakat Kecamatan dan kepada Musyawarah Desa / Kelurahan.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB VIII</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>WAKTU DAN RAPAT-RAPAT</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasa</strong><strong>l</strong><strong>&nbsp; 2</strong><strong>2</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Waktu Penyelenggaraan Musyawarah dan Rapat</strong><strong>-r</strong><strong>apat</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Musyawarah Nasional Lembaga Pemberdayaan&nbsp;Masyarakat. Musyawarah Daerah Lembaga Pemberdayaan Masyarakat Provinsi, Kabupaten/Kota serta Musyawarah Lembaga Pemberdayaan Masyarakat Kecamatan diadakan satu kali dalam waktu 5 ( lima ) tahun.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Musyawarah&nbsp;Kerja DPP Lembaga Pemberdayaan Masyarakat, Musyawarah Kerja Daerah Lembaga Pemberdayaan Masyarakat Provinsi, Kabupaten / Kota&nbsp;DPC&nbsp;Kecamatan&nbsp;dan Lembaga Pemberdayaan Masyarakat Desa / Kelurahan&nbsp;masing-masing diadakan&nbsp;minimal satu&nbsp;kali dalam waktu&nbsp; 1 (satu)&nbsp;periode kepengurusan.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Rapat&nbsp; DPP, DPD Provinsi, Kabupaten/Kota,&nbsp;&nbsp;DPC&nbsp;&nbsp;Kecamatan&nbsp;dan LPM D&nbsp;/&nbsp;K&nbsp;diadakan sewaktu-waktu sesuai dengan kebutuhan organisasi.</li>\r\n<li style=\"text-align: justify;\">Musyawarah&nbsp;Desa /&nbsp;Kelurahan diadakan&nbsp;5&nbsp;(lima) tahun satu kali.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB IX</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>KUORUM DAN PENGAMBILAN KEPUTUSAN</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 2</strong><strong>3</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Kuorum</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Musyawarah Nasional dinyatakan mencapai kuorum dan sah apabila dihadiri oleh sekurang-kurangnya 2/3 (dua pertiga) jumlah anggota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Rapat-rapat dinyatakan memenuhi kuorum dan sah apabila dihadiri oleh sekurang-kurangnya 50 % ( lima puluh persen) + 1 (satu)&nbsp; dari jumlah anggota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Apabila kuorum tidak tercapai maka musyawarah dapat ditunda :</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Untuk Musyawarah selama-lamanya 1x24 (satu kali dua puluh empat)&nbsp; jam.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Sedangkan untuk Rapat &ndash; Rapat selama-lamanya 2 (dua) jam.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Apabila sesudah penundaan musyawarah dan rapat-rapat belum tercapai maka musyawarah dan rapat-rapat tetap dilangsungkan dan seluruh keputusan yang diambil adalah sah dan mengikat organisasi maupun anggota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Khusus yang menyangkut keputusan musyawarah tentang pemilihan pimpinan penyempurnaan atau&nbsp;&nbsp; perubahan&nbsp; Anggaran Dasar&nbsp;&nbsp; dan Anggaran Rumah Tangga serta&nbsp;perubahan organisasi dinyatakan mencapai kuorum dan sah apabila dihadiri sekurang-kurangnya 2/3 (dua pertiga) dari jumlah peserta.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: justify;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 2</strong><strong>4</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pengambilan Keputusan</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Semua keputusan yang diambil dalam musyawarah dan rapat-rapat didasarkan atas musyawarah untuk&nbsp; mufakat.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Apabila ayat 1 pasal 23 tidak tercapai, maka keputusan diambil berdasarkan suara terbanyak dari jumlah peserta yang hadir.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Keputusan untuk pemilihan pimpinan diambil berdasarkan suara terbanyak dari peserta yang hadir yang memiliki hak suara.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Keputusan untuk perubahan penyempurnaan Anggaran Dasar dan Anggaran Rumah Tangga berdasarkan persetujuan Musyawarah Nasional sekurang-kuranggnya 2/3 (dua pertiga) kuorum pada Musyawarah Nasional.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Untuk pembubaran organisasi, keputusan yang diambil berdasarkan persetujuan mutlak kuorum pada Musyawarah Nasional&nbsp; yang khusus diadakan untuk itu.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB X</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>LEMBAGA YANG DIBINA</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 2</strong><strong>5</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">Lembaga Pemberdayaan Masyarakat dapat membentuk Badan Usaha lain sesuai dengan kebutuhan.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB&nbsp;&nbsp; XI</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>DEWAN FASILITATOR DAN DEWAN PAKAR</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 2</strong><strong>6</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Fasilitator Lembaga Pemberdayaan Masyarakat merupakan Badan yang memberi&nbsp;fasilitaskapada&nbsp;Lembaga Pemberdayaan Masyarakat diminta atau tidak diminta.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pakar Lembaga pemberdayaan Masyarakat merupakan badan yang memberikan pertimbangan dan atau saran kepada Lembaga Pemberdayaan Masyarakat diminta atau tidak diminta.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Fasilitator dan Dewan Pakar Lembaga Pemberdayaan Masyarakat dipilih pada tingkatannya masing-masing.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Jumlah Anggota Dewan Fasilitator dan Dewan Pakar&nbsp; Lembaga Pemberdayaan Masyarakat disesuaikan dengan kebutuhan, terdiri dari :</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Ketua merangkap Anggota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa Anggota.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 2</strong><strong>7</strong></p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Fasilitator dan Dewan Pakar Lembaga Pemberdayaan Masyarakat&nbsp;Pusat, Provinsi, Kabupaten/Kota, Kecamatan, Desa/Kelurahan&nbsp; merupakan&nbsp;badan yang memfasilitasi, memberi usul dan saran baik diminta atau tidak diminta.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Fasilitator dan Dewan Pakar Lembaga Pemberdayaan Masyarakat&nbsp;&nbsp; dikukuhkan dan disahkan oleh&nbsp;pengurus&nbsp;LPM&nbsp;setingkat lebih tinggi.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB XII</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>SUSUNAN PENGURUS</strong><strong>&nbsp;LEMBAGA PEMBERDAYAAN MASYARAKAT</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 2</strong><strong>8</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>DEWAN PIMPINAN PUSAT</strong></p>\r\n<p style=\"font-weight: 400; text-align: justify;\">&nbsp;</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan Pimpinan Pusat Lembaga Pemberdayaan Masyarakat&nbsp; terdiri dari :</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Ketua Umum.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa orang Ketua.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Sekretaris Jenderal.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa orang Sekretaris.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Bendahara Umum.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa orang Bendahara.&nbsp;</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Susunan kepengurusan seperti dimaksud ayat 1 (satu)&nbsp; pasal ini dilengkapi dengan beberapa&nbsp; Departemen&nbsp; sesuai dengan kebutuhan organisasi, yang selanjutnya diatur dalam ART.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp;&nbsp;</strong><strong>29</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Dewan Pimpinan Daerah Pro</strong><strong>v</strong><strong>insi</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Dewan&nbsp; Pimpinan Daerah Lembaga Pemberdayaan Masyarakat Provinsi terdiri dari&nbsp; :</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Ketua.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa orang Wakil Ketua.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Sekretaris.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa orang Wakil Sekretaris.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Bendahara.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Beberapa orang Wakil Bendahara.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Susunan kepengurusan seperti dimaksud ayat 1 (satu)&nbsp; pasal ini dilengkapi dengan beberapa Biro&nbsp; sesuai dengan kebutuhan, yang selanjutnya diatur dalam ART.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 3</strong><strong>0</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Dewan Pimpinan Daerah Kabupaten / Kota</strong></p>\r\n<p>Dewan Pimpinan Daerah&nbsp; Lembaga Pemberdayaan Masyarakat Kabupaten / Kota terdiri dari</p>\r\n<ol style=\"text-align: justify;\">\r\n<li style=\"font-weight: 400;\">Seorang Ketua.</li>\r\n<li style=\"font-weight: 400;\">Beberapa orang Wakil Ketua.</li>\r\n<li style=\"font-weight: 400;\">Seorang Sekretaris.</li>\r\n<li style=\"font-weight: 400;\">Beberapa orang Wakil Sekretaris.</li>\r\n<li style=\"font-weight: 400;\">Seorang Bendahara.</li>\r\n<li style=\"font-weight: 400;\">Beberapa orang Wakil Bendahara.</li>\r\n<li style=\"font-weight: 400;\">Susunan kepengurusan seperti dimaksud ayat 1 (satu)&nbsp; pasal ini dilengkapi dengan beberapa Bidang sesuai dengan kebutuhan, yang selanjutnya diatur dalam ART.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 3</strong><strong>1</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Dewan Pimpinan Cabang&nbsp;</strong><strong>Lembaga Pemberdayaan Masyarakat Kecamatan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Lembaga Pemberdayaan Masyarakat Kecamatan terdiri dari :</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Ketua.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang wakil Ketua.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Sekretaris.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang wakil&nbsp;Sekretaris.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Bendahara.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang wakil&nbsp;Bendahara.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Susunan Kepengurusan pada ayat 1 diatas dilengkapi dengan beberapa bagian sesuai kebutuhan, yang selanjutnya diatur dalam ART.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 3</strong><strong>2</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pengurus Lembaga Pemberdayaan Masyarakat Desa / Kelurahan</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Pengurus Lembaga Pemberdayaan Masyarakat Desa / Kelurahan&nbsp; terdiri dari :</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Ketua.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang wakil Ketua</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Sekretaris.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang wakil&nbsp;Sekretaris</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Seorang Bendahara.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Susunan Kepengurusan pada ayat 1 diatas dilengkapi dengan beberapa&nbsp;Seksi sesuai kebutuhan, yang selanjutnya diatur dalam ART.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB&nbsp; XIII</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>KEUANGAN</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 3</strong><strong>3</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Sumber Dana</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">Keuangan untuk membiayai kegiatan organisasi diperoleh dari :</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Iuran Anggota.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">APBN / APBD.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Bantuan yang tidak mengikat.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Usaha &ndash; usaha yang sah.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 3</strong><strong>4</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Penggunaan dana</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: justify;\">Pimpinan di setiap tingkat organisasi bertanggung jawab atas dana serta pengelolaan harta kekayaan organisasi pada tingkat masing-masing.</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB XIV</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>ANGGARAN RUMAH TANGGA</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal&nbsp; 3</strong><strong>5</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<ol style=\"text-align: center;\">\r\n<li style=\"font-weight: 400; text-align: justify;\">Hal-hal yang belum diatur dalam Anggaran Dasar ini, diatur dalam Anggaran Rumah Tangga dan tidak boleh bertentangan dengan Anggaran Dasar.</li>\r\n<li style=\"font-weight: 400; text-align: justify;\">Anggaran Rumah Tangga sebagai penjabaran ketentuan &ndash; ketentuan&nbsp; Anggaran Dasar disahkan oleh Musyawarah Nasional.</li>\r\n</ol>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>BAB&nbsp; XV</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>KETENTUAN PENUTUP</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pasal 3</strong><strong>6</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">Anggaran Dasar ini ditetapkan dan&nbsp;disahkan dalam Musyawarah Nasional III&nbsp; LPM.</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Ditetapkan&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; di Jakarta</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>Pada tanggal&nbsp; :&nbsp; 21 Januari 2017</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>KOMISI A</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">Ketua&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sekretaris</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">(...................................)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(................................)</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\"><strong>ANGGOTA</strong></p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">(.............................)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (................................)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (.............................)</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">(.............................)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (................................)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (.............................)</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>\r\n<p style=\"font-weight: 400; text-align: center;\">&nbsp;</p>', 1515086290, 9, 1515234762, 15, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `z_profile_struktur`
--

CREATE TABLE `z_profile_struktur` (
  `ps_id` int(1) NOT NULL,
  `ps_isi` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `ps_status` enum('y','n') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `z_profile_struktur`
--

INSERT INTO `z_profile_struktur` (`ps_id`, `ps_isi`, `created_by`, `created_at`, `updated_by`, `updated_at`, `ps_status`) VALUES
(1, '<p style=\"text-align: center;\"><strong>SUSUNAN PENGURUS LEMBAGA PEMBERDAYAAN MASYARAKAT ( LPM ) KELURAHAN BENOA </strong></p>\r\n<p style=\"text-align: center;\"><strong>MASA BAKTI 2017 &ndash; 2020</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>KETUA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>: I Wayan Ambara Putra, ST ( Balekembar )</p>\r\n<p><strong>WAKIL KETUA I</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : I Ketut Nesa, SE ( Pande )</p>\r\n<p><strong>WAKIL KETUA II</strong>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : I Made Sumadya, ST ( Menesa )</p>\r\n<p><strong>WAKIL KETUA III</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : I Wayan Bawa Antara, SH. ( Sawangan )</p>\r\n<p><strong>SEKRETARIS I</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: I Wayan Sata, S.Pd.,M.Pd.H ( Pande )</p>\r\n<p><strong>SEKRETARIS II</strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : I Made Muliasa,ST ( Mumbul)</p>\r\n<p><strong>BENDAHARA I</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : I Gede Suyasa, SE ( Bualu )</p>\r\n<p><strong>BENDAHARA II</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : I Made Wisman &nbsp;( Balekembar )</p>\r\n<p>&nbsp;</p>\r\n<p><strong>SEKSI - SEKSI</strong></p>\r\n<p><strong>BIDANG AGAMA&nbsp; &nbsp;&nbsp;</strong></p>\r\n<ol>\r\n<li>I Gusti Ketut Alit Adnyana ( Bualu Indah )</li>\r\n<li>Baik Ginting Suka ( Permata Nusa Dua )</li>\r\n</ol>\r\n<p><strong>BIDANG SENI DAN BUDAYA</strong></p>\r\n<ol>\r\n<li>I Nyoman Astina ( Menesa )</li>\r\n<li>I Wayan Santika ( Penyarikan )</li>\r\n</ol>\r\n<p><strong>BIDANG ORGANISASI DAN KEMITRAAN</strong></p>\r\n<ol>\r\n<li>I Made Laksana ( Sawangan)</li>\r\n<li>I Gede Eka Saputra ( Peminge )</li>\r\n</ol>\r\n<p><strong>BIDANG KEAMANAN DAN KETERTIBAN</strong></p>\r\n<ol>\r\n<li>I Wayan Suharyana, SH. ( Peken )</li>\r\n<li>I Ketut Tena ( Bualu )</li>\r\n</ol>\r\n<p><strong>BIDANG PENDIDIKAN DAN KETERAMPILAN</strong></p>\r\n<ol>\r\n<li>I Made Asa, S.Pd.,MM ( Terora )</li>\r\n<li>I Nyoman Nurka ( Puri Nusa Dua )</li>\r\n</ol>\r\n<p><strong>BIDANG PEMBANGUNAN DAN LINGKUNGAN HIDUP</strong></p>\r\n<ol>\r\n<li>I Ketut Sukisna ( Celuk )</li>\r\n<li>I Made Duana ( Ancak )</li>\r\n</ol>\r\n<p><strong>BIDANG PEMBERDAYAAN EKONOMI KERAKYATAN DAN TENAGA KERJA</strong></p>\r\n<ol>\r\n<li>I Nyoman Sujana ( Mumbul )</li>\r\n<li>I Wayan Suartana,SH ( Ancak )</li>\r\n</ol>\r\n<p><strong>BIDANG PEMUDA DAN OLAH RAGA</strong></p>\r\n<ol>\r\n<li>I Wayan Suanjaya ( Penyarikan )</li>\r\n<li>I Wayan Sugita ( Celuk )</li>\r\n</ol>\r\n<p><strong>BIDANG KESEJAHTERAAN SOSIAL</strong></p>\r\n<ol>\r\n<li>I Ketut Artika ( Peken )</li>\r\n<li>I Ketut Arjana ( Peminge )</li>\r\n</ol>\r\n<p><strong>BIDANG KESEHATAN DAN KEPENDUDUKAN</strong></p>\r\n<ol>\r\n<li>I Nyoman Ariasa ( Puri Nusa Dua )</li>\r\n<li>I Made Kariana ( Terora)</li>\r\n</ol>\r\n<p><strong>BIDANG PEMBERDAYAAN PERANAN PEREMPUAN</strong></p>\r\n<ol>\r\n<li>Ny. Ariani Loka Astika ( PKK )</li>\r\n<li>Ny. Eriati Satya ( PKK )</li>\r\n</ol>', 15, 1515756642, 15, 1515756642, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `z_slider`
--

CREATE TABLE `z_slider` (
  `s_id` varchar(4) NOT NULL,
  `s_nama` varchar(30) DEFAULT NULL,
  `s_label` varchar(100) DEFAULT NULL,
  `s_extension` varchar(50) DEFAULT NULL,
  `s_size` double DEFAULT NULL,
  `s_status` enum('y','n','','') DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `z_slider`
--

INSERT INTO `z_slider` (`s_id`, `s_nama`, `s_label`, `s_extension`, `s_size`, `s_status`, `created_at`, `updated_at`) VALUES
('S011', 'S011.jpg', 'E-Musrenbang', 'jpg', 155153, 'y', 1513954383, 1513954383),
('S013', 'S013.jpg', 'Lets Work Together', 'jpg', 226772, 'y', 1513956339, 1513956340),
('S015', 'S015.jpg', 'Junior Cup', 'jpg', 280828, 'y', 1515207371, 1515207371);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_number`
--
ALTER TABLE `auto_number`
  ADD PRIMARY KEY (`group`);

--
-- Indexes for table `bag_pn`
--
ALTER TABLE `bag_pn`
  ADD PRIMARY KEY (`bg_id`),
  ADD KEY `pn_id` (`pn_id`);

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
-- Indexes for table `pengadilan_negeri`
--
ALTER TABLE `pengadilan_negeri`
  ADD PRIMARY KEY (`pn_id`);

--
-- Indexes for table `pengadilan_tinggi`
--
ALTER TABLE `pengadilan_tinggi`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `pn_kelas`
--
ALTER TABLE `pn_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_bagian`
--
ALTER TABLE `tb_bagian`
  ADD PRIMARY KEY (`bagian_id`);

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
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`tanya_id`);

--
-- Indexes for table `tb_pertanyaan_kls1`
--
ALTER TABLE `tb_pertanyaan_kls1`
  ADD PRIMARY KEY (`tanya_id`);

--
-- Indexes for table `tb_pertanyaan_kls2`
--
ALTER TABLE `tb_pertanyaan_kls2`
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
-- Indexes for table `z_agenda`
--
ALTER TABLE `z_agenda`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `z_berita`
--
ALTER TABLE `z_berita`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `z_instansi`
--
ALTER TABLE `z_instansi`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `z_kaling`
--
ALTER TABLE `z_kaling`
  ADD PRIMARY KEY (`uk_id`);

--
-- Indexes for table `z_kontak`
--
ALTER TABLE `z_kontak`
  ADD PRIMARY KEY (`k_id`);

--
-- Indexes for table `z_musrenbang`
--
ALTER TABLE `z_musrenbang`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `z_musrenbang_kat`
--
ALTER TABLE `z_musrenbang_kat`
  ADD PRIMARY KEY (`mk_id`);

--
-- Indexes for table `z_profile_anggaran`
--
ALTER TABLE `z_profile_anggaran`
  ADD PRIMARY KEY (`pa_id`);

--
-- Indexes for table `z_profile_struktur`
--
ALTER TABLE `z_profile_struktur`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `z_slider`
--
ALTER TABLE `z_slider`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_audit`
--
ALTER TABLE `tb_audit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `z_profile_anggaran`
--
ALTER TABLE `z_profile_anggaran`
  MODIFY `pa_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z_profile_struktur`
--
ALTER TABLE `z_profile_struktur`
  MODIFY `ps_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
