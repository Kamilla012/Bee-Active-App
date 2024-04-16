-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 05:32 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_app`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `name`) VALUES
(1, 'workout'),
(2, 'running'),
(3, 'swimming'),
(4, 'cycling'),
(5, 'walking'),
(6, 'yoga');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(11) NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user_1`, `user_2`) VALUES
(6, 1157521454, 6),
(7, 5, 1157521454);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `u_send` int(11) DEFAULT NULL,
  `u_receive` int(11) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `u_send`, `u_receive`, `data`) VALUES
(11, 1157521454, 1157521464, '2024-02-04 17:44:08'),
(12, 1157521464, 1157521462, '2024-02-04 18:09:43'),
(13, 1157521454, 1157521462, '2024-02-04 21:03:47'),
(14, 1157521465, 1157521462, '2024-02-11 20:33:28'),
(16, 1157521454, 1157521465, '2024-02-21 19:56:03'),
(17, 1157521468, 1157521462, '2024-02-22 19:51:21');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `friends_inv`
--

CREATE TABLE `friends_inv` (
  `id` int(11) NOT NULL,
  `u_send` int(11) NOT NULL,
  `u_receive` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends_inv`
--

INSERT INTO `friends_inv` (`id`, `u_send`, `u_receive`, `status`) VALUES
(85, 1157521468, 1157521464, 'sent'),
(87, 1157521468, 1157521466, 'sent'),
(88, 1157521454, 10, 'sent'),
(89, 1157521454, 1157521466, 'sent');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1267592199, 1532039770, 'jo'),
(2, 1267592199, 1532039770, 'I am Jack'),
(3, 1444278448, 1281382994, 'Hello'),
(4, 1281382994, 1036875928, 'Hej '),
(5, 1281382994, 1036875928, 'How are you?'),
(6, 1281382994, 1036875928, 'Any plans?'),
(7, 1281382994, 1036875928, 'Gym?'),
(8, 1281382994, 1036875928, 'or no?'),
(9, 1036875928, 1281382994, 'Yess i going to go to the gym :)'),
(10, 1444278448, 1036875928, 'Hello'),
(11, 1281382994, 1036875928, 'j'),
(12, 1437507308, 1036875928, 'Hello'),
(13, 1437507308, 1036875928, 'f'),
(14, 1281382994, 1532039770, 'Hello '),
(15, 1281382994, 1532039770, 'How are you?'),
(16, 1281382994, 1532039770, 'I am fine'),
(17, 1532039770, 1036875928, 'Yo men'),
(18, 1281382994, 1036875928, 'You?'),
(19, 1281382994, 1036875928, 'me'),
(20, 1532039770, 1036875928, 'How are you?'),
(21, 1036875928, 1281382994, 'Yes do you want go with me?'),
(22, 1281382994, 1036875928, 'Yes sure :)'),
(23, 1281382994, 1036875928, 'When?'),
(24, 1036875928, 1281382994, 'At 4 PM?'),
(25, 1444278448, 1036875928, 'How are you?'),
(26, 7, 1157521454, 'dad');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `titles`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `category`, `name`) VALUES
(1, 'nutrients', 'Carbohydrates'),
(2, 'nutrients', 'Fats'),
(3, 'nutrients', 'Proteins'),
(4, 'nutrients', 'Vitamins'),
(5, 'nutrients', 'Minerals'),
(6, 'nutrients', 'Hydration'),
(7, 'diet', 'Plant-Based Diets'),
(8, 'diet', 'Low-Carbohydrate Diets'),
(9, 'diet', 'Gluten-Free Diets'),
(10, 'diet', 'Sugar-Free Diet'),
(11, 'diet', 'Mindful Eating Diet'),
(12, 'diet', 'Weight Loss Diet'),
(13, 'diet', 'Paleo Diet'),
(14, 'diet', 'Heart-Healthy Diet'),
(15, 'diet', 'Vegan Diet'),
(16, 'workout', 'Strength Training'),
(17, 'workout', 'Gym Equipment'),
(18, 'workout', 'Psychology of Training'),
(19, 'workout', 'Fitness'),
(20, 'workout', 'Home Gym Setup');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `lname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `image` varchar(400) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `image`, `status`) VALUES
(5, 1267592199, 'test4', 'test4', 'test4@gmail.com', '1234', '1702929786osoba6.jpg', 'Active now'),
(10, 1347133202, 'Jo', 'Doe', 'Jo@gmail.com', '1234', '1703515665Moon.png', 'Active now'),
(1157521454, 178394, 'Bee', 'Bee', 'Bee@gmail.com', '1234', '1704572624scorpio-6834536_640.png', 'Active now'),
(1157521462, 4728949, 'Jackie', 'Doe', 'Jackie@gmial.com', '1234', '1704746448gozdzik.png', 'Active now'),
(1157521464, 6478465, 'Jack', 'Doe', 'Jack@gmail.com', '1234', '17068996835418492_2827737.jpg', 'Active now'),
(1157521465, 4627442, 'B1', 'B1', 'B1@gmail.com', '1234', '1707679557897455_60455-OA78A9-691.jpg', 'Active now'),
(1157521466, 4245670, 'Hello', 'World', 'HelloWorld@gmail.com', '1234', '1707683758420160398_978417563721212_4490744141184034767_n.jpg', 'Active now'),
(1157521467, 1234564, 'Hello', 'W', 'HelloW@gmail.com', '1234', '1703515665Moon.png', 'Active now'),
(1157521468, 5673944, 'Mia', 'West', 'Mia@gmail.com', '1234', '17086278052150499160.jpg', 'Active now');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_activities`
--

CREATE TABLE `users_activities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_activities`
--

INSERT INTO `users_activities` (`id`, `user_id`, `activity`, `date`, `duration`) VALUES
(13, 1157521454, 'Workout', '2024-02-27', '00:00:01'),
(14, 1157521454, 'Workout', '2024-02-27', '00:00:02'),
(15, 1157521454, 'Yoga', '2024-02-27', '00:00:02'),
(16, 1157521454, 'Yoga', '2024-02-27', '00:00:00'),
(17, 1157521454, 'Workout', '2024-02-27', '00:00:03'),
(18, 1157521454, 'Workout', '2024-02-27', '00:00:02'),
(19, 1157521454, 'Workout', '2024-02-27', '00:00:02'),
(20, 1157521454, 'Workout', '2024-02-27', '00:00:03'),
(21, 1157521454, 'Workout', '2024-02-27', '00:00:01'),
(22, 1157521454, 'Workout', '2024-02-28', '00:00:02'),
(23, 1157521454, 'Cycling', '2024-02-28', '00:00:02'),
(24, 1157521462, 'Workout', '2024-04-15', '00:00:05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_title`
--

