-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 18. Jan 2023 um 12:46
-- Server-Version: 10.3.31-MariaDB-0+deb10u1
-- PHP-Version: 7.0.33-57+0~20211119.61+debian10~1.gbp5d8ba5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `734301_2_1`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `image_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `images`
--

INSERT INTO `images` (`ID`, `image_url`) VALUES
(52, 'IMG-63c019f607c6e1.12992464.jpg'),
(53, 'IMG-63c01b1bad0be8.92402345.png'),
(54, 'IMG-63c01b8eec3f34.84925870.png'),
(55, 'IMG-63c01c5120f611.19735650.png'),
(56, 'IMG-63c01cb7576e57.79822395.png'),
(57, 'IMG-63c01d4918cee6.88773971.jpg'),
(58, 'IMG-63c01d5b51ff30.79281212.jpg'),
(59, 'IMG-63c021075c4e17.16389480.jpg'),
(60, 'IMG-63c02205547939.67502360.jpg'),
(61, 'IMG-63c02273ce4a48.09188119.jpg'),
(62, 'IMG-63c043f9d69769.38212876.jpg'),
(63, 'IMG-63c044ede5eb33.45045034.jpg'),
(64, 'IMG-63c04510bb9d41.62631878.jpg'),
(65, 'IMG-63c0454f5b5475.42344320.jpg'),
(66, 'IMG-63c04592c42b52.86815932.jpg'),
(67, 'IMG-63c11baa240f63.64436465.jpg'),
(68, 'IMG-63c11cb3cb35e3.08438730.png'),
(69, 'IMG-63c11d1fa90bf2.83558693.png'),
(70, 'IMG-63c11d5fd8e234.22725170.png'),
(71, 'IMG-63c11debd28f39.51714961.png'),
(72, 'IMG-63c11e317b76b1.47401888.png'),
(73, 'IMG-63c11e401aa1b0.59006842.png'),
(74, 'IMG-63c11f1bb29ad2.34915403.png'),
(75, 'IMG-63c1206b51ab17.10924691.png'),
(76, 'IMG-63c1207e8a1829.21869983.png'),
(77, 'IMG-63c123842dfeb5.82542289.jpg'),
(78, 'IMG-63c1249f27b4c6.29989984.jpg'),
(79, 'IMG-63c125252ad6d6.04767459.png'),
(80, 'IMG-63c125d4de3b41.99246062.png'),
(81, 'IMG-63c126649768c4.47459214.png'),
(82, 'IMG-63c1269c8a95f3.54940485.png'),
(83, 'IMG-63c126fbafcbd9.04751447.png'),
(84, 'IMG-63c12724d9d047.24507970.png'),
(85, 'IMG-63c12750d8d5f5.19650969.png'),
(86, 'IMG-63c12763872ea6.55627648.png'),
(87, 'IMG-63c127b94150e8.70546194.png'),
(88, 'IMG-63c127c64bd515.15217598.png'),
(89, 'IMG-63c127dca509e9.35312565.jpg'),
(90, 'IMG-63c1282d94fde8.39019255.jpg'),
(91, 'IMG-63c1285d5aa1a5.59958413.png'),
(92, 'IMG-63c128e6147634.52766867.jpg'),
(93, 'IMG-63c1292bedd747.33089085.png'),
(94, 'IMG-63c12acb645971.01811120.jpg'),
(95, 'IMG-63c12b584dbd46.70692697.jpg'),
(96, 'IMG-63c13643a5bb30.18206932.jpg'),
(97, 'IMG-63c1482d0ee004.34651432.jpeg'),
(98, 'IMG-63c14a7f192268.40630012.jpeg'),
(99, 'IMG-63c15e00648a73.45096076.png'),
(100, 'IMG-63c15ff19e12c0.08340629.png');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `session`
--

CREATE TABLE `session` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Token` varchar(42) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sport`
--

CREATE TABLE `sport` (
  `ID` int(11) NOT NULL,
  `sport` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `sport`
--

INSERT INTO `sport` (`ID`, `sport`) VALUES
(0, ''),
(1, 'Aikido'),
(2, 'Badminton'),
(3, 'Ballett'),
(4, 'Basketball'),
(5, 'Bogenschiessen'),
(6, 'Contemporary Dance'),
(7, 'Eishockey'),
(8, 'Eiskunstlauf'),
(9, 'Fussball'),
(10, 'Geräteturnen'),
(11, 'Handball'),
(12, 'Hip-Hop'),
(13, 'Judo'),
(14, 'Karate'),
(15, 'Kinder- und Jugendriege'),
(16, 'Klettern'),
(17, 'Kunstturnen'),
(18, 'Leichtathletik'),
(19, 'Orientierungslauf'),
(20, 'Parkour'),
(21, 'Reiten'),
(22, 'Rhythmus und Gymnastik'),
(23, 'Rudern'),
(24, 'Schwimmen'),
(25, 'Schwingen'),
(26, 'Skifahren'),
(27, 'Tennis'),
(28, 'Tischtennis'),
(29, 'Unihockey'),
(30, 'Volleyball');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `trainer`
--

CREATE TABLE `trainer` (
  `ID` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `trainername` varchar(100) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `bild` varchar(100) NOT NULL,
  `altersstufe` varchar(200) NOT NULL,
  `ort` varchar(200) NOT NULL,
  `sport` int(11) NOT NULL,
  `qualifikation` varchar(200) NOT NULL,
  `zeit` varchar(200) NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `trainer`
--

INSERT INTO `trainer` (`ID`, `user`, `trainername`, `mail`, `bild`, `altersstufe`, `ort`, `sport`, `qualifikation`, `zeit`, `timestamp`) VALUES
(21, 123, 'Jonny', 'jonny@gmail.com', 'https://734301-2.web.fhgr.ch/uploads/IMG-63c01b1bad0be8.92402345.png', '12 - 16', 'Oberhofen', 1, 'B1 Diplom', 'Mittwoch 16:00 - 18:00', '2023-01-12 14:38:04'),
(23, 127, 'Mike', 'mike@gmail.com', 'https://734301-2.web.fhgr.ch/uploads/IMG-63c01c5120f611.19735650.png', '16 - 21', 'Biel', 28, 'Zertifikat Niveau A-Jugend', 'Mittwoch 19:00 - 21:00', '2023-01-12 14:43:24'),
(24, 129, 'Sara', 'sara@gmail.com', 'https://734301-2.web.fhgr.ch/uploads/IMG-63c1292bedd747.33089085.png', '6 - 10', 'Köniz', 12, 'Diplom C', 'Freitag 16:00 - 19:00', '2023-01-12 14:44:59'),
(32, 122, 'Max', 'max@maxmail.ch', 'https://734301-2.web.fhgr.ch/uploads/IMG-63c1482d0ee004.34651432.jpeg', 'Primarschulalter', 'Biel', 19, 'J+S Leiterkurs', 'Mittwochnachmittag', '2023-01-13 12:04:07');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `name`, `email`, `password`) VALUES
(122, 'Max1', 'max1', '$2y$10$3DlVTA5FD/RhTwDVMaKUJOcqo6LrdltjN.EDQvyXkCkvbfnF7sKWC'),
(123, 'Jonny', 'jonny@gmail.com', '$2y$10$zzppRfYCN8rkJnCBJGA4XOr9fmp8pEgAZt8zoWNkfKlBQD3VIoJu.'),
(126, 'Tester', 'tester', '$2y$10$CEqsDZcxq12w.t5eQ7yiI.HPuOpSbAeD.FzQ.wzVt3S96Ma/ws6Ym'),
(127, 'Mike', 'mike@gmail.com', '$2y$10$jMniaV/uzEI4HZlIB9z4f.Oyldx0ZN9ZlNX0WHvpLj9kKzJuaybgu'),
(129, 'Sara', 'sara@gmail.com', '$2y$10$U7MGbUiLt4KZyyU0AvC86uwxL5qys91NZemymypmCKxGQPbuc.Cgy'),
(130, 'Test Moritz', 'mo@mo.ch', '$2y$10$YB0TOfOYUGO0.c9SfvoEg.ABJeMviSw.d7PZKlPA8Dxva55rNoR6K'),
(131, 'Kim', 'kim@kim.ch', '$2y$10$P1H/s6Ne/RBvpfronlCTaO2nrDtdPLMkt3x8wfSFLiBID.4uK8.AW');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `session_userid` (`User_ID`);

--
-- Indizes für die Tabelle `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sport` (`sport`),
  ADD KEY `user` (`user`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT für Tabelle `session`
--
ALTER TABLE `session`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT für Tabelle `trainer`
--
ALTER TABLE `trainer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
