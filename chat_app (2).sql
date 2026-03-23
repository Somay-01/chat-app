-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2026 at 08:14 PM
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
-- Database: `chat_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `file_path` text NOT NULL,
  `file_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `created_at`, `seen`, `is_read`, `file_path`, `file_type`) VALUES
(6, 3, 4, 'hii', '2026-03-08 19:46:32', 1, 1, '', ''),
(7, 4, 3, 'yo wsup', '2026-03-08 19:46:32', 1, 1, '', ''),
(8, 5, 4, 'hii', '2026-03-08 19:46:32', 1, 1, '', ''),
(9, 5, 3, 'hii', '2026-03-08 19:46:32', 1, 1, '', ''),
(10, 3, 4, 'yy', '2026-03-08 19:46:32', 1, 1, '', ''),
(11, 3, 4, 'hiii', '2026-03-08 19:46:32', 1, 1, '', ''),
(12, 3, 4, 'hii', '2026-03-08 19:50:23', 1, 1, '', ''),
(13, 3, 5, 'hii', '2026-03-12 16:19:53', 0, 0, '', ''),
(14, 4, 5, 'hii', '2026-03-12 17:15:07', 0, 0, '', ''),
(15, 3, 4, 'hii', '2026-03-12 17:31:53', 1, 1, '', ''),
(16, 4, 3, 'hii', '2026-03-12 17:55:41', 1, 1, '', ''),
(17, 4, 3, 'hii', '2026-03-12 17:56:08', 1, 1, '', ''),
(18, 4, 3, 'wsup', '2026-03-12 17:56:12', 1, 1, '', ''),
(19, 4, 3, 'nhdbh', '2026-03-12 18:11:51', 1, 1, '', ''),
(20, 4, 3, 'hhvaghd', '2026-03-12 18:11:52', 1, 1, '', ''),
(21, 4, 3, 'mbah sdg', '2026-03-12 18:11:53', 1, 1, '', ''),
(22, 3, 4, 'hi', '2026-03-12 18:51:06', 0, 0, '', ''),
(23, 3, 4, 'hii', '2026-03-15 16:21:09', 0, 0, '', ''),
(24, 3, 5, '', '2026-03-17 18:41:46', 0, 0, 'uploads/1773772906_1756906145.mp4', 'video'),
(25, 3, 5, '', '2026-03-17 18:42:28', 0, 0, 'uploads/1773772948_chat-app-main.zip', 'document'),
(26, 3, 5, 'hii', '2026-03-22 19:30:50', 0, 0, '', ''),
(27, 3, 4, 'yo', '2026-03-22 21:14:04', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(3, 'test1', 'test1@gmail.com', '$2y$10$J56TmZxdNnopfMwpCoOmxOLf2p5w4AvDDucUbsdDx854AuGw3obsm'),
(4, 'test2', 'test2@gmail.com', '$2y$10$6IK1o29a12ZYB3FI/la7FOs/VL.P7kcs/WYpMeWxJovLVhHEAz0W.'),
(5, 'ankit', 'ankit@gmail.com', '$2y$10$rzNW375NephWexI8GCAKiuGmzwrHGBTedNMsXN4VqZcYFApUowqR2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
