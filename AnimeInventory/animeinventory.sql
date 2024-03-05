-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 06:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animeinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime_dvd`
--

CREATE TABLE `anime_dvd` (
  `Type` varchar(50) NOT NULL,
  `Anime` varchar(255) NOT NULL,
  `Anime_Qty_Onhand` int(11) NOT NULL,
  `Anime_Qty_Sold` int(11) NOT NULL,
  `Anime_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anime_dvd`
--

INSERT INTO `anime_dvd` (`Type`, `Anime`, `Anime_Qty_Onhand`, `Anime_Qty_Sold`, `Anime_ID`) VALUES
('Series', 'Demon Slayer', 50, 250, 1),
('Series', 'Spy X Family', 75, 375, 2),
('Movie', 'Akira', 45, 75, 3),
('Series', 'Blue Exoricst', 35, 68, 4),
('Series', 'Chainsaw Man', 85, 267, 5),
('Movie', 'Your Name', 67, 175, 6),
('Series', 'Toilet Bound Hanako-Kun', 58, 124, 7),
('Series', 'Another', 100, 75, 8),
('Movie', 'The boy and the beast', 90, 82, 9),
('Series', 'Trigun', 75, 110, 10),
('Series', 'In/Spectre', 69, 45, 11),
('Movie', 'Josee, The Tiger and Fish', 75, 90, 12),
('Movie', 'Spy X Family Code: White', 80, 115, 13),
('Series', 'Sleepy Princess in the demon castle', 79, 100, 14),
('Series', 'JoJos Bizzare Adventures Part 5', 36, 165, 15),
('Movie', 'Jujutsu Kaisen 0', 71, 130, 16),
('Movie', 'That Time I got Reincarnated as a slime the movie: Scarlet Bond', 56, 100, 17),
('Series', 'That Time I got Reincarnated as a slime', 78, 117, 18),
('Series', 'The Rising of the Shield Hero', 67, 110, 19),
('Series', 'Goblin Slayer', 75, 124, 20),
('Series', 'Mushoku Tensei: Jobless Reincarnation', 85, 200, 21),
('Movie', 'A Silent Voice', 78, 100, 22),
('Series', 'Overtake', 85, 67, 23),
('Series', 'Shy', 64, 46, 24),
('Series', 'Black Clover', 75, 109, 25);

-- --------------------------------------------------------

--
-- Table structure for table `apparel`
--

CREATE TABLE `apparel` (
  `Type` varchar(255) NOT NULL,
  `Size` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `Anime` varchar(255) DEFAULT NULL,
  `App_Qty_Onhand` int(11) NOT NULL,
  `App_Qty_Sold` int(11) NOT NULL,
  `Apparel_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apparel`
--

INSERT INTO `apparel` (`Type`, `Size`, `Gender`, `price`, `Anime`, `App_Qty_Onhand`, `App_Qty_Sold`, `Apparel_ID`) VALUES
('Shirt', 'Medium', 'Male', 10.99, 'Spy X Family', 100, 324, 1),
('Pants', 'Small', 'Female', 12.99, 'Cowboy Bebop', 73, 124, 2),
('Socks', 'Large', 'Unisex', 9.99, 'Trigun', 78, 104, 3),
('Shirt', 'Large', 'Male', 10.99, 'Demon Slayer', 90, 200, 4),
('Pants', 'Medium', 'Male', 12.99, 'That Time I Reincarnated as a slime', 100, 210, 5),
('Shirt', 'Small', 'Female', 11.99, 'Black Clover', 58, 112, 6),
('Socks', 'Medium', 'Unisex', 8.99, 'Berserk', 78, 195, 7),
('Shirt', 'Large', 'Female', 15.99, 'Beastar', 89, 176, 8),
('Shirt', 'Small', 'Male', 10.99, 'Goblin Slayer', 45, 90, 9),
('Pants', 'Large', 'Female', 12.99, 'Toilet Bound Hanako-Kun', 78, 123, 10),
('Socks', 'Medium', 'Unisex', 8.99, 'Naruto', 89, 276, 11),
('Shirt', 'Large', 'Female', 11.99, 'One Piece', 95, 160, 12),
('Pants', 'Small', 'Male', 15.99, 'JoJos Bizarre Adventures', 99, 120, 13),
('Socks', 'Small', 'Unisex', 8.99, 'High Card', 80, 60, 14),
('Shirt', 'Medium', 'Female', 10.99, 'Boruto', 75, 56, 15),
('Pants', 'Medium', 'Male', 12.99, 'Log Horizon', 80, 45, 16),
('Socks', 'Small', 'Unsex', 8.99, 'Fire Hunter', 76, 59, 17),
('Shirt', 'Large', 'Female', 10.99, 'Snack Basue', 69, 34, 18),
('Pants', 'Large', 'Male', 12.99, 'DragonBall Z', 90, 154, 19),
('Socks', 'Small', 'Unisex', 8.99, 'Fireforce', 46, 88, 20),
('Shirt', 'Large', 'Female', 10.99, 'Chainsaw Man', 90, 195, 21),
('Pants', 'Large', 'Male', 12.99, 'Fairy Tail', 77, 110, 22),
('Socks', 'Large', 'Unisex', 8.99, 'Seven Deadly Sins', 88, 112, 23),
('Shirt', 'Small', 'Female', 10.99, 'BlueLock', 90, 120, 24),
('Pants', 'Large', 'Male', 12.99, 'The Ranking of Kings', 76, 103, 25);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `Manga_id` int(11) NOT NULL,
  `Novel_id` int(11) NOT NULL,
  `Apparel_ID` int(11) NOT NULL,
  `Anime_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `Demagraphic` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `Manga_Qty_Onhand` int(11) NOT NULL,
  `Manga_Qty_Sold` int(11) NOT NULL,
  `Manga_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`name`, `author`, `genre`, `pages`, `Demagraphic`, `price`, `Manga_Qty_Onhand`, `Manga_Qty_Sold`, `Manga_id`) VALUES
('Spy X Family', 'Tatsuya Endo', 'Slice of Life', '190', 'Shonen', 9.99, 90, 194, 1),
('Berserk', 'Kentaro Miura', 'Horror', '300', 'Seinen', 35.99, 60, 111, 2),
('Another', 'Yukito Ayatsuji', 'Horror', '300', 'Shonen', 29.99, 34, 60, 3),
('Chainsaw Man', 'Tatsuki Fujimoto', 'Battle', '175', 'Shonen', 9.99, 89, 134, 4),
('Trigun', 'Yasuhiro Nightow', 'Sy-Fy', '300', 'Shonen', 35.99, 67, 100, 5),
('Fruit Baskets', 'Natsuki Takaya', 'Romance', '175', 'Shojo', 9.99, 80, 120, 6),
('PPPPPP', 'Mapollo 3', 'Drama', '175', 'Shonen', 9.99, 90, 64, 7),
('We Were There', 'Yuuki Obata', 'Romance', '175', 'Shojo', 9.99, 100, 80, 8),
('Love is Hard for an Otaku', 'Fujita', 'Slice of Life', '200', 'Josei', 12.99, 76, 99, 9),
('Bone Collection', 'Jun Kirarazaka', 'Supernatural', '175', 'Shonen', 9.99, 77, 49, 10),
('Oshi No Ko', 'Aka Akasaka X Mengo Yokoyari', 'Drama', '195', 'Seinen', 9.99, 90, 120, 11),
('20th Century Boys', 'Naoki Urasawa', 'Sy-Fy', '220', 'Seinen', 19.99, 50, 120, 12),
('Honey and Clover', 'Chica Umina', 'Slice of life', '175', 'Josei', 9.99, 90, 70, 13),
('Naruto', 'Masashi Kishimoto', 'Battle', '175', 'Shonen', 9.99, 80, 120, 14),
('Dandadan', 'Yukinobu Tatsu', 'Battle', '175', 'Shonen', 9.99, 100, 200, 15),
('Nine Dragons Ball Parade', 'Mikiyasu Kamada', 'Sports', '175', 'Shonen', 9.99, 90, 45, 16),
('Absolute Boyfriend', 'Yuu Watase', 'Romance', '175', 'Shojo', 9.99, 90, 75, 17),
('Hellsing', 'Kouta Hirano', 'Horror', '300', 'Seinen', 35.99, 110, 195, 18),
('Alice 19th', 'Yuu Watase', 'Romance', '175', 'Shojo', 9.99, 90, 120, 19),
('Kaiju No.8', 'Naoya Matsumoto', 'Sy-Fy', '175', 'Shonen', 9.99, 75, 110, 20),
('Black Clover', 'Yuki Tabata', 'Fantasy', '175', 'Shonen', 9.99, 99, 150, 21),
('Nana', 'Ai Yazawa', 'Romance', '200', 'Josei', 12.99, 89, 120, 22),
('Pluto', 'Naoki Urasawa', 'Sy-Fy', '190', 'Seinen', 12.99, 89, 120, 23),
('Fushigi Yugi', 'Yuu Watase', 'Fantasy', '250', 'Shojo', 19.99, 90, 130, 24),
('Berserk', 'Kentaro Miura', 'Horror', '300', 'Seinen', 35.99, 60, 111, 25),
('Another', 'Yukito Ayatsuji', 'Horror', '300', 'Shonen', 29.99, 34, 60, 26),
('Chainsaw Man', 'Tatsuki Fujimoto', 'Battle', '175', 'Shonen', 9.99, 89, 134, 27),
('Trigun', 'Yasuhiro Nightow', 'Sy-Fy', '300', 'Shonen', 35.99, 67, 100, 28),
('Fruit Baskets', 'Natsuki Takaya', 'Romance', '175', 'Shojo', 9.99, 80, 120, 29),
('PPPPPP', 'Mapollo 3', 'Drama', '175', 'Shonen', 9.99, 90, 64, 30),
('We Were There', 'Yuuki Obata', 'Romance', '175', 'Shojo', 9.99, 100, 80, 31),
('Love is Hard for an Otaku', 'Fujita', 'Slice of Life', '200', 'Josei', 12.99, 76, 99, 32),
('Bone Collection', 'Jun Kirarazaka', 'Supernatural', '175', 'Shonen', 9.99, 77, 49, 33),
('Oshi No Ko', 'Aka Akasaka X Mengo Yokoyari', 'Drama', '195', 'Seinen', 9.99, 90, 120, 34),
('20th Century Boys', 'Naoki Urasawa', 'Sy-Fy', '220', 'Seinen', 19.99, 50, 120, 35),
('Honey and Clover', 'Chica Umina', 'Slice of life', '175', 'Josei', 9.99, 90, 70, 36),
('Naruto', 'Masashi Kishimoto', 'Battle', '175', 'Shonen', 9.99, 80, 120, 37),
('Dandadan', 'Yukinobu Tatsu', 'Battle', '175', 'Shonen', 9.99, 100, 200, 38),
('Nine Dragons Ball Parade', 'Mikiyasu Kamada', 'Sports', '175', 'Shonen', 9.99, 90, 45, 39),
('Absolute Boyfriend', 'Yuu Watase', 'Romance', '175', 'Shojo', 9.99, 90, 75, 40),
('Hellsing', 'Kouta Hirano', 'Horror', '300', 'Seinen', 35.99, 110, 195, 41),
('Alice 19th', 'Yuu Watase', 'Romance', '175', 'Shojo', 9.99, 90, 120, 42),
('Kaiju No.8', 'Naoya Matsumoto', 'Sy-Fy', '175', 'Shonen', 9.99, 75, 110, 43),
('Black Clover', 'Yuki Tabata', 'Fantasy', '175', 'Shonen', 9.99, 99, 150, 44),
('Nana', 'Ai Yazawa', 'Romance', '200', 'Josei', 12.99, 89, 120, 45),
('Pluto', 'Naoki Urasawa', 'Sy-Fy', '190', 'Seinen', 12.99, 89, 120, 46),
('Fushigi Yugi', 'Yuu Watase', 'Fantasy', '250', 'Shojo', 19.99, 90, 130, 47),
('Samurai 8: The Tale of Hachimaru', 'Masashi Kishimoto', 'Sy-Fy', '175', 'Shonen', 9.99, 100, 70, 48);

-- --------------------------------------------------------

--
-- Table structure for table `novel`
--

CREATE TABLE `novel` (
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `pages` varchar(255) NOT NULL,
  `Demagraphic` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `Novel_Qty_Onhand` int(11) NOT NULL,
  `Novel_Qty_Sold` int(11) NOT NULL,
  `Novel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `novel`
