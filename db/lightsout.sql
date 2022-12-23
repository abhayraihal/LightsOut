-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lightsout`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) UNSIGNED NOT NULL,
  `movie_name` varchar(255) NOT NULL DEFAULT '',
  `movie_year` int(4) NOT NULL,
  `movie_rating` varchar(10) NOT NULL DEFAULT '',
  `movie_bio` varchar(1000) DEFAULT NULL,
  `movie_img` varchar(200) NOT NULL,
  `movie_genre` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_year`, `movie_rating`, `movie_bio`, `movie_img`, `movie_genre`) VALUES
(1, 'Sniper : The White Raven', 2020, '7.4/10', 'Mykola is an eccentric pacifist who wants to be useful to humanity. When the war begins at Donbass, Mykola’s naive world is collapsing as the militants kill his pregnant wife and burn his home to the ground. Recovered, he makes a cardinal decision and gets enlisted in a sniper company. Having met his wife’s killers, he emotionally breaks down and arranges “sniper terror” for the enemy. He’s saved from a senseless death by his instructor who himself gets mortally wounded. The death of a friend leaves a “scar” and Mykola is ready to sacrifice his life.', 'assets/img/action_sniper.jpg', 'Action'),
(2, 'Vesper', 2016, '6.8/10', 'After the collapse of Earth\'s ecosystem, Vesper, a 13-year-old girl struggling to survive with her paralyzed Father, meets a mysterious Woman with a secret that forces Vesper to use her wits, strength and bio-hacking abilities to fight for the possibility of a future.', 'assets/img/horror_vesper.jpg', 'Horror'),
(3, 'Samaritan', 2022, '6.9/10', 'Thirteen year old Sam Cleary suspects that his mysteriously reclusive neighbor Mr. Smith is actually the legendary vigilante Samaritan, who was reported dead 20 years ago. With crime on the rise and the city on the brink of chaos, Sam makes it his mission to coax his neighbor out of hiding to save the city from ruin.', 'assets/img/scifi_samaritan.jpg', 'Sci-fi'),
(4, 'After We Fell', 2021, '7.2/10', 'Just as Tessa\'s life begins to become unglued, nothing is what she thought it would be. Not her friends nor her family. The only person that she should be able to rely on is Hardin, who is furious when he discovers the massive secret that she\'s been keeping. Before Tessa makes the biggest decision of her life, everything changes because of revelations about her family.', 'assets/img/romance_afterwefell.jpg', 'Romance'),
(5, 'Orphan : First Kill', 2005, '6.8/10', 'After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. But when her mask starts to slip, she is put against a mother who will protect her family from the murderous child at any cost.', 'assets/img/horror_orphan.jpg', 'Horror'),
(6, 'Black Adam', 2022, '6.8/10', 'Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is\r\n freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.', 'assets/img/Action_blackAdam.jpg', 'Action'),
(7, 'Medieval', 2022, '7.2/10', 'The story of 14th century Czech icon and warlord Jan Zizka who defeated armies of the Teutonic Order and the Holy Roman Empire.', 'assets/img/action_medieval.jpg', 'Action'),
(8, 'Paradise City', 2022, '6.2/10', 'Renegade bounty hunter Ryan Swan must carve his way through the Hawaiian crime world to wreak vengeance on the kingpin who\r\n murdered his father.', 'assets/img/action_paradisecity.jpg', 'Action'),
(9, 'Prey', 2022, '7.9/10', 'When danger threatens her camp, the fierce and highly skilled Comanche warrior Naru sets out to protect her people. But the prey she stalks turns out to be a highly evolved alien predator with a technically advanced arsenal.\r\n', 'assets/img/action_prey.jpg', 'Action'),
(10, 'Lost Bullet 2', 2022, '7/10', 'Having cleared his name, genius mechanic Lino has only one goal in mind: getting revenge on the\r\ncorrupt cops who killed his brother and his mentor.', 'assets/img/action_lostbullet.jpg', 'Action'),
(11, 'Avatar', 2009, '7.5/10', 'In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between \r\nfollowing orders and protecting an alien civilization.', 'assets/img/scifi_avatar.jpg', 'Sci-fi'),
(12, 'Spider-Man: No Way Home', 2021, '8/10', 'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man. ', 'assets/img/scifi_spiderman.jpg', 'Sci-fi'),
(13, 'Margaux', 2022, '6.8/10', 'As a group of seniors celebrate their final college days at a smart house, the house\'s highly advanced AI system, Margaux, begins to take on a deadly presence of her own. A carefree weekend of partying turns into a dystopian nightmare as they realize Margaux\'s plans to eliminate her tenants one way or another.\r\n Time begins to run out as the group desperately tries to survive and outsmart the smart home.', 'assets/img/scifi_margaux.jpg', 'Sci-fi'),
(14, 'Avengers: Infinity War', 2018, '8.3/10', 'As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. E\r\nverything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain', 'assets/img/scifi_infinity.jpg', 'Sci-fi'),
(15, 'MexZombies', 2022, '7.2/10', 'A group of teenagers must face a zombie apocalypse, and help reestablish order.', 'assets/img/comedy_mex.jpg', 'Comedy'),
(16, 'Encanto', 2021, '7.7/10', 'The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family\'s last hope.', 'assets/img/comedy_encanto.jpg', 'Comedy'),
(17, 'Luck', 2022, '7.9/10', 'Suddenly finding herself in the never-before-seen Land of Luck, the unluckiest person in the world must unite with the magical creatures there to turn her luck around.', 'assets/img/comedy_luck.jpg', 'Comedy'),
(18, 'Turning Red', 2021, '7.5/10', 'Thirteen-year-old Mei is experiencing the awkwardness of being a teenager with a twist – when she gets too excited, she transforms into a giant red panda.', 'assets/img/comedy_turningred.jpg', 'Comedy'),
(19, 'Smile', 2017, '6.9/10', 'After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can\'t explain. As an overwhelming terror begins taking over her life, Rose must confront her troubling past in order to survive and escape her horrifying new reality.', 'assets/img/horror_smile.jpg', 'Horror'),
(20, 'Watcher', 2009, '6.2/10', 'As a serial killer stalks the city, Julia — a young actress who just moved to town with her husband — notices a mysterious stranger watching her from across the street.', 'assets/img/horror_watcher.jpg', 'Horror'),
(21, 'Whisper', 1998, '6.3/10', 'A young Nurse is assigned to look after a patient in a remote location in the English countryside. As the night continues she finds herself terrorized by an unseen force that is connected with her patient.', 'assets/img/horror_whisper.jpg', 'Horror'),
(22, 'Men', 2002, '6.3/10', 'In the aftermath of a personal tragedy, Harper retreats alone to the beautiful English countryside, hoping to find a place to heal. But someone — or something — from the surrounding woods appears to be stalking her, and what begins as simmering dread becomes a fully-formed nightmare, inhabited by her darkest memories and fears.', 'assets/img/horror_men.jpg', 'Horror'),
(23, 'Hex', 2022, '3/10', 'Following a mysterious disappearance on a jump, a group of skydivers experience paranormal occurrences that leave them fighting for their lives.', 'assets/img/horror_hex.jpg', 'Horror'),
(24, 'Fifty Shades Freed', 2018, '6.7/10', 'Believing they have left behind shadowy figures from their past, newlyweds Christian and Ana fully embrace an inextricable connection and shared life of luxury. But just as she steps into her role as Mrs. Grey and he relaxes into an unfamiliar stability, new threats could jeopardize their happy ending before it even begins.', 'assets/img/romance_50.jpg', 'Romance'),
(25, 'Kal', 2022, '5.5/10', 'Semih\'s girlfriend suddenly breaks up with him. In search of answers about their relationship, he must soon confront what he had long ignored.', 'assets/img/romance_kal.jpg', 'Romance'),
(26, 'The Last: Naruto The Movie', 2014, '7.8/10', 'Two years after the events of the Fourth Great Ninja War, the moon that Hagoromo Otsutsuki created long ago to seal away the Gedo Statue begins to descend towards the world, threatening to become a meteor that would destroy everything on impact. Amidst this crisis, a direct descendant of Kaguya Otsutsuki named Toneri Otsutsuki attempts to kidnap Hinata Hyuga but ends up abducting her younger sister Hanabi. Naruto and his allies now mount a rescue mission before finding themselves embroiled in a final battle to decide the fate of everything.', 'assets/img/romance_naruto.jpg', 'Romance'),
(27, 'After', 2019, '7.2/10', 'Tessa Young is a dedicated student, dutiful daughter and loyal girlfriend to her high school sweetheart. Entering her first semester of college, Tessa\'s guarded world opens up when she meets Hardin Scott, a mysterious and brooding rebel who makes her question all she thought she knew about herself -- and what she wants out of life.', 'assets/img/romance_after.jpg', 'Romance'),
(28, 'Titanic', 1997, '7.9/10', '101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic, 84 years later. A young Rose boards the ship with her mother and fiancé. Meanwhile, Jack Dawson and Fabrizio De Rossi win third-class tickets aboard the ship. Rose tells the whole story from Titanic\'s departure through to its death—on its first and last voyage—on April 15, 1912.', 'assets/img/romance_titanic.jpg', 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `review_movie_id` int(11) UNSIGNED NOT NULL,
  `review_user_id` int(11) UNSIGNED NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `review_movie_id`, `review_user_id`, `review_rating`, `review_content`) VALUES
