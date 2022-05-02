-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Már 11. 13:32
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `lexikon`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoria`
--

CREATE TABLE `kategoria` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoria`
--

INSERT INTO `kategoria` (`id`, `nev`) VALUES
(1, 'gyümölcsök'),
(2, 'állatok'),
(3, 'jármű'),
(4, 'italok');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nehezseg`
--

CREATE TABLE `nehezseg` (
  `id` int(11) NOT NULL,
  `szint` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `nehezseg`
--

INSERT INTO `nehezseg` (`id`, `szint`) VALUES
(1, 'Óvodás szint, felkészít az iskolához'),
(2, 'Iskolás felzárkoztató szint 1-2 osztályosoknak'),
(3, 'Iskolás felzárkoztató szint 3-4 osztályosoknak'),
(4, 'Rehabilitációs szint sérült személyeknek'),
(5, 'Profeszionális szint hogy minden szót tudj majd');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavak`
--

CREATE TABLE `szavak` (
  `id` int(11) NOT NULL,
  `szo` text COLLATE utf8_hungarian_ci NOT NULL,
  `18` tinyint(1) NOT NULL,
  `kep` text COLLATE utf8_hungarian_ci NOT NULL,
  `keszito` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoriaid` int(11) NOT NULL,
  `nehezsegid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavak`
--

INSERT INTO `szavak` (`id`, `szo`, `18`, `kep`, `keszito`, `kategoriaid`, `nehezsegid`) VALUES
(1, 'abszint', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Modern-absinthe-bottlescrop.jpg/420px-Modern-absinthe-bottlescrop.jpg', 'Lili', 4, 5),
(2, 'ananász', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Pineapple1.JPG/375px-Pineapple1.JPG', 'Pisti', 1, 2),
(3, 'antilop', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Springbok.JPG/225px-Springbok.JPG', 'Petra', 2, 2),
(4, 'arapapagáj', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Macaw.blueyellow.arp.750pix.jpg/225px-Macaw.blueyellow.arp.750pix.jpg', 'Pisti', 2, 2),
(5, 'autó', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Villiers_Le_Bacle_le_14_juillet_2008_-_11.jpg/375px-Villiers_Le_Bacle_le_14_juillet_2008_-_11.jpg', 'Pisti', 3, 1),
(6, 'avokádó', 0, 'https://upload.wikimedia.org/wikipedia/commons/1/1d/Avocado.jpeg', 'Alma', 1, 3),
(7, 'banán', 0, 'https://upload.wikimedia.org/wikipedia/commons/d/de/Bananavarieties.jpg', 'Pisti', 1, 1),
(8, 'bor', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Petit_Rouge_di_Cave_Des_Onze_Communes.jpg/180px-Petit_Rouge_di_Cave_Des_Onze_Communes.jpg', 'Barbi', 4, 2),
(9, 'cserepesteknős', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Hawksbill_Turtle.jpg/225px-Hawksbill_Turtle.jpg', 'Pisti', 2, 3),
(10, 'cseresznye', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Ripe_Cherry_%28Prunus_avium%29_in_Hungary.jpg/180px-Ripe_Cherry_%28Prunus_avium%29_in_Hungary.jpg', 'Petra', 1, 2),
(11, 'csirke', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Thimindu_2009_09_04_Yala_Sri_Lanka_Junglefowl_1.JPG/225px-Thimindu_2009_09_04_Yala_Sri_Lanka_Junglefowl_1.JPG', 'Petra', 2, 1),
(12, 'dió', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Juglans_regia_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-081.jpg/390px-Juglans_regia_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-081.jpg', 'Gergő', 1, 1),
(13, 'emu', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Dromaius_novaehollandiae_Toru%C5%84.jpg/390px-Dromaius_novaehollandiae_Toru%C5%84.jpg', 'Alma', 2, 3),
(14, 'eper', 0, 'https://upload.wikimedia.org/wikipedia/commons/2/28/StrawberryWatercolor.jpg', 'Barbi', 1, 1),
(15, 'farkas', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Canis_lupus_lupus_qtl1.jpg/225px-Canis_lupus_lupus_qtl1.jpg', 'Barbi', 2, 1),
(16, 'gin', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Gin_and_Tonic.jpg/225px-Gin_and_Tonic.jpg', 'Pisti', 4, 4),
(17, 'görögdinnye', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Summer_99.jpg/390px-Summer_99.jpg', 'Alma', 1, 2),
(18, 'gránátalma', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Illustration_Punica_granatum2.jpg/390px-Illustration_Punica_granatum2.jpg', 'Petra', 1, 3),
(19, 'hattyú', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Cygnus_olor_2_%28Marek_Szczepanek%29.jpg/225px-Cygnus_olor_2_%28Marek_Szczepanek%29.jpg', 'Dóri', 2, 1),
(20, 'helikopter', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Bell_206L3_%28D-HASA%29.jpg/330px-Bell_206L3_%28D-HASA%29.jpg', 'Petra', 3, 3),
(21, 'hópárduc', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Uncia_uncia_2.jpg/225px-Uncia_uncia_2.jpg', 'Gergő', 2, 3),
(22, 'juh', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flock_of_sheep.jpg/390px-Flock_of_sheep.jpg', 'Gergő', 2, 2),
(23, 'kenguru', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Red_kangaroo_-_melbourne_zoo.jpg/225px-Red_kangaroo_-_melbourne_zoo.jpg', 'Barbi', 2, 2),
(24, 'koktél', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Mixed_drinks.jpg/375px-Mixed_drinks.jpg', 'Tomi', 4, 4),
(25, 'konyak', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Vegu_cognac_boutrand_biron_70s_2010.jpg/255px-Vegu_cognac_boutrand_biron_70s_2010.jpg', 'Pisti', 4, 4),
(26, 'kotrórakodó', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/JCB_4CX_backhoe_loader_in_Sibiu%2C_Rom%C3%A2nia_-_side_view.jpg/375px-JCB_4CX_backhoe_loader_in_Sibiu%2C_Rom%C3%A2nia_-_side_view.jpg', 'Pisti', 3, 5),
(27, 'kutya', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Ozbulldog.jpg/225px-Ozbulldog.jpg', 'Lili', 2, 1),
(28, 'licsi', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Lychee_fruits_and_seed.jpg/390px-Lychee_fruits_and_seed.jpg', 'Pisti', 1, 5),
(29, 'ló', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Cheval_canadien_au_trot_3372.jpg/225px-Cheval_canadien_au_trot_3372.jpg', 'Pisti', 2, 1),
(30, 'macska', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Domestic_cat_cropped.jpg/390px-Domestic_cat_cropped.jpg', 'Barbi', 2, 1),
(31, 'málna', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Raspberries_%28Rubus_Idaeus%29.jpg/390px-Raspberries_%28Rubus_Idaeus%29.jpg', 'Tomi', 1, 2),
(32, 'mangó', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Mango_and_cross_sections.jpg/450px-Mango_and_cross_sections.jpg', 'Matyi', 1, 3),
(33, 'martini', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Martini_Extra_Dry_7408.jpg/225px-Martini_Extra_Dry_7408.jpg', 'Matyi', 4, 3),
(34, 'meggy', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Prunus_cerasus_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-113.jpg/390px-Prunus_cerasus_-_K%C3%B6hler%E2%80%93s_Medizinal-Pflanzen-113.jpg', 'Alma', 1, 2),
(35, 'okapi', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Okapi2.jpg/225px-Okapi2.jpg', 'Pisti', 2, 5),
(36, 'oroszlán', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Lion_waiting_in_Namibia.jpg/225px-Lion_waiting_in_Namibia.jpg', 'Tomi', 2, 1),
(37, 'őszibarack', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Nectarines_summer_2006.jpg/330px-Nectarines_summer_2006.jpg', 'Petra', 1, 1),
(38, 'pálinka', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Palinka.jpg/375px-Palinka.jpg', 'Alma', 4, 3),
(39, 'panda', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Panda.jpg/390px-Panda.jpg', 'Alma', 2, 2),
(40, 'papaja', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Papaya_cross_section_BNC.jpg/330px-Papaya_cross_section_BNC.jpg', 'Pisti', 1, 5),
(41, 'repülő', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/El_Al_B747-258B_%284X-AXH%29_landing_at_London_Heathrow_Airport.jpg/375px-El_Al_B747-258B_%284X-AXH%29_landing_at_London_Heathrow_Airport.jpg', 'Matyi', 3, 2),
(42, 'roller', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Blitz_Pro_H4_Trick_Freestyle_scooter_Blue.jpg/225px-Blitz_Pro_H4_Trick_Freestyle_scooter_Blue.jpg', 'Tomi', 3, 2),
(43, 'rum', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Appleton_Estate_V-X_Jamaica_Rum-with_glass.jpg/330px-Appleton_Estate_V-X_Jamaica_Rum-with_glass.jpg', 'Petra', 4, 2),
(44, 'sör', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Dutch_beers.jpg/330px-Dutch_beers.jpg', 'Alma', 4, 2),
(45, 'strucc', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Ostrich_Ngorongoro_05.jpg/390px-Ostrich_Ngorongoro_05.jpg', 'Lili', 2, 3),
(46, 'szaké', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Lyon_7e_-_Rue_de_Bonald_-_Restaurant_Kuro_Goma%2C_bouteille_et_verre_de_Ninki_Ichi.jpg/330px-Lyon_7e_-_Rue_de_Bonald_-_Restaurant_Kuro_Goma%2C_bouteille_et_verre_de_Ninki_Ichi.jpg', 'Alma', 4, 3),
(47, 'szirti sas', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Aquila_chrysaetos_Flickr.jpg/225px-Aquila_chrysaetos_Flickr.jpg', 'Petra', 2, 3),
(48, 'szőlő', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Close_up_grapes.jpg/390px-Close_up_grapes.jpg', 'Barbi', 1, 2),
(49, 'szurikáta', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Meerkat_%28Suricata_suricatta%29.jpg/390px-Meerkat_%28Suricata_suricatta%29.jpg', 'Matyi', 2, 3),
(50, 'tehén', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Cow_suckling.jpg/390px-Cow_suckling.jpg', 'Alma', 2, 1),
(51, 'tequila', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/15-09-26-RalfR-WLC-0244.jpg/330px-15-09-26-RalfR-WLC-0244.jpg', 'Gergő', 4, 3),
(52, 'tigris', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Bengal_Tiger_Karnataka.jpg/225px-Bengal_Tiger_Karnataka.jpg', 'Matyi', 2, 1),
(53, 'vadkörte', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Rosaceae_-_Pyrus_pyraster_-_Perastro-1.JPG/390px-Rosaceae_-_Pyrus_pyraster_-_Perastro-1.JPG', 'Lili', 1, 5),
(54, 'vodka', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Wodkaflaschen.JPG/375px-Wodkaflaschen.JPG', 'Petra', 4, 4),
(55, 'vonat', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Austria_cityshuttle_01.jpg/375px-Austria_cityshuttle_01.jpg', 'Gergő', 3, 2),
(56, 'whiskey', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/A_Glass_of_Whiskey_on_the_Rocks.jpg/375px-A_Glass_of_Whiskey_on_the_Rocks.jpg', 'Gergő', 4, 5),
(57, 'xoloitzcuintli', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Mexico.Xoloitzcuintle.01.jpg/225px-Mexico.Xoloitzcuintle.01.jpg', 'Petra', 2, 5),
(58, 'zsiráf', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Giraffe_Mikumi_National_Park.jpg/225px-Giraffe_Mikumi_National_Park.jpg', 'Lili', 2, 2),
(60, 'Al', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Physalis.jpg/375px-Physalis.jpg', 'Dóri', 1, 3),
(61, 'földicseresznye', 0, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Physalis.jpg/375px-Physalis.jpg', 'Dóri', 1, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `birth` date NOT NULL,
  `role` varchar(20) COLLATE utf8_hungarian_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `birth`, `role`) VALUES
(3, 'Tomi_Admin', 'bordacstomi19@gmail.com', '$2y$10$EwVtY/QETbEjmw1RnteSp.8WK4WBnwyNg772WQdIyX9CvSCxmP7Wm', '2002-09-19', 'admin'),
(4, 'user1', 'user@user.com', '$2y$10$hITLQMZsWMx3Eoyml/uew.zjTyVDLVLFng5CASLnj2cUkyEfmcBmS', '2000-01-10', 'user');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `nehezseg`
--
ALTER TABLE `nehezseg`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavak`
--
ALTER TABLE `szavak`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoriaid` (`kategoriaid`,`nehezsegid`),
  ADD KEY `nehezsegid` (`nehezsegid`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `nehezseg`
--
ALTER TABLE `nehezseg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `szavak`
--
ALTER TABLE `szavak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `szavak`
--
ALTER TABLE `szavak`
  ADD CONSTRAINT `szavak_ibfk_1` FOREIGN KEY (`nehezsegid`) REFERENCES `nehezseg` (`id`),
  ADD CONSTRAINT `szavak_ibfk_2` FOREIGN KEY (`kategoriaid`) REFERENCES `kategoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
