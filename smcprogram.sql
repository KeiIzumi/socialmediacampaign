-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 10:08 AM
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
-- Database: `smcprogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `phone`, `message`) VALUES
(1, 'James ', 'Williams', ' james.williams01@gmail.com', '+95 872312334', 'The homepage design is clean, and the visuals are appealing.'),
(2, 'Olivia ', 'Jones', 'olivia.jones123@gmail.com', '+95 974042786', 'The search bar sometimes doesn’t return accurate results.'),
(3, 'Daniel', 'Smith', 'daniel.smith789@gmail.com', '+95 9 794567891', 'Increase button size and spacing for better mobile usability.'),
(4, 'Sophia', 'Brown', 'sophia.brown456@gmail.com', '+95 9 792345678', 'The \'How Parents Can Help\' section is very insightful and useful.'),
(5, 'Liam', 'Johnson', 'liam.johnson987@gmail.com', '+95 9 799876543', 'The images don’t load properly in some sections.'),
(6, 'Emma', 'Miller', 'emma.miller654@gmail.com', '+95 9 730123456', 'Add an option to adjust font size for better accessibility.'),
(7, 'Noah', 'Davis', 'noah.davis321@gmail.com', '+95 9 731234567', 'There’s no option to download resources or guides in PDF format.'),
(8, 'Mia', 'Moore', 'mia.moore123@gmail.com', '+95 9 760987654', 'The design elements and 3D illustrations are visually engaging.'),
(9, 'Mason', 'Martin', 'mason.martin789@gmail.com', '+95 9 761234567', 'Simplify the footer layout to make it easier to use.'),
(10, ' Ava', 'Jones', 'ava.jones456@gmail.com', '+95 9 781245678', 'I appreciate the safety tips for teens on social media use.'),
(11, 'Logan', 'Thomas', 'logan.thomas123@gmail.com', '+95 9 780123456', 'Test compatibility across all major browsers.'),
(12, 'Ella', 'Lee', 'ella.lee789@gmail.com', '+95 9 789012345', 'The site content is very educational, especially for parents.'),
(13, 'Lucas', 'Turner', 'lucas.turner321@gmail.com', '+95 9 795678123', 'The overall design is modern and sleek.'),
(14, 'Grace', 'Grace', 'grace.king654@gmail.com', '+95 9 798765432', 'The registration process is too lengthy and requires too many details.'),
(15, 'Henry', 'Baker', 'henry.baker456@gmail.com', '+95 9 792345671', 'The campaign’s focus on teen safety is excellent.'),
(16, ' Zoe ', 'Phillips', 'zoe.phillips987@gmail.com', '+95 9 796543210', 'The site is easy to navigate, and the content is clear.');

-- --------------------------------------------------------

--
-- Table structure for table `popularapps`
--

CREATE TABLE `popularapps` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `safety_tip` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `popularapps`
--

INSERT INTO `popularapps` (`id`, `app_name`, `safety_tip`, `image`) VALUES
(1, 'Facebook', 'Safety Technique: Enable two-factor authentication (2FA), review your privacy settings regularly, and restrict who can see your posts.', 'images/photos/p01.jpg'),
(2, 'Youtube', 'Safety Technique: Enable restricted mode to filter content, review comments and set them to approval-only, and block or report inappropriate channels.', 'images/photos/p2.jpg'),
(3, 'WhatsApp', 'Safety Technique: Enable two-step verification, control group settings, and beware of unsolicited links.', 'images/photos/p3.jpg'),
(4, 'Instagram', 'Safety Technique: Use strong passwords, control who can comment on your posts, and set your account to private.', 'images/photos/p4.jpg'),
(5, 'TikTok', 'Safety Technique: Enable family pairing, restrict comments, and manage who can duet or message you.', 'images/photos/p5.jpg'),
(6, 'WeChat', 'Safety Technique: Set privacy controls on moments, block unwanted users, and avoid sharing location details.', 'images/photos/p6.jpg'),
(7, 'Telegram', 'Safety Technique: Enable two-step verification and use secret chats for sensitive conversations.', 'images/photos/p7.jpg'),
(8, 'Viber', 'Safety Technique: Use disappearing messages for sensitive information, enable two-step verification.', 'images/photos/p8.jpg'),
(9, 'Snapchat', 'Safety Technique: Use \"Ghost Mode\" to hide your location, monitor who can send snaps, and avoid sharing sensitive information.', 'images/photos/p9.jpg'),
(10, 'Spotify', 'Safety Technique: Use Secure Passwords - Choose strong, unique passwords and avoid using the same password across multiple platforms.', 'images/photos/p10.jpg'),
(11, 'Twitter', 'Safety Technique: Use two-factor authentication, mute/block inappropriate users, and adjust tweet visibility settings.', 'images/photos/p11.png'),
(12, 'Pinterest', 'Safety Technique: Use private boards for personal content and report any inappropriate pins or accounts.', 'images/photos/p12.jpg'),
(13, 'Microsoft Teams', 'Safety Technique: Use Meeting Controls - Leverage features like waiting rooms, meeting locks, and participant controls to manage who can enter and participate in meetings.', 'images/photos/p13.jpg'),
(14, 'LinkedIn', 'Safety Technique: Be mindful of sharing too much personal information, and adjust your privacy settings for who can view your profile.', 'images/photos/p14.jpg'),
(15, 'LINE', 'Safety Technique: Use hidden chats for private conversations, lock your app with a password, and block unwanted contacts.', 'images/photos/p15.jpg'),
(16, 'Discord', 'Safety Technique: Use 2FA, manage privacy settings to limit who can message you, and report harassment.', 'images/photos/p16.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `dateofbirth` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `country` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `profile` text NOT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `surname`, `email`, `phone`, `username`, `dateofbirth`, `password`, `country`, `address`, `gender`, `profile`, `role`) VALUES
(1, 'admin', 'admin', 'admin@kmd.edu.mm', '-', 'admin', '0000-00-00', '$2y$10$kSdeG4U15Tk2XXOQNLnJreRryvzfwXB1bN80YjpSuA5mV3l87erCW', 'Myanmar', 'Yangon', '-', '-', 'admin'),
(2, 'Kyo', 'Sohma', 'kyosohma@gmail.com', '09428923301', 'Kyo', '2000-01-15', '$2y$10$siNhz43oSICMxjV00DHeROJJtRngcWmsStlK876EW00jEfpAN30zi', 'Japan', 'Tokyo', 'on', 'images/pfp/Kyo_Kyo Sohma.jpg', 'user'),
(3, 'Kei', 'Izumi', 'keiizumi@gmail.com', '09428933207', 'Kei', '2003-02-07', '$2y$10$ozTo1Rdk/ru12ItTf5C4DeFf.9mCgnEho8zgqnbVoa1rOtiun6JPO', 'Myanmar', 'Yangon', 'on', 'images/pfp/Kei_pfp.jpg', 'user'),
(4, 'Shun', 'Futami', 'shunfutami@gmail.com', '0785656745', 'Shun', '2001-01-05', '$2y$10$Nu2S3cmBLU363z4h6hMzV.3s45saiDwTBtdwOJeur4mUf.BbUwFLu', 'Japan', 'Tokyo', 'on', 'images/pfp/Shun_Shun Futami.jpg', 'user'),
(5, 'Akito', 'Yamada', 'akitoyamada@gmail.com', '0988665432', 'Akito', '2000-09-22', '$2y$10$LW8cSVYNWnZfR.HEeeLDQOIh2EJ3iohmAfDjrOh4uYtD4AP/OdALK', 'Japan', 'Kyoto', 'on', 'images/pfp/Akito_Yamada.jpg', 'user'),
(6, 'Mima', 'Takayuki', 'mimatakayuki@gmail.com', '09 761234567', 'Mima', '1996-07-07', '$2y$10$1KZcyJL5YQepucY62ZbH1eOJpOySlejDU/pvGpSLAttlnFqxfypRy', 'France', 'Paris', 'on', 'images/pfp/mima_Takayuki Mima.jpg', 'user'),
(7, 'Motoharu', 'Igarashi', 'igarashiharu@gmail.com', '09 730123456', 'Motoharu', '1997-07-04', '$2y$10$.eQ5CK5jZTz.hvVnJP9DEeLvGkScJOmfFnyPWYYSMMfHFTzA9tdx6', 'Germany', 'Berlin', 'on', 'images/pfp/Motoharu_Igarashi Motoharu.jpg', 'user'),
(8, 'James', 'Williams', 'james.williams01@gmail.com', '09781234567', 'James', '1990-05-12', '$2y$10$ZWXimV/aEnPa0Oc4909DhuVG7PGOg0LVwDXxh56i0q2/xX97bRtGS', 'United States', 'Washington', 'on', 'images/pfp/James_kou.jpg', 'user'),
(9, 'Charlotte', 'Davis', 'charlotte.davis@gmail.com', '09790123456', 'Charlotte', '1994-06-10', '$2y$10$2TCwLQh8OyUeqQ6tXrY9juULGs1WjoSGiZ86XIYFVb.IueAtAT2m.', 'Australia', 'Brisbane', 'on', 'images/pfp/Charlotte_pfp.jpg', 'user'),
(10, 'Isabella', 'Robinson', 'isabella.robinson@gmail.com', '09794567891', 'Isabella', '1995-09-15', '$2y$10$agJHYDSNMCuvVwyWoq.PD.kT0RtjtCnTDKbrRTf6zJR.3/mdTEem2', 'Germany', 'Hamburg', 'on', 'images/pfp/Isabella_Ryo Yamada.jpg', 'user'),
(11, 'Jack', 'Walker', 'jack.walker@gmail.com', '09792345678', 'Jack', '1998-03-03', '$2y$10$w3q4mkrmEfLUGXTnxwXNG.CI1HvDfAlkRVlAS1Kj6b6ZIHByWdCIu', 'Australia', 'Adelaide', 'on', 'images/pfp/Jack_Souma Shiki.jpg', 'user'),
(12, 'Layla', 'Ahmed', 'layla.ahmed@gmail.com', '09730123456', 'Layla', '1997-11-29', '$2y$10$0eHrQCaOMmDJe0bEa5hmsOCFs2ajWsykNitjNzvv1fxa5/grBOiIK', 'Singapore', 'Singapore', 'on', 'images/pfp/Layla_pfp.jpg', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popularapps`
--
ALTER TABLE `popularapps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `popularapps`
--
ALTER TABLE `popularapps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
