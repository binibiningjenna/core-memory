-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 04:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `content` varchar(300) NOT NULL,
  `color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 1, 'familyImage01.png', '<p class=\"body mt-5\">A family separated for five years reunites, healing through love.<br>\r\n                        The youngest brings joy, mending hearts and scars, making them whole again, <br>\r\n                        forever united in love and strength.</p>', '#f5bc00'),
(2, 1, 'familyImage02.png', '<p class=\"body mt-5\">My grandparents were my guiding lights, caring for me when I was young.<br>\r\n                        Their constant support, love, and wisdom shaped my life.<br>\r\n                        They always encouraged me, teaching me valuable lessons </p>', '#f5bc00'),
(3, 1, 'familyImage03.png', ' <p class=\"body mt-5 mb-5\">The Atienza family is built on love, understanding, and support. <br>\r\n                        Through thick and thin, we stand together, sharing both joy and hardship. <br>\r\n                        Our bond is strong, and we always have each other\'s backs. </p>', '#f5bc00'),
(4, 2, 'friendsImage01.png', '<p class=\"body mt-5\">From childhood days to now, my friends have stood by me. <br>\r\n                        Despite the miles between us, our bond never fades. <br>\r\n                        They\'re a constant in my life, supporting and sharing moments that last forever. </p>\r\n              ', '#652b9b'),
(5, 2, 'friendsImage02.png', '<p class=\"body mt-5\">My college friends are my strength and support system. <br>\r\n                        With them, every challenge becomes easier to bear. <br>\r\n                        They make my college life more manageable, and their presence helps me thrive through it. </p>\r\n                 ', '#652b9b'),
(6, 2, 'friendsImage03.png', '<p class=\"body mt-5 mb-5\">My college friends are the ones I can always rely on. <br>\r\n                        With their kindness and support, college life has been filled with happiness. <br>\r\n                        Our strong bond makes each day easier, and every moment worth cherishing.</p', '#652b9b'),
(7, 3, 'relationshipImage01.png', '<p class=\"body mt-5\">He came into my life unexpectedly, and though we\'re so different, we just\r\n                        clicked.<br>\r\n                        Despite our differences, we found harmony in each other, creating a love that\'s uniquely ours. </p> ', '#770b0b'),
(8, 3, 'relationshipImage02.png', '<p class=\"body mt-5\">Celebrating his birthday, his birthday was memorable. <br>\r\n                        I’m so grateful for every moment spent with him, every laugh we shared.<br>\r\n                        It means so much to be by his side, making memories together on his special day.</p>\r\n        ', '#770b0b'),
(9, 3, 'relationshipImage03.png', '<p class=\"body mt-5 mb-5\">He is my rest in this chaotic world, my constant supporter. <br>\r\n                        With him, I feel safe, loved, and at ease in a world that can be overwhelming. <br>\r\n                        His presence brings comfort, and with him, everything will be okay. </p>', '#770b0b'),
(10, 4, 'memoryImage01.png', '<p class=\"body mt-5\">I am the firstborn, the first grandchild in our family.<br>\r\n                        Since I was a baby, I\'ve always felt their love and care. <br>\r\n                        I\'m proud to be the eldest, and I carry the strength and values of my family with me.</p>', '#285e23'),
(11, 4, 'memoryImage02.png', ' <p class=\"body mt-5\">In my early childhood, I was full of joy.<br>\r\n                        I loved staying at home more than going out. Those years were simple, <br>\r\n                        it was the time when I felt the most joy, surrounded by family and  simple things in life.</p>\r\n           ', '#285e23'),
(12, 4, 'memoryImage03.png', '<p class=\"body mt-5 mb-5\">In adulthood, I faced challenges that made me stronger. <br>\r\n                        The world opened my eyes to reality, teaching me valuable lessons and shaping who I am today.<br>\r\n                        This stage helped me grow and discover my true self.</p>', '#285e23');

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Family Island', 'This island represents the comfort of traditions, the support I rely on, and the memories that shape who I am.', '<p class=\"body\">Family Island is where my roots grow deep. It\'s the place where I feel the love and warmth of\r\n          those who know me best—my parents, siblings, and relatives. Here, I feel safe, supported, and understood. No\r\n          matter how far I go, this island remains my home, where I can always return to find comfort and familiarity.\r\n        </p>\r\n\r\n        <p class=\"body\">It’s where the strongest bonds are formed, built on trust, shared memories, and a sense of\r\n          belonging. Family Island is where I experience joy in the simplest moments, where laughter echoes, and where I\r\n          am reminded of the importance of connection.</p>\r\n\r\n        <p class=\"body\">In good times and bad, my family is the foundation that keeps me grounded, and this island is\r\n          where I know I will always find unconditional love.</p>\r\n', '#f5bc00', 'family001.png', 'ACTIVE'),
(2, 'Friendship Island', 'This island reflects the joy, trust, and connection I share with my friends. It’s where laughter, loyalty, and shared adventures build unbreakable bonds.', '<p class=\"body\">Friendship Island is a place where I feel a deep sense of camaraderie and joy. It’s home to my\r\n          friends, those who truly understand and accept me for who I am, flaws and all. This island is filled with\r\n          laughter, inside jokes, and shared experiences that remind me I’m never alone. Here, I can be my real self\r\n          without fear of judgment or misunderstanding.</p>\r\n\r\n        <p class=\"body\">Friendship Island is built on trust, fun, and a bond that grows stronger over time. It\'s where\r\n          memories are made—simple moments we hold dear and experiences that turn into lifelong stories. Even if life\r\n          takes us far apart, my friends remain a constant presence, always ready to lend a hand or share a laugh.</p>\r\n\r\n        <p class=\"body\">This island is where I find true companionship, proving that no matter the distance.</p>', '#652b9b', 'friendship001.png', 'ACTIVE'),
(3, 'Relationship Island', 'This island is dedicated to the person who means the world to me. It’s where I feel safest, most secure, and truly happy.', ' <p class=\"body\">My Relationship Island represents a special, irreplaceable place in my heart. It\'s where the\r\n          most cherished person in my life resides—the one who makes me feel completely safe, secure, and loved. This is\r\n          the island where I can be my true self, without fear or doubt.</p>\r\n\r\n        <p class=\"body\">The connection we share is unique, and the bond we’ve built over time has grown deeper and more\r\n          meaningful with each passing moment. This is where we create memories, overcome challenges together, and find\r\n          joy in the simple, everyday things.</p>\r\n\r\n        <p class=\"body\">On this island, love and trust are the foundation. It’s a place where we support each other\r\n          unconditionally, and where our hearts are intertwined in the most beautiful way. It’s the island where I find\r\n          my strength.</p>', '#770b0b', 'relationship001.png', 'ACTIVE'),
(4, 'Memory Island', 'Memory Island holds the precious moments that have shaped who I am. It’s where nostalgia and lessons from my experiences remind me of how far I’ve come.', '<p class=\"body\">Memory Island is a place where I keep all the beautiful moments I’ve experienced throughout my\r\n          life. It’s filled with all the little things that make life meaningful—the laughter of childhood, the\r\n          triumphs, and the lessons learned.\r\n        </p>\r\n\r\n        <p class=\"body\">This island holds memories of times spent with loved ones, special achievements, and personal\r\n          growth. It’s where I can revisit past moments and relive them with fondness. Memory Island is a reflection of\r\n          my journey, and as I look back, I realize how far I’ve come.</p>\r\n\r\n        <p class=\"body\">It’s a place of nostalgia, a gentle reminder of everything that has shaped me into who I am\r\n          today. It’s where I find comfort and joy in remembering the past while looking forward to creating new\r\n          memories in the future.</p>', '#285e23', 'memory001.png', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
