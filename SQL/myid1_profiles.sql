-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2024 at 06:13 AM
-- Server version: 10.6.18-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myid1_profiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `school_name` char(60) NOT NULL,
  `year_start` int(11) NOT NULL,
  `year_end` char(10) NOT NULL,
  `department` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `school_name`, `year_start`, `year_end`, `department`) VALUES
(1, 'Priority Vocational School of Sukabumi', 2018, '2021', 'Computer and Network Engineering'),
(2, 'Muhammadiyah University of Sukabumi', 2021, 'Present', 'Informatics');

-- --------------------------------------------------------

--
-- Table structure for table `exp`
--

CREATE TABLE `exp` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `start_month` char(20) NOT NULL,
  `start_year` year(4) NOT NULL,
  `end_month` char(20) NOT NULL,
  `end_year` year(4) NOT NULL,
  `workplace` char(50) NOT NULL,
  `working_type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exp`
--

INSERT INTO `exp` (`id`, `name`, `start_month`, `start_year`, `end_month`, `end_year`, `workplace`, `working_type`) VALUES
(1, 'SIB x Dicoding Batch 5', 'August', '2023', 'December', '2023', 'Dicoding', 'Online'),
(2, 'Test Name', 'January', '2024', 'April', '2024', 'Test Workplace', 'Online'),
(3, 'Test Name', 'January', '2025', 'April', '2025', 'Test Workplace', 'Online'),
(4, 'Test Name', 'January', '2026', 'April', '2026', 'Test Workplace', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `fafr`
--

CREATE TABLE `fafr` (
  `id` int(11) NOT NULL,
  `name` char(55) NOT NULL,
  `introduction` char(255) NOT NULL,
  `skill` char(255) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fafr`
--

INSERT INTO `fafr` (`id`, `name`, `introduction`, `skill`, `phone`, `email`) VALUES
(1, 'Faisal Al-Munawar Fathur Rahman', 'Hi there, I am Faisal A F Rahman, a Front-end and DevOps Engineer based in Sukabumi, Indonesia. I\'m passionate about crafting seamless user experiences through intuitive interfaces and optimizing backend processes for efficiency and scalability.', 'DevOps Developer, Front-end Developer, Back-end Developer', '+62 8123-456-789', 'fafr.dev@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `type` char(10) NOT NULL,
  `filename` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `type`, `filename`) VALUES
(1, 'COVID-19 Monitor', 'front-end', 'covid19-monitor'),
(2, 'Test Back-end', 'back-end', 'backend-submission'),
(3, 'react-notes', 'front-end', 'react-notes'),
(4, 'Forum-App', 'front-end', 'Forum-App');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `type`, `link`) VALUES
(1, 'github', 'https://github.com/khw15'),
(2, 'linkedin-in', 'https://www.linkedin.com/in/fafr'),
(3, 'discord', 'https://discordapp.com/users/440894254408007690'),
(4, 'x-twitter', 'https://x.com/khw15__');

-- --------------------------------------------------------

--
-- Table structure for table `tech_stack`
--

CREATE TABLE `tech_stack` (
  `id` int(11) NOT NULL,
  `tech_name` char(60) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exp`
--
ALTER TABLE `exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fafr`
--
ALTER TABLE `fafr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tech_stack`
--
ALTER TABLE `tech_stack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
