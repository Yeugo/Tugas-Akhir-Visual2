-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 03:49 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laporansiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_hubungan`
--

CREATE TABLE `tb_hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `status_hub` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_hubungan`
--

INSERT INTO `tb_hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub`, `keterangan`) VALUES
(1, 3, 1, 'Kandung', 'Anak Pertama'),
(3, 1, 2, 'Kandung', 'Anak Pertama'),
(4, 2, 3, 'Kandung', 'Anak Kedua'),
(5, 4, 4, 'Kandung', 'Anak Ketiga'),
(6, 5, 5, 'Kandung', 'Anak Pertama'),
(7, 1, 4, 'Kandung', 'akdjkda'),
(8, 11, 5, 'Kandung', 'Anak Ketiga');

-- --------------------------------------------------------

--
-- Table structure for table `tb_input_poin`
--

CREATE TABLE `tb_input_poin` (
  `id` int(8) NOT NULL,
  `nm_siswa` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `wali` varchar(100) NOT NULL,
  `poin` varchar(100) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `bobot` varchar(10) NOT NULL,
  `tgl_input` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_input_poin`
--

INSERT INTO `tb_input_poin` (`id`, `nm_siswa`, `kelas`, `wali`, `poin`, `jenis`, `bobot`, `tgl_input`, `status`) VALUES
(1, 'John Lenon', 'XII', 'Joji Snow', 'Juara Kelas Peringkat 1', 'Prestasi', '20', '2023-06-13', 'Aktif'),
(3, 'Andre Gunawan', 'XII', 'Joji Snow', 'Tidak melaksanakan piket', 'Pelanggaran', '5', '2023-06-23', 'Aktif'),
(4, 'John Lenon', 'XII', 'Joji Snow', 'Siswa Teladan', 'Prestasi', '35', '2023-06-23', 'Aktif'),
(5, 'John Lenon', 'XII', 'Joji Snow', 'Datang Terlambat', 'Pelanggaran', '5', '2023-06-23', 'Aktif'),
(6, 'Andre Gunawan', 'XII', 'Joji Snow', 'Siswa Teladan', 'Prestasi', '35', '2023-06-23', 'Aktif'),
(7, 'Lyn Anatashya', 'XII', 'Joji Snow', 'Juara Kelas Peringkat 2', 'Prestasi', '15', '2023-07-09', 'Aktif'),
(8, 'Lyn Anatashya', 'XII', 'Joji Snow', 'Keluar kelas tanpa izin', 'Pelanggaran', '5', '2023-07-09', 'Aktif'),
(9, 'Vanessa', 'XII', 'Joji Snow', 'Juara Kelas Peringkat 3', 'Prestasi', '10', '2023-07-09', 'Aktif'),
(10, 'Vanessa', 'XII', 'Joji Snow', 'Tidak melaksanakan piket', 'Pelanggaran', '5', '2023-07-09', 'Aktif'),
(11, 'Sovia', 'XII', 'Joji Snow', 'Juara Umum', 'Prestasi', '30', '2023-07-09', 'Aktif'),
(12, 'Sovia', 'XII', 'Joji Snow', 'Tidak berseragam lengkap', 'Pelanggaran', '5', '2023-07-09', 'Aktif'),
(13, 'Ana', 'XII', 'Joji Snow', 'Siswa Teladan', 'Prestasi', '35', '2023-07-09', 'Aktif'),
(14, 'Ana', 'XII', 'Joji Snow', 'Membuang sampah sembarangan', 'Pelanggaran', '5', '2023-07-09', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jenis` enum('Pagi','Siang') NOT NULL,
  `jurusan` enum('Bahasa','IPA','IPS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `nama`, `jenis`, `jurusan`) VALUES
(1, 'XA', 'Pagi', 'Bahasa'),
(2, 'XB', 'Siang', 'Bahasa'),
(3, 'XIA', 'Pagi', 'IPA'),
(4, 'XIB', 'Siang', 'IPS'),
(5, 'XIIA', 'Pagi', 'Bahasa'),
(6, 'XIIB', 'Pagi', 'IPA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ortu`
--

CREATE TABLE `tb_ortu` (
  `ortu_id` int(8) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pendidikan` enum('SD','SMP','SMA/K','Sarjana') NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `telp` int(13) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `status` enum('Kandung','Wali','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_ortu`
--

INSERT INTO `tb_ortu` (`ortu_id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `agama`, `jenis_kelamin`, `status`) VALUES
(1, 234354234, 'Joeynudin', 'Sarjana', 'Guru', 1314134141, 'Banjarmasinn', 'Kristen', 'Laki-Laki', 'Kandung'),
(2, 232323232, 'Anto', 'SMA/K', 'Wiraswasta', 2147483647, 'Tanah Bumbu', 'Islam', 'Laki-Laki', 'Kandung'),
(3, 232323333, 'Soeharto', 'Sarjana', 'Karyawan', 2147483333, 'Kotabaru', 'Islam', 'Laki-Laki', 'Kandung'),
(4, 232323444, 'Elma', 'Sarjana', 'Guru', 2147483444, 'Tanah Bumbu', 'Islam', 'Perempuan', 'Kandung'),
(5, 232323444, 'Erni', 'SMP', 'IRT', 2147483555, 'Banjarbaru', 'Islam', 'Perempuan', 'Kandung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poin`
--

CREATE TABLE `tb_poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `bobot` int(5) NOT NULL,
  `jenis` enum('Pelanggaran','Prestasi') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_poin`
--

INSERT INTO `tb_poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(2, 'Siswa Teladan', 35, 'Prestasi', 'Aktif'),
(3, 'Juara Kelas Peringkat 1', 20, 'Prestasi', 'Aktif'),
(4, 'Juara Kelas Peringkat 2', 15, 'Prestasi', 'Aktif'),
(5, 'Juara Kelas Peringkat 3', 10, 'Prestasi', 'Aktif'),
(6, 'Juara Umum', 30, 'Prestasi', 'Aktif'),
(7, 'Datang Terlambat', 5, 'Pelanggaran', 'Aktif'),
(8, 'Keluar kelas tanpa izin', 5, 'Pelanggaran', 'Aktif'),
(9, 'Tidak melaksanakan piket', 5, 'Pelanggaran', 'Aktif'),
(10, 'Tidak berseragam lengkap', 5, 'Pelanggaran', 'Aktif'),
(11, 'Membuang sampah sembarangan', 5, 'Pelanggaran', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_poin`
--

CREATE TABLE `tb_riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) NOT NULL,
  `poin_id` int(8) NOT NULL,
  `wali_id` int(8) NOT NULL,
  `ortu_id` int(8) NOT NULL,
  `kelas_id` int(8) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `siswa_id` int(8) NOT NULL,
  `nis` int(15) NOT NULL,
  `nisn` int(15) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `nik` int(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `tingkat_kelas` enum('X','XI','XII','') NOT NULL,
  `jurusan` enum('Bahasa','IPA','IPS','','') NOT NULL,
  `wali_kelas` varchar(20) NOT NULL,
  `alamat` varchar(35) NOT NULL,
  `telp` int(13) NOT NULL,
  `hp` int(13) NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`siswa_id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 2023000301, 7638, 'John Lenon', 2001836278, 'Banjarmasin', '2002-04-14', 'Laki-Laki', 'XII', 'IPA', 'Joji Snow', 'Banjarmasin', 98876, 876897640, 'Aktif'),
(2, 2023000345, 7639, 'Andre Gunawan', 2001836452, 'Banjarmasin', '2002-07-18', 'Laki-Laki', 'XII', 'IPA', 'Joji Snow', 'Banjarmasin', 92176, 878672519, 'Aktif'),
(3, 2023008621, 7640, 'Lyn Anatashya', 244623952, 'Banjarmasin', '2003-11-19', 'Perempuan', 'XII', 'IPS', 'Joji Snow', 'Banjarmasin', 99766, 878777719, 'Aktif'),
(4, 2023765401, 7641, 'Vanessa', 2001836763, 'Banjarmasin', '2003-07-08', 'Perempuan', 'XII', 'IPA', 'Joji Snow', 'Banjarmasin', 94456, 870987987, 'Aktif'),
(5, 2023004646, 7642, 'Sovia', 2007543389, 'Banjarmasin', '2003-02-18', 'Laki-Laki', 'XII', 'IPS', 'Joji Snow', 'Banjarmasin', 86546, 878653499, 'Aktif'),
(11, 2023004646, 7642, 'Ana', 2007543386, 'Banjarmasin', '2003-02-18', 'Laki-Laki', 'XII', 'IPA', 'Joji Snow', 'Banjarmasin', 86546, 878653499, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id` int(8) NOT NULL,
  `nip` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` int(13) NOT NULL,
  `matpel` varchar(20) NOT NULL,
  `pendidikan` enum('S1','S2') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id`, `nip`, `nama`, `jenis_kelamin`, `alamat`, `telp`, `matpel`, `pendidikan`, `status`) VALUES
(1, 101010, 'Joji Snow', 'Laki-laki', 'Banjarmasin', 2147483647, 'Bahasa', 'S1', 'Aktif'),
(8, 202020, 'Aida', 'Perempuan', 'Banjarmasin', 2147481654, 'Matematika', 'S2', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `tb_input_poin`
--
ALTER TABLE `tb_input_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD PRIMARY KEY (`ortu_id`);

--
-- Indexes for table `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_riwayat_poin`
--
ALTER TABLE `tb_riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`,`poin_id`,`wali_id`,`ortu_id`,`kelas_id`),
  ADD KEY `poin_id` (`poin_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_input_poin`
--
ALTER TABLE `tb_input_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_ortu`
--
ALTER TABLE `tb_ortu`
  MODIFY `ortu_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_poin`
--
ALTER TABLE `tb_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_riwayat_poin`
--
ALTER TABLE `tb_riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `siswa_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  ADD CONSTRAINT `tb_hubungan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tb_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_hubungan_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `tb_ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_riwayat_poin`
--
ALTER TABLE `tb_riwayat_poin`
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `tb_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_2` FOREIGN KEY (`poin_id`) REFERENCES `tb_poin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `tb_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_4` FOREIGN KEY (`wali_id`) REFERENCES `tb_walikelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_riwayat_poin_ibfk_5` FOREIGN KEY (`ortu_id`) REFERENCES `tb_ortu` (`ortu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
