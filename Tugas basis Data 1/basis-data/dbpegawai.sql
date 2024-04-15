-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2024 pada 18.26
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `berat_badan` float NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmp_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `berat_badan`, `umur`) VALUES
(1, '11111', 'Nicky Bryan Pradana', 'Laki-laki', 'Depok', '2005-07-25', 1, 1, 'Depok', 53.4, 50),
(2, '11112', 'Muhammad Adi Pratama', 'Laki-laki', 'Jakarta', '1990-03-12', 1, 2, 'Jakarta', 42.13, 55),
(3, '11113', 'Asep Suryadi', 'Laki-laki', 'Bandung', '1985-09-20', 1, 4, 'Bandung', 60.45, 34),
(4, '11114', 'Santoso Widodo', 'Laki-laki', 'Surabaya', '1992-11-05', 1, 3, 'Surabaya', 85.86, 21),
(5, '11115', 'Rina Andriani', 'Perempuan', 'Bogor', '1988-06-18', 1, 4, 'Bogor', 57.95, 55),
(6, '11116', 'Dina Rahmawati', 'Perempuan', 'Tangerang', '1995-02-28', 2, 2, 'Tangerang', 42.17, 49),
(7, '11117', 'Ahmad Fauzi', 'Laki-laki', 'Depok', '1991-08-14', 2, 4, 'Depok', 47.01, 25),
(8, '11118', 'Siti Khoerunnisa', 'Perempuan', 'Bekasi', '1993-12-01', 2, 4, 'Bekasi', 68.54, 27),
(10, '11120', 'Lia Oktaviani', 'Perempuan', 'Cianjur', '1989-11-10', 2, 4, 'Cianjur', 61.67, 43),
(11, '11121', 'Reza Pahlevi', 'Laki-laki', 'Yogyakarta', '1997-04-08', 3, 2, 'Yogyakarta', 62.73, 44),
(12, '11122', 'Dina Permatasari', 'Perempuan', 'Semarang', '1994-09-27', 3, 4, 'Semarang', 88.65, 34),
(14, '11124', 'Putri Handayani', 'Perempuan', 'Malang', '1990-08-03', 3, 3, 'Malang', 65.04, 52),
(15, '11125', 'Eko Suryanto', 'Laki-laki', 'Surabaya', '1988-12-22', 3, 4, 'Surabaya', 69.25, 34),
(16, '11126', 'Bagus Utomo', 'Laki-laki', 'Depok', '1985-06-09', 4, 2, 'Depok', 61.12, 29),
(17, '11127', 'Rizky Amelia', 'Perempuan', 'Jakarta', '1992-11-18', 4, 4, 'Jakarta', 57.88, 23),
(18, '11128', 'Yudi Kurniawan', 'Laki-laki', 'Bogor', '1989-04-30', 4, 4, 'Bogor', 66.03, 43),
(19, '11129', 'Dwi Handayani', 'Perempuan', 'Jakarta', '1994-07-12', 4, 3, 'Jakarta', 66.5, 21),
(20, '11130', 'Adi Saputra', 'Laki-laki', 'Malang', '1991-01-25', 4, 4, 'Jakarta', 44.41, 26);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