CREATE TABLE `users_title` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_title`
--

INSERT INTO `users_title` (`id`, `user_id`, `title_id`) VALUES
(1, 1157521454, 9),
(3, 5, 2),
(6, 5, 2),
(7, 5, 2),
(8, 5, 2),
(10, 5, 1),
(13, 5, 15),
(14, 5, 15),
(16, 10, 3),
(17, NULL, 20),
(18, NULL, 2),
(19, NULL, 14),
(20, NULL, 20),
(21, NULL, 14),
(22, NULL, 15),
(25, 5, 3),
(26, 5, 11),
(29, 1157521454, 1),
(30, 1157521454, 1),
(31, 1157521454, 2),
(32, 1157521454, 19),
(33, 1157521462, 14),
(34, 1157521462, 20),
(35, 1157521462, 8),
(37, 1157521462, 20),
(38, 1157521462, 8),
(39, 1157521462, 5),
(40, 1157521464, 9),
(41, 1157521464, 17),
(42, 1157521464, 20),
(43, 1157521465, 14),
(44, 1157521465, 20),
(45, 1157521466, 1),
(46, 1157521466, 2),
(47, 1157521466, 19),
(48, 1157521467, 10),
(49, 1157521467, 15),
(50, 1157521467, 4),
(51, 1157521467, 12),
(52, 1157521468, 19),
(53, 1157521468, 9),
(54, 1157521468, 3),
(55, 1157521468, 15);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indeksy dla tabeli `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`);

--
-- Indeksy dla tabeli `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_send` (`u_send`),
  ADD KEY `u_receive` (`u_receive`);

--
-- Indeksy dla tabeli `friends_inv`
--
ALTER TABLE `friends_inv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_u_send` (`u_send`),
  ADD KEY `fk_u_receive` (`u_receive`);

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indeksy dla tabeli `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeksy dla tabeli `users_activities`
--
ALTER TABLE `users_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users_title`
--
ALTER TABLE `users_title`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `title_id` (`title_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `friends_inv`
--
ALTER TABLE `friends_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1157521469;

--
-- AUTO_INCREMENT for table `users_activities`
--
ALTER TABLE `users_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users_title`
--
ALTER TABLE `users_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`u_send`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`u_receive`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `friends_inv`
--
ALTER TABLE `friends_inv`
  ADD CONSTRAINT `fk_u_receive` FOREIGN KEY (`u_receive`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_u_send` FOREIGN KEY (`u_send`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users_title`
--
ALTER TABLE `users_title`
  ADD CONSTRAINT `users_title_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `users_title_ibfk_2` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
