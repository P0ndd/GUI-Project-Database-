-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 02:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `liststudent`
--

CREATE TABLE `liststudent` (
  `IDStudent` bigint(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `liststudent`
--

INSERT INTO `liststudent` (`IDStudent`, `FirstName`, `LastName`) VALUES
(6457100082, 'Jiraporn', 'Supintanaporn'),
(6457100121, 'Porachat ', 'Daungsong '),
(6457100180, 'Rattanawadee', 'Intorn'),
(6457100198, 'Kittiyaporn', 'Trakunrungcharoen'),
(6551106340, 'Arwaraia', 'Hangkham'),
(6551108768, 'Waranya', 'Duangtoi'),
(6551109489, 'Sukanda', 'Netdetcha'),
(6551109691, 'Mitsit', 'Kittisakdipinyo'),
(6551109764, 'Siriprapa', 'Kreuataisong'),
(6551110304, 'Supawadee', 'Getkhaow'),
(6552100175, 'Siraphop', 'Patsopar'),
(6552100333, 'Nichaphat', 'Sitthamwilai'),
(6552100387, 'Wachira', 'Suphadanaisorn'),
(6552300026, 'Chawnakorn', 'Sangsaewong'),
(6552300051, ' Papanat ', 'Jaidisakunee'),
(6552300166, 'Nattachan ', 'Pobbuap'),
(6552300255, 'Rangsiros ', 'Monkgit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `liststudent`
--
ALTER TABLE `liststudent`
  ADD PRIMARY KEY (`IDStudent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `liststudent`
--
ALTER TABLE `liststudent`
  MODIFY `IDStudent` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6552300256;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
