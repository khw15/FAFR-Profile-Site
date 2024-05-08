-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2024 at 03:25 AM
-- Server version: 10.6.17-MariaDB
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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, '하니', 'afaisalalmunawar03@gmail.com', '뉴진스', '뉴진스(NewJeans)는 ADOR 소속의 5인조 걸그룹입니다. 민지, 하니, 다니엘, 해린, 혜인으로 구성되어 있으며,  frische 감성을 가진 90~2000년대 스타일의 음악과 청순한 이미지로 많은 사랑을 받고 있습니다. 2022년 7월 22일 \"Attention\"이라는 싱글로 데뷔하여 가온 디지털 차트 1위를 차지했고, 이후 발매된 \"Hype Boy\"와 \"Cookie\" 또한 큰 인기를 얻었죠. 특히 \"Hype Boy\"는 빌보드 글로벌 200 차트에서 K-POP 여성 아티스트 중 가장 오래 랭킹된 기록을 세우기도 했습니다.'),
(2, '안유진', 'afaisalalmunawar03@gmail.com', '아이브 (IVE)', '아이브(IVE)는 2021년 스타쉽엔터테인먼트 소속으로 데뷔한 6인조 걸그룹입니다. 멤버는 가을, 이서, 레이, 장원영, 안유진,  rei로 구성되어 있으며, 데뷔 싱글앨범 \'ELEVEN\'으로 강렬한 데뷔를 했습니다. 아이브는 멤버들의 뛰어난 실력과 매력적인 비주얼, 컨셉트 표현력으로 많은 사랑을 받고 있으며, 걸그룹 시장에서 주목받는 신예 가수들입니다.'),
(3, '홍은채', 'afaisalalmunawar03@gmail.com', 'LE SSERAFIM', '하이브 소속 레이블인 소스 뮤직의 첫 걸그룹 르세라핌은 2022년 5월 2일 데뷔했습니다. 멤버는 사쿠라, 김채원, 허윤진, 카즈하, 홍은채 5명으로 구성되어 있으며, 데뷔 당시 6명이었던 김가람은 2022년 7월 20일 탈퇴했습니다. 자신감을 주제로 パワ풀 (pawaful)하고 힙한 (hiphan) 음악을 선보이는 르세라핌은 ‘피어나’라는 멋진 팬덤명을 보유하고 있습니다. 그룹 이름인 ‘르세라핌’은 “I’m Fearless”라는 문장의 애너그램 (aenegeuraem)이며, 천사의 한 종류인 세라핌 (seraphim)을 뜻하기도 합니다.'),
(4, '宮脇 咲良', 'afaisalalmunawar03@gmail.com', 'ルセラフィム', 'LE SSERAFIM（ルセラフィム）は、Source Music所属の韓国の5人組ガールズグループです。2022年5月にデビューし、「FEARLESS」というパワフルなデビュー曲で瞬く間に人気を獲得しました。LE SSERAFIMのメンバーには、IZ*ONE出身の宮脇咲良さん（サクラ）と金采源さん（チェウォン）がおり、日本でも人気があります。グループコンセプトは「I FEARLESS」で、型にはまらず自分の道を切り開くという強いメッセージを楽曲やパフォーマンスを通して伝えています。 さらに、LE SSERAFIMの魅力はメンバーの多才多能さにもあります。サクラさんは日本人メンバーで、抜群の歌唱力とカリスマ性を持っています。チェウォンさんはボーカルだけでなく作詞作曲にも才能を発揮しており、グループの楽曲制作にも携わっています。他のメンバーもダンスやラップなどそれぞれの得意分野を持ち、ステージをパワフルに盛り上げます。 デビュー曲「FEARLESS」の他にも、日本でもリリースされた「UNFORGIVEN」など、中毒性のあるメロディーと洗練されたダンスで世界中のファンを魅了しています。今後のさらなる活躍が期待される注目株のグループです。'),
(7, '김가을', 'afaisalalmunawar03@gmail.com', '김가을', 'Gaeul, whose real name is Kim Ga Eul, is a rapper, dancer, singer, and songwriter for the South Korean girl group IVE.  She was born on September 24, 2002, making her the oldest member of the group at 21 years old. Gaeul has always had a passion for dancing and participated in many competitions throughout her school years.  <br />\n<br />\nIn 2017, she was scouted by Starship Entertainment at a dance competition in Incheon and became a trainee. Interestingly, she had previously auditioned for JYP Entertainment but wasn\'t successful.  After four years of training, Gaeul debuted with IVE on December 1, 2021, with their hit single \"ELEVEN.\"  Within the group, she holds the positions of leader rapper and main dancer.<br />\n<br />\nGaeul is known for her impressive rap skills and powerful stage presence.  She is also quite talented at writing lyrics and enjoys reading detective novels.  Her fellow IVE members have given her the nickname \"Grandma\" due to her calm and responsible personality.  In fact, Gaeul recently used some of her earnings to buy a new car for her parents, showing her kind and thoughtful nature. '),
(8, 'Danielle June Marsh', 'afaisalalmunawar03@gmail.com', 'Danielle', 'Danielle, whose full name is Danielle June Marsh, is a rising star in the K-Pop world. Born in Australia in 2005, she holds both Australian and South Korean citizenship.  \r\n\r\nEven before her debut with NewJeans in 2022, Danielle had a taste of the entertainment industry. As a child, she appeared on several Korean television shows, highlighting her talent and charisma. This early experience likely helped prepare her for the demands of idol life.\r\n\r\nIn July 2022, Danielle\'s career took a major leap forward when she debuted as part of the new girl group, NewJeans. Their debut single, \"Attention,\" was a big hit, topping charts and even winning an award at the Korean Music Awards. Interestingly, Danielle herself contributed to writing the song, hinting at her creative talents.\r\n\r\nBeyond singing, Danielle has also ventured into acting. In 2023, she lent her voice to the Korean dub of the live-action remake of \"The Little Mermaid,\" portraying the iconic character, Ariel. With a successful music career and a foray into acting, Danielle is shaping up to be a well-rounded entertainer.'),
(9, '다니엘 마쉬', 'afaisalalmunawar03@gmail.com', '다니엘', '뉴진스의 다니엘, 본명 다니엘 마쉬는 호주-한국 혼혈 멤버입니다. 2005년 4월 11일 경기도에서 태어났지만 어린 시절 일부를 한국에서 보냈으며, 그 때 리얼리티 프로그램에 가족과 함께 출연하기도 했습니다. 이후 호주로 돌아가 축제, 뮤지컬 등 다양한 활동을 하면서 교육도 함께 이수했습니다. \r\n\r\n다니엘은 다시 한국으로 와서 아이돌 연습생이 되었고, 결국 2022년 7월 22일 뉴진스의 일원으로 데뷔했습니다. 뛰어난 실력과 매력으로 빠르게 인기를 얻었으며, 뉴진스의 활동 외에도 다양한 브랜드 광고 및 개인 활동에도 참여하고 있습니다. 흥미롭게도 2023년에는 디즈니 영화 \'리틀 머메이드\' 한국어 더빙에서 아리엘 공주의 목소리 연기를 맡기도 했습니다. 또한 영화 사운드트랙에 그녀가 부른 \'파트 오브 유어 월드\'도 발매되었습니다.\r\n\r\n다니엘은 특유의 밝고 긍정적인 에너지로 팀 분위기 업을 맡고 있습니다. 또한 멤버들과 즐겁게 노는 모습을 자주 볼 수 있어 팬들에게 \'햇살 멤버\'라는 별명도 얻었습니다. 무대 위에서는 카리스마 넘치는 퍼포먼스를 보여주지만, 무대 아래서는 착하고 친절한 성격으로 알려져 있습니다. \r\n\r\n뿐만 아니라 다니엘은 뛰어난 작사 실력도 가지고 있습니다. \'Attention\', \'Cool with You\', \'ASAP\', \'Super Shy\' 등 뉴진스의 많은 노래 가사 집필에 참여했습니다. 다재다능하고 밝은 에너지를 가진 다니엘은 뉴진스의 매력을 더욱 빛내주고 있습니다. ');

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
(2, 'Muhammadiyah University of Sukabumi', 2021, 'Present', 'Informatics'),
(4, 'Test Name', 2024, '2025', 'Test Dept');

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
(3, 'discord', 'https://discordapp.com/users/440894254408007690');

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
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tech_stack`
--
ALTER TABLE `tech_stack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
