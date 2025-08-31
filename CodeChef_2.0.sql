-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2023 at 08:01 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CodeChef_2.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `Contests`
--

CREATE TABLE `Contests` (
  `contest_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `participants` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Contests`
--

INSERT INTO `Contests` (`contest_id`, `name`, `participants`, `date`) VALUES
(1, 'Starters_97', 24256, '2023-07-05'),
(2, 'Starter_92', 24897, '2023-07-01'),
(3, 'Starters_83', 10004, '2023-06-28'),
(4, 'Starters_86', 29049, '2023-06-14'),
(5, 'Starters_79', 24643, '2023-06-10'),
(6, 'MAY LONG TWO 2022', 10975, '2023-05-01'),
(7, 'Starters_75', 28754, '2023-05-10'),
(8, 'Starters_69', 20502, '2023-04-26'),
(9, 'Starters_68', 20502, '2023-04-22'),
(10, 'Starters_65', 24873, '2023-05-03'),
(11, 'Starters_59', 19863, '2023-04-13'),
(12, 'Starters_53', 18904, '2023-04-01'),
(13, 'Starters_52', 18496, '2023-03-25'),
(14, 'Starters_48', 16823, '2023-03-18'),
(15, 'Starters_43', 19574, '2023-03-04'),
(16, 'Starters_42', 19657, '2023-03-01'),
(17, 'Starters_38', 18648, '2023-03-01'),
(18, 'Starters_32', 18478, '2022-12-03'),
(19, 'Starters_31', 20584, '2023-01-25'),
(20, 'February Cookoff', 18475, '2022-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `Teams`
--

CREATE TABLE `Teams` (
  `team_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Teams`
--

INSERT INTO `Teams` (`team_id`, `name`) VALUES
(1, 'The_King_Coders'),
(2, 'Loop_Troops'),
(3, 'CodeandEat'),
(4, 'PicassoCoders'),
(5, 'Algo Spiderman'),
(6, 'TheAlgoMasters'),
(7, 'OpenWarriors'),
(8, 'TheAlgoMasters'),
(9, 'ErrorTerror'),
(10, 'ChallengersLion'),
(11, 'PistaCoders'),
(12, 'HimalyanMasters'),
(13, 'ErrorTerror'),
(14, 'TheKingKhanGang'),
(15, 'KeyboardRiders'),
(16, 'SystematicLiners'),
(17, 'LoopInfinity'),
(18, 'YoungAlgoCoders'),
(19, 'SemanticTerror'),
(20, 'Contestants');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `email` varchar(40) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `college` varchar(30) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `contests` int(11) NOT NULL,
  `last_contest` int(11) NOT NULL,
  `submissions` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `pro_plan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`email`, `user_name`, `age`, `college`, `rating`, `contests`, `last_contest`, `submissions`, `team_id`, `pro_plan`) VALUES
('benq@gmail.com', 'benq', 37, 'MIT', 3017, 259, 1, 10200, 20, 0),
('Binenie@gmail.com', 'BinaryGenie', 24, 'NIT Warangal', 2390, 91, 18, 1771, 7, 1),
('Bytstro@gmail.com', 'ByteMaestro', 51, NULL, 2150, 61, 18, 1831, NULL, 0),
('caronni@att.net', 'ByteCoder', 21, 'IIT Kanpur', 1012, 2, 12, 200, 3, 0),
('coderajay@gmail.com', 'unknown_ajay', 20, 'IIIT Lucknow', 1960, 54, 1, 850, 1, 1),
('CodeSlinger@gmail.com', 'CodeSlinger', 25, 'HKUST', 1450, 12, 7, 131, 8, 1),
('CodeWizard@gmail.com', 'CodeWizard', 18, 'UCL', 1791, 18, 13, 933, 4, 0),
('codex@me.com', 'codex', 24, NULL, 2011, 12, 17, 1200, 3, 0),
('Codusader@gmail.com', 'CodeCrusader', 52, NULL, 2290, 61, 18, 1991, 9, 0),
('Cybmurai@gmail.com', 'CyberSamurai', 53, NULL, 2390, 62, 18, 1771, NULL, 0),
('Cyght@gmail.com', 'CyberKnight', 30, NULL, 2250, 71, 18, 1231, 17, 0),
('Hacker@gmail.com', 'Hacker', 16, 'UMichigan', 1100, 9, 16, 431, 8, 0),
('Hackerr@gmail.com', 'Hackerr', 25, 'HKUST', 1450, 12, 7, 631, 8, 1),
('HackWhiz@gmail.com', 'HackWhiz', 32, NULL, 2350, 61, 18, 1831, 17, 0),
('Haspebro@gmail.com', 'HackWhispererbro', 20, 'RWTH Aachen', 1991, 19, 12, 1033, 4, 0),
('HaWer@gmail.com', 'HackWhisperer', 20, 'RWTH Aachen', 1991, 19, 12, 1033, 4, 0),
('jiangly@gmail.com', 'jiangly', 26, 'jiangly University', 2917, 190, 1, 8900, 20, 0),
('Maestro@gmail.com', 'BinaryMaestro', 31, NULL, 2180, 69, 18, 1431, 17, 0),
('Ninja@gmail.com', 'CodeNinja', 17, 'Caltech', 1000, 10, 12, 303, 8, 0),
('nor@gmail.com', 'nor', 19, 'ETH Zurich', 1891, 20, 13, 900, 4, 0),
('PixelProdigy@gmail.com', 'PixelProdigy', 25, 'HKUST', 1550, 12, 7, 231, 8, 1),
('tourist@gmail.com', 'tourist', 35, 'ITMO University', 3012, 300, 1, 11200, 20, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Contests`
--
ALTER TABLE `Contests`
  ADD PRIMARY KEY (`contest_id`);

--
-- Indexes for table `Teams`
--
ALTER TABLE `Teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`email`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `last_contest` (`last_contest`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `Teams` (`team_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`last_contest`) REFERENCES `Contests` (`contest_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
