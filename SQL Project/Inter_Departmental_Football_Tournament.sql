-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2023 at 04:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Inter_Departmental_Football_Tournament`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldept`
--

CREATE TABLE `tbldept` (
  `deptCode` int(11) NOT NULL,
  `deptName` varchar(40) DEFAULT NULL,
  `deptShortName` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmatch`
--

CREATE TABLE `tblmatch` (
  `matchID` int(11) NOT NULL,
  `matchdate` date DEFAULT NULL,
  `team1_deptCode` int(11) DEFAULT NULL,
  `team2_deptCode` int(11) DEFAULT NULL,
  `team1_goal_number` int(11) DEFAULT NULL,
  `team2_goal_number` int(11) DEFAULT NULL,
  `matchRefereeID` int(11) DEFAULT NULL,
  `matchLineman1ID` int(11) DEFAULT NULL,
  `matchLineman2ID` int(11) DEFAULT NULL,
  `matchFourthRefereeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblplayer`
--

CREATE TABLE `tblplayer` (
  `playerRegNo` int(11) NOT NULL,
  `playerSession` varchar(10) DEFAULT NULL,
  `playerSemester` int(11) DEFAULT NULL,
  `playerName` varchar(50) DEFAULT NULL,
  `playerdeptCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpunishment`
--

CREATE TABLE `tblpunishment` (
  `matchID` int(11) DEFAULT NULL,
  `playerRegNo` int(11) DEFAULT NULL,
  `team_deptCode` int(11) DEFAULT NULL,
  `puhishmentType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreferee`
--

CREATE TABLE `tblreferee` (
  `refereeID` int(11) NOT NULL,
  `refName` varchar(40) DEFAULT NULL,
  `refInstitute` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `matchID` int(11) DEFAULT NULL,
  `playerRegNo` int(11) DEFAULT NULL,
  `team_deptCode` int(11) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblteam`
--

CREATE TABLE `tblteam` (
  `teamSubmissionDate` date DEFAULT NULL,
  `deptCode` int(11) DEFAULT NULL,
  `deptHead` varchar(50) DEFAULT NULL,
  `teamManager` varchar(50) DEFAULT NULL,
  `teamCaptainRegID` int(11) DEFAULT NULL,
  `player1RegNo` int(11) DEFAULT NULL,
  `player2RegNo` int(11) DEFAULT NULL,
  `player3RegNo` int(11) DEFAULT NULL,
  `player4RegNo` int(11) DEFAULT NULL,
  `player5RegNo` int(11) DEFAULT NULL,
  `player6RegNo` int(11) DEFAULT NULL,
  `player7RegNo` int(11) DEFAULT NULL,
  `player8RegNo` int(11) DEFAULT NULL,
  `player9RegNo` int(11) DEFAULT NULL,
  `player10RegNo` int(11) DEFAULT NULL,
  `player11RegNo` int(11) DEFAULT NULL,
  `player12RegNo` int(11) DEFAULT NULL,
  `player13RegNo` int(11) DEFAULT NULL,
  `player14RegNo` int(11) DEFAULT NULL,
  `player15RegNo` int(11) DEFAULT NULL,
  `player16RegNo` int(11) DEFAULT NULL,
  `player17RegNo` int(11) DEFAULT NULL,
  `player18RegNo` int(11) DEFAULT NULL,
  `player19RegNo` int(11) DEFAULT NULL,
  `player20RegNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltiebreaker`
--

CREATE TABLE `tbltiebreaker` (
  `matchID` int(11) DEFAULT NULL,
  `team1_deptCode` int(11) DEFAULT NULL,
  `team2_deptCode` int(11) DEFAULT NULL,
  `team1_penalty_1` tinyint(1) DEFAULT NULL,
  `team2_penalty_1` tinyint(1) DEFAULT NULL,
  `team1_penalty_2` tinyint(1) DEFAULT NULL,
  `team2_penalty_2` tinyint(1) DEFAULT NULL,
  `team1_penalty_3` tinyint(1) DEFAULT NULL,
  `team2_penalty_3` tinyint(1) DEFAULT NULL,
  `team1_penalty_4` tinyint(1) DEFAULT NULL,
  `team2_penalty_4` tinyint(1) DEFAULT NULL,
  `team1_penalty_5` tinyint(1) DEFAULT NULL,
  `team2_penalty_5` tinyint(1) DEFAULT NULL,
  `team_1_tieBreakerScore` int(11) DEFAULT NULL,
  `team_2_tieBreakerScore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldept`
--
ALTER TABLE `tbldept`
  ADD PRIMARY KEY (`deptCode`);

--
-- Indexes for table `tblmatch`
--
ALTER TABLE `tblmatch`
  ADD PRIMARY KEY (`matchID`),
  ADD KEY `team1_deptCode` (`team1_deptCode`),
  ADD KEY `team2_deptCode` (`team2_deptCode`),
  ADD KEY `matchRefereeID` (`matchRefereeID`),
  ADD KEY `matchLineman1ID` (`matchLineman1ID`),
  ADD KEY `matchLineman2ID` (`matchLineman2ID`),
  ADD KEY `matchFourthRefereeID` (`matchFourthRefereeID`);

--
-- Indexes for table `tblplayer`
--
ALTER TABLE `tblplayer`
  ADD PRIMARY KEY (`playerRegNo`),
  ADD KEY `playerdeptCode` (`playerdeptCode`);

--
-- Indexes for table `tblpunishment`
--
ALTER TABLE `tblpunishment`
  ADD KEY `matchID` (`matchID`),
  ADD KEY `playerRegNo` (`playerRegNo`),
  ADD KEY `team_deptCode` (`team_deptCode`);

--
-- Indexes for table `tblreferee`
--
ALTER TABLE `tblreferee`
  ADD PRIMARY KEY (`refereeID`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD KEY `matchID` (`matchID`),
  ADD KEY `playerRegNo` (`playerRegNo`),
  ADD KEY `team_deptCode` (`team_deptCode`);

--
-- Indexes for table `tblteam`
--
ALTER TABLE `tblteam`
  ADD KEY `deptCode` (`deptCode`),
  ADD KEY `teamCaptainRegID` (`teamCaptainRegID`),
  ADD KEY `player1RegNo` (`player1RegNo`),
  ADD KEY `player2RegNo` (`player2RegNo`),
  ADD KEY `player3RegNo` (`player3RegNo`),
  ADD KEY `player4RegNo` (`player4RegNo`),
  ADD KEY `player5RegNo` (`player5RegNo`),
  ADD KEY `player6RegNo` (`player6RegNo`),
  ADD KEY `player7RegNo` (`player7RegNo`),
  ADD KEY `player8RegNo` (`player8RegNo`),
  ADD KEY `player9RegNo` (`player9RegNo`),
  ADD KEY `player10RegNo` (`player10RegNo`),
  ADD KEY `player11RegNo` (`player11RegNo`),
  ADD KEY `player12RegNo` (`player12RegNo`),
  ADD KEY `player13RegNo` (`player13RegNo`),
  ADD KEY `player14RegNo` (`player14RegNo`),
  ADD KEY `player15RegNo` (`player15RegNo`),
  ADD KEY `player16RegNo` (`player16RegNo`),
  ADD KEY `player17RegNo` (`player17RegNo`),
  ADD KEY `player18RegNo` (`player18RegNo`),
  ADD KEY `player19RegNo` (`player19RegNo`),
  ADD KEY `player20RegNo` (`player20RegNo`);

--
-- Indexes for table `tbltiebreaker`
--
ALTER TABLE `tbltiebreaker`
  ADD KEY `matchID` (`matchID`),
  ADD KEY `team1_deptCode` (`team1_deptCode`),
  ADD KEY `team2_deptCode` (`team2_deptCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblmatch`
--
ALTER TABLE `tblmatch`
  ADD CONSTRAINT `tblmatch_ibfk_1` FOREIGN KEY (`team1_deptCode`) REFERENCES `tbldept` (`deptCode`),
  ADD CONSTRAINT `tblmatch_ibfk_2` FOREIGN KEY (`team2_deptCode`) REFERENCES `tbldept` (`deptCode`),
  ADD CONSTRAINT `tblmatch_ibfk_3` FOREIGN KEY (`matchRefereeID`) REFERENCES `tblreferee` (`refereeID`),
  ADD CONSTRAINT `tblmatch_ibfk_4` FOREIGN KEY (`matchLineman1ID`) REFERENCES `tblreferee` (`refereeID`),
  ADD CONSTRAINT `tblmatch_ibfk_5` FOREIGN KEY (`matchLineman2ID`) REFERENCES `tblreferee` (`refereeID`),
  ADD CONSTRAINT `tblmatch_ibfk_6` FOREIGN KEY (`matchFourthRefereeID`) REFERENCES `tblreferee` (`refereeID`);

--
-- Constraints for table `tblplayer`
--
ALTER TABLE `tblplayer`
  ADD CONSTRAINT `tblplayer_ibfk_1` FOREIGN KEY (`playerdeptCode`) REFERENCES `tbldept` (`deptCode`);

--
-- Constraints for table `tblpunishment`
--
ALTER TABLE `tblpunishment`
  ADD CONSTRAINT `tblpunishment_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `tblmatch` (`matchID`),
  ADD CONSTRAINT `tblpunishment_ibfk_2` FOREIGN KEY (`playerRegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblpunishment_ibfk_3` FOREIGN KEY (`team_deptCode`) REFERENCES `tbldept` (`deptCode`);

--
-- Constraints for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD CONSTRAINT `tblscore_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `tblmatch` (`matchID`),
  ADD CONSTRAINT `tblscore_ibfk_2` FOREIGN KEY (`playerRegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblscore_ibfk_3` FOREIGN KEY (`team_deptCode`) REFERENCES `tbldept` (`deptCode`);

--
-- Constraints for table `tblteam`
--
ALTER TABLE `tblteam`
  ADD CONSTRAINT `tblteam_ibfk_1` FOREIGN KEY (`deptCode`) REFERENCES `tbldept` (`deptCode`),
  ADD CONSTRAINT `tblteam_ibfk_10` FOREIGN KEY (`player8RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_11` FOREIGN KEY (`player9RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_12` FOREIGN KEY (`player10RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_13` FOREIGN KEY (`player11RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_14` FOREIGN KEY (`player12RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_15` FOREIGN KEY (`player13RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_16` FOREIGN KEY (`player14RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_17` FOREIGN KEY (`player15RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_18` FOREIGN KEY (`player16RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_19` FOREIGN KEY (`player17RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_2` FOREIGN KEY (`teamCaptainRegID`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_20` FOREIGN KEY (`player18RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_21` FOREIGN KEY (`player19RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_22` FOREIGN KEY (`player20RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_3` FOREIGN KEY (`player1RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_4` FOREIGN KEY (`player2RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_5` FOREIGN KEY (`player3RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_6` FOREIGN KEY (`player4RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_7` FOREIGN KEY (`player5RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_8` FOREIGN KEY (`player6RegNo`) REFERENCES `tblplayer` (`playerRegNo`),
  ADD CONSTRAINT `tblteam_ibfk_9` FOREIGN KEY (`player7RegNo`) REFERENCES `tblplayer` (`playerRegNo`);

--
-- Constraints for table `tbltiebreaker`
--
ALTER TABLE `tbltiebreaker`
  ADD CONSTRAINT `tbltiebreaker_ibfk_1` FOREIGN KEY (`matchID`) REFERENCES `tblmatch` (`matchID`),
  ADD CONSTRAINT `tbltiebreaker_ibfk_2` FOREIGN KEY (`team1_deptCode`) REFERENCES `tbldept` (`deptCode`),
  ADD CONSTRAINT `tbltiebreaker_ibfk_3` FOREIGN KEY (`team2_deptCode`) REFERENCES `tbldept` (`deptCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
