-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2022 pada 03.10
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happybali`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakettransportasi`
--

CREATE TABLE `pakettransportasi` (
  `id` int(11) NOT NULL,
  `tipemobil` varchar(255) NOT NULL,
  `durasipinjam` varchar(255) NOT NULL,
  `fasilitas` text NOT NULL,
  `harga` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pakettransportasi`
--

INSERT INTO `pakettransportasi` (`id`, `tipemobil`, `durasipinjam`, `fasilitas`, `harga`) VALUES
(5, 'mobilavnaza6.jpg', '24 jam', 'Driver + BBM', 450000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `paketwisata`
--

CREATE TABLE `paketwisata` (
  `id` int(11) NOT NULL,
  `namapaket` varchar(255) NOT NULL,
  `rutewisata` text NOT NULL,
  `fasilitas` text NOT NULL,
  `harga` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paketwisata`
--

INSERT INTO `paketwisata` (`id`, `namapaket`, `rutewisata`, `fasilitas`, `harga`) VALUES
(2, '1H - 1 Harian', 'Pantai Pandawa - GWK Bali - Pura Uluwatu', 'Kendaraan AC, Driver, BBM, Konsumsi 2x, Tiket masuk wisata', 350000),
(3, '2H1M - 2 Hari 1 Malam', 'Tegagalang Rice Terrace - Pura Tirta Empul - Monkey Forest Ubud - Desa Panglipuran', 'Hotel bintang 3 (1 kamar + sarapan), Mobil, Driver , BBM, Konsumsi 4x', 1000000),
(5, 'FamilyTrip (2H1M)', 'Tegagalang Rice Terrace - Pura Tirta Empul - Monkey Forest Ubud - Desa Panglipuran', 'Hotel bintang 3 (2 kamar + sarapan), Mobil, Driver , BBM, Konsumsi 4x', 6500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `namapendaftar` varchar(255) NOT NULL,
  `nomerhp` int(20) NOT NULL,
  `pilihanpaket` varchar(255) NOT NULL,
  `tglpemesanan` date NOT NULL,
  `jumlahpenumpang` int(11) NOT NULL,
  `alamatjemput` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `namapendaftar`, `nomerhp`, `pilihanpaket`, `tglpemesanan`, `jumlahpenumpang`, `alamatjemput`) VALUES
(1, 'hanifah', 2147483647, '2H1M', '0000-00-00', 5, 'Stasiun temuguruh'),
(2, 'syilvia', 2147483647, '2H1M', '2018-06-14', 4, 'TA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'hanifah', 'c4ca4238a0b923820dcc509a6f75849b'),
(3, 'hasyim', 'e807f1fcf82d132f9bb018ca6738a19f'),
(4, 'fuad', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pakettransportasi`
--
ALTER TABLE `pakettransportasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paketwisata`
--
ALTER TABLE `paketwisata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pakettransportasi`
--
ALTER TABLE `pakettransportasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `paketwisata`
--
ALTER TABLE `paketwisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