(1, 1, 38, 4, 'very good'),
(2, 1, 38, 3, 'nice one'),
(3, 1, 38, 2, 'ok ok'),
(4, 1, 38, 1, ' Bad movie'),
(5, 1, 40, 5, 'nice good'),
(8, 4, 38, 4, 'very good'),
(9, 8, 38, 2, 'nice one'),
(10, 4, 38, 1, 'bad'),
(11, 1, 38, 1, 'good'),
(12, 2, 40, 3, 'very good'),
(13, 2, 38, 4, 'very good'),
(14, 2, 40, 3, 'Movie was really good'),
(15, 4, 38, 2, 'ok ok'),
(16, 5, 38, 1, ' Bad movie'),
(17, 6, 40, 5, 'nice good'),
(18, 7, 38, 4, 'very good'),
(19, 8, 38, 3, 'nice one'),
(20, 9, 38, 2, 'ok ok'),
(21, 10, 38, 1, ' Bad movie'),
(22, 11, 40, 5, 'nice good'),
(26, 4, 38, 4, 'OP');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_full_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_password`, `user_role`) VALUES
(38, 'admin', 'Admin', 'admin@admin.com', 'admin', 1),
(39, 'test', 'Test', 'test@test.com', 'test', 2),
(40, 'abc', 'abc', 'abc@abc.com', 'abc', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `users_foreign_key` (`review_user_id`),
  ADD KEY `movies_foreign_key` (`review_movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `movies_foreign_key` FOREIGN KEY (`review_movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_foreign_key` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