--

INSERT INTO `novel` (`name`, `author`, `genre`, `pages`, `Demagraphic`, `price`, `Novel_Qty_Onhand`, `Novel_Qty_Sold`, `Novel_id`) VALUES
('The Rising of the Shield Hero', 'Aneko Yusagi', 'Isekai', '344', 'Shonen', 15.99, 80, 150, 1),
('Ascendance of a Bookworm', 'Miya Kazuki', 'Isekai', '323', 'Seinen', 9.99, 80, 120, 2),
('The Springtime Chime of Marielle Clarac', 'Momo Haruka', 'Fantasy', '300', 'Josei', 9.99, 90, 150, 3),
('Ascendance of a Bookworm', 'Miya Kazuki', 'Isekai', '323', 'Seinen', 9.99, 80, 120, 4),
('The Springtime Chime of Marielle Clarac', 'Momo Haruka', 'Fantasy', '300', 'Josei', 9.99, 90, 150, 5),
('Ascendance of a Bookworm', 'Miya Kazuki', 'Isekai', '323', 'Seinen', 9.99, 80, 120, 6),
('The Springtime Chime of Marielle Clarac', 'Momo Haruka', 'Fantasy', '300', 'Josei', 9.99, 90, 150, 7),
('My Next Life as a Villainess: All Routes Lead to Doom!', 'Satoru Yamaguchi', 'Isekai', '212', 'Shojo', 9.99, 90, 120, 8),
('That Time I got Reincarnated as a slime', 'Taiki Kawakami', 'Isekai', '208', 'Shonen', 9.99, 100, 200, 9),
('Toradora', 'Yuyuko Takemiya and Yasu', 'Romance', '216', 'Shonen', 12.99, 80, 101, 10),
('Ascendance of a Bookworm', 'Miya Kazuki', 'Isekai', '323', 'Seinen', 9.99, 80, 120, 11),
('The Springtime Chime of Marielle Clarac', 'Momo Haruka', 'Fantasy', '300', 'Josei', 9.99, 90, 150, 12),
('My Next Life as a Villainess: All Routes Lead to Doom!', 'Satoru Yamaguchi', 'Isekai', '212', 'Shojo', 9.99, 90, 120, 13),
('That Time I got Reincarnated as a slime', 'Taiki Kawakami', 'Isekai', '208', 'Shonen', 9.99, 100, 200, 14),
('Toradora', 'Yuyuko Takemiya and Yasu', 'Romance', '216', 'Shonen', 12.99, 80, 101, 15),
('Prison Life is Easy for a Villainess', 'Hibiki Yamazaki', 'Comedy', '230', 'Josei', 9.99, 100, 79, 16),
('Ascendance of a Bookworm', 'Miya Kazuki', 'Isekai', '323', 'Seinen', 9.99, 80, 120, 17),
('The Springtime Chime of Marielle Clarac', 'Momo Haruka', 'Fantasy', '300', 'Josei', 9.99, 90, 150, 18),
('My Next Life as a Villainess: All Routes Lead to Doom!', 'Satoru Yamaguchi', 'Isekai', '212', 'Shojo', 9.99, 90, 120, 19),
('That Time I got Reincarnated as a slime', 'Taiki Kawakami', 'Isekai', '208', 'Shonen', 9.99, 100, 200, 20),
('Toradora', 'Yuyuko Takemiya and Yasu', 'Romance', '216', 'Shonen', 12.99, 80, 101, 21),
('Prison Life is Easy for a Villainess', 'Hibiki Yamazaki', 'Comedy', '230', 'Josei', 9.99, 100, 79, 22),
('Deaths Daughter and the Ebony Blade', 'Maito Ayamine', 'Fantasy', '210', 'Shonen', 9.99, 100, 69, 23),
('Goblin Slayer', 'Kumo Kagyu', 'Fantasy', '202', 'Seinen', 10.99, 67, 120, 24),
('Sword Art Online', 'Reki Kawahara', 'Sy-Fy', '256', 'Shonen', 9.99, 58, 99, 25),
('Mushoku Tensei: Jobless Reincarnation', 'Rifujin na Magonote', 'Isekai', '264', 'Shonen', 12.99, 99, 175, 26),
('Fluffy Paradise', 'Himawari', 'Isekai', '257', 'Shojo', 9.99, 89, 120, 27),
('Classroom of the Elite', 'Syougo Kinugasa and Yuyu Ichino', 'Battle', '182', 'Seinen', 12.99, 90, 130, 28),
('Doctor Elise: Royal Lady with the Lamp', 'Yuin', 'Romance', '185', 'Shojo', 12.99, 98, 45, 29),
('Romance of the Imperial Capital Kotogami: A Tale of Living Alongside Spirits', 'Yamori Mitikusa', 'Romance', '200', 'Josei', 12.99, 100, 56, 30),
('Berserk of Gluttony', 'Isshiki Ichika', 'Fantasy', '298', 'Shonen', 12.99, 76, 100, 31),
('Saga of Tanya the Evil', 'Carlo Zen', 'Isekai', '336', 'Shonen', 9.99, 57, 99, 32),
('Im Giving the disgraced Noble Lady I Rescued a Crash Course in Naughtiness', 'Fukada Sametarou', 'Romance', '202', 'Shojo', 12.99, 100, 70, 33),
('The Devil is a Part-Timer!', 'Satoshi Wagahara', 'Isekai', '240', 'Shonen', 9.99, 80, 120, 34),
('Sugar Apple Fairy Tale', 'Miri Mikawa', 'Fantasy', '176', 'Shojo', 10.99, 75, 100, 35),
('Am I Actually the Strongest?', 'Ai Takahashi', 'Isekai', '189', 'Shonen', 12.99, 64, 99, 36),
('Josee, the Tiger and the Fish', 'Seiko Tanabe', 'Romance', '200', 'Josei', 12.99, 57, 90, 37),
('Konosuba: Gods Blessing in this wonderful world!', 'Natsume Akatsuki', 'Isekai', '176', 'Shonen', 9.99, 90, 175, 38),
('Overlord', 'Kugane Maruyama', 'Isekai', '256', 'Seinen', 12.99, 90, 200, 39),
('Re:Zero -Starting life in another world', 'Tappei Nagatsuki', 'Isekai', '240', 'Seinen', 9.99, 100, 250, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime_dvd`
--
ALTER TABLE `anime_dvd`
  ADD PRIMARY KEY (`Anime_ID`);

--
-- Indexes for table `apparel`
--
ALTER TABLE `apparel`
  ADD PRIMARY KEY (`Apparel_ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD KEY `Manga_id` (`Manga_id`),
  ADD KEY `Novel_id` (`Novel_id`),
  ADD KEY `Apparel_ID` (`Apparel_ID`),
  ADD KEY `Anime_ID` (`Anime_ID`);

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`Manga_id`);

--
-- Indexes for table `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`Novel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime_dvd`
--
ALTER TABLE `anime_dvd`
  MODIFY `Anime_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `apparel`
--
ALTER TABLE `apparel`
  MODIFY `Apparel_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `manga`
--
ALTER TABLE `manga`
  MODIFY `Manga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `novel`
--
ALTER TABLE `novel`
  MODIFY `Novel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`Manga_id`) REFERENCES `manga` (`Manga_id`),
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`Novel_id`) REFERENCES `novel` (`Novel_id`),
  ADD CONSTRAINT `inventory_ibfk_3` FOREIGN KEY (`Apparel_ID`) REFERENCES `apparel` (`Apparel_ID`),
  ADD CONSTRAINT `inventory_ibfk_4` FOREIGN KEY (`Anime_ID`) REFERENCES `anime_dvd` (`Anime_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
