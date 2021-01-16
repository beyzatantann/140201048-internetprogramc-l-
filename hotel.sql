-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 16 Oca 2014, 09:37:20
-- Sunucu sürümü: 5.6.12-log
-- PHP Sürümü: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE IF NOT EXISTS `iletisim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adi_soyadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odalar`
--

CREATE TABLE IF NOT EXISTS `odalar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `fiyat` float(8,2) NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `bas_tarih` date NOT NULL,
  `bit_tarih` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `odalar`
--

INSERT INTO `odalar` (`id`, `baslik`, `aciklama`, `fiyat`, `resim`, `bas_tarih`, `bit_tarih`) VALUES
(2, 'Deneme oda 2+1', '<p>sadfsasadfsasadfsasadfsasadfsasadfsasadfsasadfsasadfsa</p>', 3.00, 'c66b57d0a62cf81d480ba9f9b7a548d5.jpg', '2013-01-22', '2013-01-01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyon`
--

CREATE TABLE IF NOT EXISTS `rezervasyon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oda_id` int(11) NOT NULL,
  `tc` int(11) NOT NULL,
  `adi_soyadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adres` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ulke` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `uye_id` int(11) NOT NULL,
  `not` text COLLATE utf8_turkish_ci NOT NULL,
  `bas_tarih` date NOT NULL,
  `bit_tarih` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=3 ;

--
-- Tablo döküm verisi `rezervasyon`
--

INSERT INTO `rezervasyon` (`id`, `oda_id`, `tc`, `adi_soyadi`, `email`, `adres`, `sehir`, `ulke`, `telefon`, `uye_id`, `not`, `bas_tarih`, `bit_tarih`) VALUES
(2, 2, 2147483647, 'emre', 'eceltikci', 'denenmee adres', 'gÃ¼zelyurt', 'kktc', '45435435435', 6, 'sadsadas', '2013-01-01', '2013-01-01');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE IF NOT EXISTS `sayfalar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `baslik`, `aciklama`) VALUES
(1, 'About', '<p>aa</p>'),
(2, 'Destinations', '<p><em><strong>denemr</strong></em></p>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tur`
--

CREATE TABLE IF NOT EXISTS `tur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` longtext COLLATE utf8_turkish_ci NOT NULL,
  `resim` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyelik`
--

CREATE TABLE IF NOT EXISTS `uyelik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tc` int(11) NOT NULL,
  `adi_soyadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adres` text COLLATE utf8_turkish_ci NOT NULL,
  `sehir` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ulke` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=7 ;

--
-- Tablo döküm verisi `uyelik`
--

INSERT INTO `uyelik` (`id`, `tc`, `adi_soyadi`, `email`, `sifre`, `adres`, `sehir`, `ulke`, `telefon`) VALUES
(5, 232, 'EmreÃeltikÃ§i', 'ece', '5fecc5b348822e1b433e25de811d8a64', 'denenmee adressad', 'gÃ¼zelyurtasdsa', 'kktcasdsa', '4543'),
(6, 2147483647, 'emre', 'e.celt', '6b4f5edb7a0bacde6e1ab303e45b759a', 'denenmee adres', 'gÃ¼zelyurt', 'kktc', '45435435435');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetim`
--

CREATE TABLE IF NOT EXISTS `yonetim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `adi_soyadi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `yonetim`
--

INSERT INTO `yonetim` (`id`, `email`, `sifre`, `adi_soyadi`) VALUES
(1, 'emre@emre.com', '6b4f5edb7a0bacde6e1ab303e45b759a', 'EMRE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
