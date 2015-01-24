-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 24. Januari 2015 jam 13:48
-- Versi Server: 5.0.51
-- Versi PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_tugas_akhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(20) NOT NULL auto_increment,
  `nm_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` int(20) NOT NULL,
  PRIMARY KEY  (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nm_admin`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'admin', '0', 0),
(2, 'pimpinan', 'pimpinan', 'pimpinan', '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bayaran`
--

CREATE TABLE IF NOT EXISTS `tb_bayaran` (
  `nim` int(20) NOT NULL,
  `semester` int(1) NOT NULL,
  `bayar` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_bayaran`
--

INSERT INTO `tb_bayaran` (`nim`, `semester`, `bayar`) VALUES
(322011001, 1, 1550000),
(322011001, 2, 1550000),
(322011001, 3, 1550000),
(322011002, 1, 1550000),
(322011002, 2, 1550000),
(322011001, 4, 1550000),
(322011003, 1, 1550000),
(312011001, 1, 1550000),
(112011001, 1, 1550000),
(312011002, 1, 1550000),
(322012001, 1, 1550000),
(322013001, 1, 1550000),
(322011001, 6, 1550000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE IF NOT EXISTS `tb_dosen` (
  `nip` int(20) NOT NULL auto_increment,
  `nm_dosen` varchar(50) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` int(2) NOT NULL,
  `bln_lahir` int(2) NOT NULL,
  `thn_lahir` int(2) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`nip`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`nip`, `nm_dosen`, `jk`, `tmpt_lahir`, `tgl_lahir`, `bln_lahir`, `thn_lahir`, `alamat`, `no_hp`, `email`, `foto`, `username`, `password`) VALUES
(102, 'Nonda Muldani', 'Laki-laki', 'Sukabumi', 1, 2, 2, 'a', '1', 'b', '', '102', '102'),
(103, 'Lina', 'Perempuan', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '', '103', '103'),
(104, 'Ajat Sudrajat', 'Laki-laki', 'Cianjur', 1, 2, 3, 'a', '1', 'b', '', '104', '104'),
(105, 'Ismail Goro', 'Laki-laki', 'NTT', 1, 2, 3, 'a', '1', 'b', '', '105', '105'),
(106, 'Eris Riswandi', 'Laki-laki', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '', '106', '106'),
(107, 'Eka Hidayat', 'Laki-laki', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '', '107', '107'),
(108, 'Ayi', 'Laki-laki', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '', '108', '108'),
(109, 'Yuniar Supardi', 'Laki-laki', 'Surabaya', 1, 2, 3, 'a', '1', 'b', '', '109', '109'),
(110, 'Rina', 'Perempuan', 'Sukabumi', 1, 2, 3, 'a', '1', 'b', '', '110', '110'),
(111, 'Slamet Mulyono', 'Laki-laki', 'Sulawesi', 1, 2, 3, 'a', '1', 'b', '', '111', '111'),
(101, 'Yudha Haryanto', 'Laki-laki', 'Depok', 1, 1, 1, 'Sukabumi', '0857xxxz', 'yudha.hr@gmail.com', '', '101', '101'),
(112, 'Trisiani Dewi', 'Perempuan', 'Sukabumi', 1, 1, 1, 'Sukabumi', '0857', 'b', '', '112', '112'),
(113, 'Sri', 'Perempuan', 'Sukabumi', 1, 2, 1, 'Sukabumi', '178', 'oiu', '', '113', '113'),
(114, 'Budi', 'Laki-laki', 'Sukabumi', 3, 3, 3, 'Sukabumi', '1234', 'budi@', '', '114', '114'),
(115, 'Samirah Rahayu', 'Perempuan', 'Sukabumi', 4, 4, 4, 'Sukabumi', '2345', 'asdf', '', '115', '115'),
(116, 'Ruslan', 'Laki-laki', 'Sukabumi', 5, 1, 2, 'Sukabumi', '567', 'r', '', '115', '115'),
(117, 'Zurotun Nada', 'Perempuan', 'Sukabumi', 2, 1, 2, 'Sukabumi', '3451', 'nada@', '', '116', '116');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE IF NOT EXISTS `tb_jurusan` (
  `kd_jurusan` int(20) NOT NULL,
  `nm_jurusan` varchar(50) NOT NULL,
  PRIMARY KEY  (`kd_jurusan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`kd_jurusan`, `nm_jurusan`) VALUES
(31, 'Teknik Komputer'),
(32, 'Teknik Komputer Jaringan'),
(11, 'Administrasi Bisnis'),
(21, 'Teknik Mesin'),
(41, 'Teknik Sipil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `nim` int(20) NOT NULL,
  `nm_mhs` varchar(50) NOT NULL,
  `thn_masuk` int(20) NOT NULL,
  `tmpt_lahir` varchar(50) NOT NULL,
  `tgl_lahir` int(2) NOT NULL,
  `bln_lahir` int(2) NOT NULL,
  `thn_lahir` int(4) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kd_jurusan` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nm_mhs`, `thn_masuk`, `tmpt_lahir`, `tgl_lahir`, `bln_lahir`, `thn_lahir`, `alamat`, `jk`, `no_hp`, `email`, `foto`, `kd_jurusan`, `username`, `password`) VALUES
(322011001, 'Widiawati', 2011, 'Sukabumi', 16, 10, 1993, 'Kp. Ciawi RT 03/04 Bantar Kalong - Wr.Kiara', 'Perempuan', '085722239150', 'widiawati@gmail.co.id', 'img/profile/widi.jpg', 32, 'widi', 'widi'),
(322011002, 'Agus Hermawan', 2011, 'Sukabumii', 10, 8, 1993, 'Jl. Salabintana - Sukabumi', 'Laki-laki', '0857111111111', 'agushermawan@gmail.com', 'img/profile/agus.jpg', 32, 'agus', 'agus'),
(312011001, 'Anggit Maulana', 2011, 'bebas', 12, 1, 1991, 'Sukabumi', 'Laki-laki', '089xxxxxxxxx', 'anggit@yahoo.com', '', 31, 'anggit', 'anggit'),
(312011002, 'Yudi Nurhandi', 2011, 'Sukabumi', 11, 11, 93, 'Lembursitu', 'Laki-laki', '0856xxxx', 'yudi@yahoo.com', '', 31, 'yudi', 'yudi'),
(322011003, 'Risa Agustina', 2011, 'Sukabumi', 18, 8, 1993, 'Jl. Palabuhanratu', 'Perempuan', '0857xxx', 'Risa@yahoo.co.id', 'img/profile/risa.jpg', 32, 'risa', 'risa'),
(112011001, 'Nur Jihan', 2011, '', 1, 2, 3, 'Sukabumi', 'Perempuan', '6789', 'jihan@yahoo.com', 'img/profile/jihan.jpg', 11, 'jihan', 'jihan'),
(212011001, 'Deri Triana', 2011, 'Sukabumi', 2, 3, 4, 'Sukabumi', 'Laki-laki', '54321', 'deri@gmail.com', '', 21, 'deri', 'deri'),
(412011001, 'Miftah', 2011, 'Sukabumi', 5, 6, 7, 'Sukabumi', 'Laki-laki', '7890', 'miftah@yahoo.co.id', '', 41, 'miftah', 'miftah'),
(322012001, 'Hana', 2012, 'Parungkuda', 1, 1, 1, 'Parungkuda', 'Perempuan', '23123', 'hana@yahoo.com', '', 32, 'hana', 'hana'),
(322013001, 'ule', 2013, 'Sukabumi', 2, 2, 2, 'Sukabumi', 'Laki-laki', '90900', 'ule@yahoo.com', '', 32, 'ule', 'ule'),
(322014001, 'vini', 2014, 'Sukabumi', 1, 3, 4, 'Sukabumi', 'Perempuan', '1908', 'vvvvv', '', 32, 'vini', 'vini'),
(312012001, 'mathin', 2012, 'Sukabumi', 2, 5, 7, 'Sukabumi', 'Laki-laki', '9087', 'mathin@', '', 31, 'mathin', 'mathin'),
(312013001, 'riri', 2013, 'Sukabumi', 5, 8, 9, 'Sukabumi', 'Perempuan', '987890', 'riri@', '', 31, 'riri', 'riri'),
(312014001, 'nana', 2014, 'Sukabumi', 6, 7, 1, 'Sukabumi', 'Laki-laki', '87654', 'nana@', '', 31, 'nana', 'nana'),
(112012001, 'eki', 2012, 'Sukabumi', 5, 5, 5, 'Sukabumi', 'Perempuan', '9870', 'eki@', '', 11, 'eki', 'eki'),
(112013001, 'Eka', 2013, 'Sukabumi', 4, 3, 1, 'Sukabumi', 'Perempuan', '876543', 'eka@', '', 11, 'eka', 'eka'),
(112014001, 'Sitty', 2014, 'Sukabumi', 3, 3, 3, 'Sukabumi', 'Perempuan', '897654', 'siti@', '', 11, 'siti', 'siti'),
(212012001, 'Ichang', 2012, 'Sukabumi', 7, 7, 7, 'Sukabumi', 'Laki-laki', '8976', 'ichang@', '', 21, 'icang', 'icang'),
(212013001, 'Azis', 2013, 'Sukabumi', 2, 5, 1, 'Sukabumi', 'Laki-laki', '123', 'aziz@', '', 21, 'azis', 'azis'),
(212014001, 'Teguh', 2014, 'Sukabumi', 5, 1, 1, 'Sukabumi', 'Laki-laki', '0857', 'teguh@', '', 21, 'teguh', 'teguh'),
(412012001, 'siregar', 2012, 'Sukabumi', 1, 8, 3, 'Sukabumi', 'Perempuan', '17890', 'siregar@', '', 41, 'siregar', 'siregar'),
(412013001, 'boim', 2013, 'Sukabumi', 6, 7, 7, 'Sukabumi', 'Laki-laki', '0857', 'boim@', '', 41, 'boim', 'boim'),
(412014001, 'ibra', 2014, 'Depok', 18, 2, 1, 'Sukabumi', 'Laki-laki', '0857', 'ibra@', '', 41, 'ibra', 'ibra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matkul`
--

CREATE TABLE IF NOT EXISTS `tb_matkul` (
  `kd_matkul` varchar(20) NOT NULL,
  `nm_matkul` varchar(50) NOT NULL,
  `semester` varchar(2) NOT NULL,
  `sks` int(2) NOT NULL,
  `nip` int(20) NOT NULL,
  `kd_jurusan` int(20) NOT NULL,
  PRIMARY KEY  (`kd_matkul`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_matkul`
--

INSERT INTO `tb_matkul` (`kd_matkul`, `nm_matkul`, `semester`, `sks`, `nip`, `kd_jurusan`) VALUES
('KJ-MKK11', 'Arsitektur Komputer', '1', 3, 107, 32),
('KJ-MKK12', 'Konsep Teknologi Informasi', '1', 2, 111, 32),
('KJ-MKB13', 'JAVA I', '1', 3, 101, 32),
('KJ-MKK14', 'Algoritma dan Pemrograman', '1', 3, 107, 32),
('KJ-MKK15', 'Bahasa Inggris I', '1', 2, 108, 32),
('KJ-MKB16', 'Jaringan Komputer I', '1', 3, 102, 32),
('KJ-MKB17', 'KKPI', '1', 3, 105, 32),
('KJ-MKK18', 'Sistem Operasi', '1', 3, 101, 32),
('KJ-MKK21', 'Administrasi Sistem', '2', 3, 101, 32),
('KJ-MKB22', 'JAVA II', '2', 3, 109, 32),
('KJ-MKB23', 'JAVA III', '2', 3, 101, 32),
('KJ-MKK24', 'Basis Data I', '2', 2, 105, 32),
('KJ-MKB25', 'Jaringan Komputer II', '2', 3, 102, 32),
('KJ-MKK26', 'Bahasa Inggris II', '2', 2, 108, 32),
('KJ-MPK27', 'Matematika Logika', '2', 2, 110, 32),
('TK-MKK01', 'VB I', '1', 4, 101, 31),
('TK-MKK02', 'Komunikasi Data', '2', 3, 101, 31),
('TK-MKK03', 'VB II', '2', 4, 101, 31),
('KJ-MKK31', 'Bahasa Inggris III', '3', 2, 108, 31),
('KJ-MKB32', 'Elektronika Analog', '3', 3, 104, 32),
('KJ-MKB33', 'Jaringan Komputer III', '3', 3, 102, 32),
('KJ-MKB34', 'JAVA IV', '3', 3, 109, 32),
('KJ-MKK35', 'JAVA V', '3', 3, 101, 32),
('KJ-MKK36', 'Basis Data 2', '3', 3, 105, 32),
('KJ-MKK37', 'RSI I', '3', 3, 112, 32),
('KJ-MKB38', 'Administrasi Jaringan', '3', 3, 102, 32),
('KJ-MKB41', 'Jaringan Nirkabel', '4', 3, 102, 32),
('KJ-MKK42', 'Keamanan Jaringan', '4', 3, 111, 32),
('KJ-MKK43', 'Bahasa Inggris IV', '4', 3, 108, 32),
('KJ-MKK44', 'RSI II', '4', 3, 112, 32),
('KJ-MKK45', 'JAVA VI', '4', 3, 109, 32),
('KJ-MKB46', 'Pemrograman Web', '4', 3, 101, 32),
('KJ-MKB47', 'Bahasa Indonesia', '4', 2, 113, 32),
('KJ-MKB51', 'PKN', '5', 2, 114, 32),
('KJ-MKK52', 'Aplikasi Bergerak', '5', 3, 115, 32),
('KJ-MKK53', 'Wirausaha', '5', 3, 103, 32),
('KJ-MKB54', 'Animasi Dua Dimensi', '5', 3, 116, 32),
('KJ-MKB55', 'Proyek Jaringan', '5', 3, 102, 32),
('KJ-MKB61', 'Etika Profesi', '6', 2, 103, 32),
('TK-PK01', 'Agama', '1', 2, 0, 0),
('TK-PK06', 'Kalkulus', '1', 2, 0, 0),
('TK-KK01', 'Fisika Dasar', '1', 2, 0, 0),
('TK-KK07', 'Rangkaian Listrik', '1', 2, 0, 0),
('TK-KK04', 'Elektronika Dasar', '1', 2, 0, 0),
('TK-PK07', 'B.Inggris I', '1', 2, 108, 31),
('TK-KK08', 'PDE', '1', 3, 0, 0),
('TK-PK08', 'Program App', '1', 3, 101, 31),
('TK-PK09', 'Tenik Penulisan', '1', 2, 113, 31),
('TK-KK03', 'Logika & Algoritma', '2', 3, 107, 31),
('KJ-MKB499', 'asdf', '6', 2, 113, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
  `nim` int(20) NOT NULL,
  `kd_matkul` varchar(20) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`nim`, `kd_matkul`, `nilai`) VALUES
(322011001, 'KJ-MKK11', 'B'),
(322011001, 'KJ-MKK12', 'B'),
(322011001, 'KJ-MKB13', 'C'),
(322011001, 'KJ-MKK14', 'B'),
(322011001, 'KJ-MKK15', 'B'),
(322011001, 'KJ-MKB16', 'B'),
(322011001, 'KJ-MKK21', 'B'),
(322011001, 'KJ-MKK18', 'B'),
(322011001, 'KJ-MKB17', 'B'),
(322011001, 'KJ-MKB22', 'B'),
(322011001, 'KJ-MKB23', 'A'),
(322011001, 'KJ-MKK24', 'C'),
(322011001, 'KJ-MKB25', 'B'),
(322011001, 'KJ-MKK26', 'A'),
(322011001, 'KJ-MPK27', 'C'),
(322011002, 'KJ-MKK11', 'B'),
(312011001, 'TK-MKK01', 'B'),
(322011001, 'KJ-MKK029', 'c'),
(322011002, 'KJ-MKK12', 'B'),
(322011002, 'KJ-MKB13', 'A'),
(322011002, 'KJ-MKB17', 'C'),
(322011002, 'KJ-MKB16', 'B'),
(322011001, 'KJ-MKB61', 'C'),
(322011003, 'KJ-MKK11', 'A'),
(322011003, 'KJ-MKK12', 'B'),
(322011003, 'KJ-MKK14', '0'),
(312011001, 'TK-MKK03', 'A'),
(322011001, 'KJ-MKK31', 'A'),
(322011001, 'KJ-MKB32', 'B'),
(322011001, 'KJ-MKB33', 'B'),
(322011001, 'KJ-MKB34', 'A'),
(322011001, 'KJ-MKK35', 'B'),
(322011001, 'KJ-MKK36', 'A'),
(322011001, 'KJ-MKK37', 'A'),
(322011001, 'KJ-MKB38', 'B'),
(322011001, 'KJ-MKB46', 'A'),
(322011001, 'KJ-MKB41', 'A'),
(322011001, 'KJ-MKB47', 'B'),
(322011001, 'KJ-MKK42', 'A'),
(322011001, 'KJ-MKK43', 'A'),
(322011001, 'KJ-MKK44', 'A'),
(322011001, 'KJ-MKK45', 'B'),
(322011001, 'KJ-MKB51', 'B'),
(322011001, 'KJ-MKK52', 'A'),
(322011001, 'KJ-MKK53', 'A'),
(322011001, 'KJ-MKB54', 'C'),
(322011001, 'KJ-MKB54', 'C'),
(322011001, 'KJ-MKB55', 'C');
