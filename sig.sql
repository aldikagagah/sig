-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 04:37 AM
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
-- Database: `sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3301', 'Cilacap', '-7.7064271,108.9912947', 2007829, 2249.28);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3301010', 1, 'Dayeuluhur', 49618, 192.00),
('3301020', 1, 'Wanareja', 107479, 196.00),
('3301030', 1, 'Majenang', 143101, 168.00),
('3301040', 1, 'Cimanggu', 104785, 163.00),
('3301050', 1, 'Karangpucung', 80927, 125.00),
('3301060', 1, 'Cipari', 68843, 108.00),
('3301070', 1, 'Sidareja', 63829, 49.00),
('3301080', 1, 'Kedungreja', 91489, 82.00),
('3301090', 1, 'Patimuan', 50658, 79.00),
('3301100', 1, 'Gandrung Mangu', 113366, 119.00),
('3301110', 1, 'Bantarsari', 77597, 99.00),
('3301120', 1, 'Kawunganten', 87423, 138.00),
('3301121', 1, 'Kampung Laut', 16153, 134.00),
('3301130', 1, 'Jeruk Legi', 81075, 99.00),
('3301140', 1, 'Kesugihan', 139176, 89.00),
('3301150', 1, 'Adipala', 98327, 75.00),
('3301160', 1, 'Maos', 47100, 34.00),
('3301170', 1, 'Sampang', 44754, 29.00),
('3301180', 1, 'Kroya', 118370, 62.00),
('3301190', 1, 'Binangun', 72026, 54.00),
('3301200', 1, 'Nusawungu', 89988, 67.00),
('3301710', 1, 'Cilacap Selatan', 84858, 8.00),
('3301720', 1, 'Cilacap Tengah', 91572, 51.00),
('3301730', 1, 'Cilacap Utara', 85315, 29.00);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20300530, '3301010', 'SMP NEGERI 2 DAYEUHLUHUR', 'Jl. Mergo-Dayeuhluhur', 'NEGERI', 'SMP', '-7.3012,108.5873'),
(20300686, '3301070', 'SMK TAMTAMA 1 SIDAREJA', 'JL. JEND. AHMAD YANI NO.31', 'SWASTA', 'SMK', '-7.4874,108.7978'),
(20300688, '3301120', 'SMK NUSA TARUNA 2 KAWUNGANTEN', 'JL. RAYA BRINGKENG RT.01 RW.07 DUSUN NUSADADI', 'SWASTA', 'SMK', '-7.5905,108.9726'),
(20300710, '3301170', 'SMK MUHAMMADIYAH SAMPANG', 'JL. TUGU BARAT NO. 24 D', 'SWASTA', 'SMK', '-7.5889,109.2352'),
(20300711, '3301180', 'SMK MUHAMMADIYAH KROYA', 'JL. RAYA MUJUR KOTAK POS 2 KROYA', 'SWASTA', 'SMK', '-7.613,109.2528'),
(20300732, '3301030', 'SMA NEGERI 1 MAJENANG', 'JL. RAYA PAHONJEAN', 'NEGERI', 'SMA', '-7.3013,108.7462'),
(20300738, '3301140', 'SMK AL MUNAWWARAH CILACAP', 'JL. KUTILANG NO. 1 SLARANG, KESUGIHAN', 'SWASTA', 'SMK', '-7.6605,109.1144'),
(20300744, '3301710', 'SMK NEGERI 1 CILACAP', 'JL. BUDI UTOMO NO. 10 CILACAP', 'NEGERI', 'SMK', '-7.728097,109.01858'),
(20300746, '3301050', 'SMK MUHAMMADIYAH KARANGPUCUNG', 'JL. PRAMUKA NO.160 KARANGPUCUNG', 'SWASTA', 'SMK', '-7.414,108.9011'),
(20300747, '3301730', 'SMK MAKMUR 1 CILACAP', 'JL. PUCANG NO.59', 'SWASTA', 'SMK', '-7.6829,109.0407'),
(20300754, '3301200', 'SMK KARYA MANDIRI NUSAWUNGU', 'JL. SEKOLAHAN NO. 1', 'SWASTA', 'SMK', '-7.7058,109.3585'),
(20300850, '3301110', 'SD N 01 Bantarsari ', 'Bantarsari', 'NEGERI', 'SD', '-7.531305266874348, 108.86211890830052'),
(20300896, '3301150', 'SD N 01 Adipala', 'Adipala', 'NEGERI', 'SD', '-7.657853286801738, 109.15574453726582'),
(20301144, '3301070', 'SD NEGERI JATISARI 05', 'Jl Penatusan No.106', 'NEGERI', 'SD', '-7.5432,108.7545'),
(20301402, '3301090', 'SD N 01 Bulupayung Patimuan ', 'Bulu Payung, Patimuan', 'NEGERI', 'SD', '-7.582327551873171, 108.79217866412205'),
(20338769, '3301060', 'SD NEGERI KUTASARI 01', 'Jl Sari Antan No.74', 'NEGERI', 'SD', '-7.4273,108.7747'),
(20339045, '3301121', 'SD N Panikel 1 Kampung Laut', 'Panikel, Kampung Laut', 'NEGERI', 'SD', '-7.648799874835436, 108.86358745328099'),
(20340301, '3301720', 'SMK Dr. SOETOMO CILACAP', 'JL. Dr. Soetomo No. 11', 'SWASTA', 'SMK', '-7.7148,109.021'),
(20340896, '3301020', 'SMP NEGERI SATU ATAP 1 WANAREJA', 'Dusun Jambu Rt.05/Rw.04', 'NEGERI', 'SMP', '-7.2581,108.6452'),
(20341128, '3301080', 'SMK MAARIF NU KEDUNGREJA', 'Jalan Kenil Kedungreja', 'SWASTA', 'SMK', '-7.5249,108.776'),
(20360716, '3301190', 'SMK MANGGALA TAMA BINANGUN', 'JL.CITRA WIJAYA NO.2', 'SWASTA', 'SMK', '-7.6715,109.2947'),
(20362076, '3301130', 'SMK KOMPUTAMA JERUKLEGI', 'JALAN RAYA JAMBUSARI NO.99 JERUKLEGI - CILACAP', 'SWASTA', 'SMK', '-7.563622,109.030234'),
(69758283, '3301160', 'SMK BOEDI OETOMO 3 MAOS', 'JL. RAYA PANISIHAN NO. 300 MAOS', 'SWASTA', 'SMK', '-7.5878,109.1546'),
(69851435, '3301100', 'SMK AL HIKMAH GANDRUNGMANGU', 'Jl. Swadaya No 07  Bulusari', 'SWASTA', 'SMK', '-7.5203,108.8478'),
(69947742, '3301040', 'SMK K.H. AHMAD DAHLAN CIMANGGU', 'JL. SITU DESA KUTABIMA', 'SWASTA', 'SMK', '-7.2969123,108.872882');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `kecamatan_ibfk_1` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_2` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
