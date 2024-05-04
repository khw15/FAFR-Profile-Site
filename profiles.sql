-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2024 at 03:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int NOT NULL,
  `school_name` char(60) NOT NULL,
  `year_start` int NOT NULL,
  `year_end` char(10) NOT NULL,
  `department` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `school_name`, `year_start`, `year_end`, `department`) VALUES
(1, 'Priority Vocational School of Sukabumi', 2018, '2021', 'Computer and Network Engineering'),
(3, 'Muhammadiyah University of Sukabumi', 2021, 'Present', 'Informatics');

-- --------------------------------------------------------

--
-- Table structure for table `exp`
--

CREATE TABLE `exp` (
  `id` int NOT NULL,
  `name` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_month` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_year` year NOT NULL,
  `end_month` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `end_year` year NOT NULL,
  `workplace` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `working_type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exp`
--

INSERT INTO `exp` (`id`, `name`, `start_month`, `start_year`, `end_month`, `end_year`, `workplace`, `working_type`) VALUES
(1, 'SIB x Dicoding Batch 4', 'August', '2023', 'December', '2023', 'Dicoding', 'Online'),
(2, 'Test Name', 'January', '2024', 'April', '2024', 'Test Workplace', 'Online'),
(3, 'Test Name', 'January', '2025', 'April', '2025', 'Test Workplace', 'Online'),
(4, 'Test Name', 'January', '2026', 'April', '2026', 'Test Workplace', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `fafr`
--

CREATE TABLE `fafr` (
  `id` int NOT NULL,
  `name` char(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introduction` char(255) NOT NULL,
  `skill` char(255) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fafr`
--

INSERT INTO `fafr` (`id`, `name`, `introduction`, `skill`, `phone`, `email`) VALUES
(1, 'Faisal Al-Munawar Fathur Rahman', 'Hi there, I am Faisal A F Rahman, a Front-end and DevOps Engineer based in Sukabumi, Indonesia. I\'m passionate about crafting seamless user experiences through intuitive interfaces and optimizing backend processes for efficiency and scalability.', 'DevOps Developer, Front-end Developer, Back-end Developer', '+62 899-315-9911', 'fafr.dev@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int NOT NULL,
  `name` char(40) NOT NULL,
  `type` char(10) NOT NULL,
  `github_link` varchar(100) NOT NULL,
  `image_filename` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `type`, `github_link`, `image_filename`) VALUES
(1, 'COVID-19 Monitor', 'front-end', 'https://github.com/khw15/COVID19-Monitor', 'covid19-monitor'),
(2, 'Test Back-end', 'back-end', 'https://example.com/', 'backend-submission');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int NOT NULL,
  `github` varchar(50) NOT NULL,
  `discord` varchar(50) NOT NULL,
  `linkedin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `github`, `discord`, `linkedin`) VALUES
(1, 'https://github.com/khw15', 'https://discordapp.com/users/440894254408007690', 'https://www.linkedin.com/in/fafr');

-- --------------------------------------------------------

--
-- Table structure for table `tech_stack`
--

CREATE TABLE `tech_stack` (
  `id` int NOT NULL,
  `tech_name` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `percentage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tech_stack`
--

INSERT INTO `tech_stack` (`id`, `tech_name`, `percentage`) VALUES
(1, 'HTML', 100),
(2, 'CSS', 100),
(4, 'React', 75),
(5, 'PHP', 50),
(6, 'JavaScript', 90),
(7, 'Docker', 95);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp`
--
ALTER TABLE `exp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fafr`
--
ALTER TABLE `fafr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_stack`
--
ALTER TABLE `tech_stack`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exp`
--
ALTER TABLE `exp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fafr`
--
ALTER TABLE `fafr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tech_stack`
--
ALTER TABLE `tech_stack`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
