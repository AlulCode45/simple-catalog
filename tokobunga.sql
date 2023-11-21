-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2023 pada 23.23
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobunga`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(5) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Laptop', '', '2023-11-21 14:36:15', '2023-11-21 14:36:15', NULL),
(4, 'Sparepart', '', '2023-11-21 14:36:23', '2023-11-21 14:36:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `discount`
--

CREATE TABLE `discount` (
  `id` int(5) UNSIGNED NOT NULL,
  `discount_name` varchar(255) NOT NULL,
  `discount_description` text NOT NULL,
  `discount_percent` int(11) NOT NULL,
  `discount_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `discount`
--

INSERT INTO `discount` (`id`, `discount_name`, `discount_description`, `discount_percent`, `discount_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'A', 'aa', 75, 1, '2022-04-14 16:29:13', '2022-04-14 16:29:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-04-08-002607', 'App\\Database\\Migrations\\Users', 'default', 'App', 1649970993, 1),
(2, '2022-04-08-002612', 'App\\Database\\Migrations\\Settings', 'default', 'App', 1649970993, 1),
(3, '2022-04-08-002617', 'App\\Database\\Migrations\\Products', 'default', 'App', 1649970993, 1),
(4, '2022-04-08-002628', 'App\\Database\\Migrations\\Category', 'default', 'App', 1649970993, 1),
(5, '2022-04-08-003512', 'App\\Database\\Migrations\\Discount', 'default', 'App', 1649970993, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(5) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_description` text NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT NULL,
  `product_image` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `userid`, `product_name`, `product_description`, `product_category`, `product_price`, `product_stock`, `product_discount`, `product_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 'Vivobook Pro 14X OLED (N7400, 11th Gen Intel)', '<p>aaaaaaaaaaaaaaaaaaaaaa</p>\r\n', 3, '100000', 10, 1, 'http://localhost:8080/uploads/img_ed4cc7229a7c70dab37bf173f39e3ebf1494b7e5.png', '2022-04-15 16:18:50', '2022-04-15 16:18:50', NULL),
(3, 2, 'Vivobook Pro 15 OLED (K6502)', '<p>No Desc</p>\r\n', 4, '1699000', 1, 1, 'http://localhost:8080/uploads/img_a6dbe7463d7d24e466f4bceb502acf305ac69341.png', '2022-04-15 16:47:23', '2022-04-15 16:47:23', NULL),
(4, 2, 'Vivobook Pro 14 OLED (M3401, AMD Ryzen™ 5000 Series', '<p>Luar Biasa</p>\r\n', 3, '8000000', 29, 0, 'http://localhost:8080/uploads/img_8b83b04e3555682ba522f32004225181c2fccf2e.png', '2023-11-21 14:45:09', '2023-11-21 14:45:09', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(5) UNSIGNED NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_default` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `isAdmin` int(11) NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `isAdmin`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'alulgans', 'all', 'alulgans70@gmail.com', 1, '21232f297a57a5a743894a0e4a801fc3', '2022-04-14 23:19:10', '2022-04-14 23:19:10', '2022-04-14 23:19:10'),
(2, 'admin', 'Super Admin', 'admin@localhost', 1, '$2a$12$dDt/CR.ADBEQaz9uEp8YKuyw8HjTi7HvHnFpTB99paXxHrBBCE8tK', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
