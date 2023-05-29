-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 31 Mar 2021, 07:22
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `serwiskomputerow`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czesciserwis`
--

CREATE TABLE `czesciserwis` (
  `idczesciserwis` int(11) NOT NULL,
  `idzgloszeniaserwis` int(11) DEFAULT NULL,
  `idzakupczesci` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `czesciserwis`
--

INSERT INTO `czesciserwis` (`idczesciserwis`, `idzgloszeniaserwis`, `idzakupczesci`) VALUES
(1, 4, 1),
(2, 6, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czynnosciserwisowe`
--

CREATE TABLE `czynnosciserwisowe` (
  `idCzynnosciSerwisowe` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `koszt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `czynnosciserwisowe`
--

INSERT INTO `czynnosciserwisowe` (`idCzynnosciSerwisowe`, `nazwa`, `koszt`) VALUES
(1, 'test RAM', 20),
(2, 'test dysk', 20),
(3, 'sprawdzenie ciaglosci dysku', 20),
(4, 'sprawdzenie antywirusem', 20),
(5, 'reinstalacja systemu', 70),
(6, 'kopiowanie plikow/godzina', 70),
(7, 'wymiana procesora', 70),
(8, 'wymiana dysku twardego', 30),
(9, 'wymiana wentylatora', 30),
(10, 'wymiana zasilacza', 50),
(11, 'lutowanie portu ladowania', 70),
(12, 'sprawdzanie komputera', 50),
(13, 'rozlozenie obudowy i ponowny montaz', 100),
(14, 'ogledziny sprzetu', 25),
(15, 'odefragmentacja dysku', 25),
(16, 'czyszczenie rejestru i usuniecie niepotrzebny', 50),
(17, 'dezinstalacja niepotrzebnych programow', 40),
(18, 'montaz pamieci ram', 25),
(19, 'czyszczenie podzespolow komputerowych', 70),
(20, 'przeglad systemu operacyjnego', 30),
(21, 'wymiana matrycy', 90),
(22, 'usuniecie wirusow', 90);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `idFaktura` int(11) NOT NULL,
  `numer` varchar(45) DEFAULT NULL,
  `idZgloszenia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `faktura`
--

INSERT INTO `faktura` (`idFaktura`, `numer`, `idZgloszenia`) VALUES
(1, '748/02/2021', 1),
(2, '749/02/2021', 2),
(3, '750/02/2021', 3),
(4, '751/02/2021', 4),
(5, '752/02/2021', 5),
(6, '753/02/2021', 6),
(7, '753/02/2021', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `idKlient` int(11) NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`idKlient`, `imie`, `nazwisko`, `telefon`, `email`) VALUES
(1, 'Tomasz', 'Kot', '4567892', 'rtesd@fdfd@pl'),
(2, 'Rafa?', 'Brzozowski', '454567892', 'gfd@fdfd@pl'),
(3, 'Micha?', 'Zebrowski', '125454567892', 'michal@fdfd@pl'),
(4, 'Doroota', 'Welman', '78549632', 'dorota@fdfd.pl'),
(5, 'Karolina', 'Nowak', '58496584', 'karolina@fdfd.pl'),
(6, 'Przemyslaw', 'Gembalczyk', '11111111', NULL),
(7, 'Tomasz', 'Nowak', '113111411', NULL),
(8, 'Pawel', 'Kowalski', '111f11111', NULL),
(9, 'Rafal', 'Kwolek', '13111411', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sprzet`
--

CREATE TABLE `sprzet` (
  `idSprzet` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `numerSeryjny` varchar(45) DEFAULT NULL,
  `uwagi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sprzet`
--

INSERT INTO `sprzet` (`idSprzet`, `nazwa`, `numerSeryjny`, `uwagi`) VALUES
(1, 'drukarka HP 785', 'da587469', NULL),
(2, 'drukarka Lexmark e254', 'dfsd55da587469', NULL),
(3, 'komputer Dell 542', 'dasdas85', NULL),
(4, 'komputer Dell 542', 'sdasddas85', NULL),
(5, 'komputer Dell 542', 'sdasddsdsdas85', NULL),
(6, 'laptop HP 57922', '454fsd4', NULL),
(7, 'laptop HP 57922', '454fsd4434', NULL),
(8, 'laptop Asus K584', '123cde43', NULL),
(9, 'laptop Asus K584', '12ds3cde43', NULL),
(10, 'laptop Asus K584', '1gf2ds3cde43', NULL),
(11, 'DELL Inspiron 5712', '14589ER24', NULL),
(12, 'router Linksys FG-587', '1f54	erR24', NULL),
(13, 'DELL Inspiron 5812', '1454579ER24', NULL),
(14, 'komputer stacjonarny', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wykonanieserwisu`
--

CREATE TABLE `wykonanieserwisu` (
  `idWykonanieSerwisu` int(11) NOT NULL,
  `idZgloszenia` int(11) DEFAULT NULL,
  `idCzynnosciSerwisowe` int(11) DEFAULT NULL,
  `czasIlosc` int(11) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wykonanieserwisu`
--

INSERT INTO `wykonanieserwisu` (`idWykonanieSerwisu`, `idZgloszenia`, `idCzynnosciSerwisowe`, `czasIlosc`, `opis`) VALUES
(1, 1, 11, 1, NULL),
(2, 1, 12, 1, NULL),
(3, 1, 13, 1, NULL),
(4, 2, 14, 1, NULL),
(5, 3, 15, 1, NULL),
(6, 3, 16, 1, NULL),
(7, 3, 17, 1, NULL),
(8, 4, 18, 1, NULL),
(9, 5, 19, 1, NULL),
(10, 5, 20, 1, NULL),
(11, 6, 21, 1, NULL),
(12, 7, 19, 1, NULL),
(13, 7, 20, 1, NULL),
(14, 7, 22, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zakupczesci`
--

CREATE TABLE `zakupczesci` (
  `idzakupczesci` int(11) NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL,
  `koszt` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zakupczesci`
--

INSERT INTO `zakupczesci` (`idzakupczesci`, `nazwa`, `ilosc`, `koszt`) VALUES
(1, 'Pamiec DDR4 HyperX Fury 8GB', 1, 200),
(2, 'matryca dell inspiron 5712', 1, 300);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zgloszeniaserwis`
--

CREATE TABLE `zgloszeniaserwis` (
  `idZgloszeniaSerwis` int(11) NOT NULL,
  `numerZgloszenia` varchar(45) DEFAULT NULL,
  `idKlient` int(11) DEFAULT NULL,
  `idSprzet` int(11) DEFAULT NULL,
  `opisUsterki` text DEFAULT NULL,
  `opisRozwiazania` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zgloszeniaserwis`
--

INSERT INTO `zgloszeniaserwis` (`idZgloszeniaSerwis`, `numerZgloszenia`, `idKlient`, `idSprzet`, `opisUsterki`, `opisRozwiazania`) VALUES
(1, '1/2021', 6, 11, 'nie swieci dioda ladowania, nie uruchamia sie', 'lutowanie portu ladowania, montaz i demontaz obudowy, test laptopa'),
(2, '2/2011', 7, 12, 'router sie wiesza', 'koszt naprawy przewyzsza wartosc routera'),
(3, '3/2011', 6, 13, 'bardzo wolno dziala', 'czeszczenie systemu i usuwanie programow'),
(4, '4/2011', 8, 14, 'dodanie pamieci ram', 'montaz pamieci'),
(5, '5/2011', 8, 11, 'czyszczenie', 'czyszczenie'),
(6, '6/2011', 6, 11, 'uszkodzona matryca', 'wymiana matrycy'),
(7, '7/2011', 9, 11, 'komputer ma wirusy', 'czyszczenie i usueniecie wirusow');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `czesciserwis`
--
ALTER TABLE `czesciserwis`
  ADD PRIMARY KEY (`idczesciserwis`);

--
-- Indeksy dla tabeli `czynnosciserwisowe`
--
ALTER TABLE `czynnosciserwisowe`
  ADD PRIMARY KEY (`idCzynnosciSerwisowe`);

--
-- Indeksy dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD PRIMARY KEY (`idFaktura`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`idKlient`);

--
-- Indeksy dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  ADD PRIMARY KEY (`idSprzet`);

--
-- Indeksy dla tabeli `wykonanieserwisu`
--
ALTER TABLE `wykonanieserwisu`
  ADD PRIMARY KEY (`idWykonanieSerwisu`);

--
-- Indeksy dla tabeli `zakupczesci`
--
ALTER TABLE `zakupczesci`
  ADD PRIMARY KEY (`idzakupczesci`);

--
-- Indeksy dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  ADD PRIMARY KEY (`idZgloszeniaSerwis`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `czesciserwis`
--
ALTER TABLE `czesciserwis`
  MODIFY `idczesciserwis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `czynnosciserwisowe`
--
ALTER TABLE `czynnosciserwisowe`
  MODIFY `idCzynnosciSerwisowe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT dla tabeli `faktura`
--
ALTER TABLE `faktura`
  MODIFY `idFaktura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `idKlient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `sprzet`
--
ALTER TABLE `sprzet`
  MODIFY `idSprzet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `wykonanieserwisu`
--
ALTER TABLE `wykonanieserwisu`
  MODIFY `idWykonanieSerwisu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `zakupczesci`
--
ALTER TABLE `zakupczesci`
  MODIFY `idzakupczesci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `zgloszeniaserwis`
--
ALTER TABLE `zgloszeniaserwis`
  MODIFY `idZgloszeniaSerwis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
