-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 04:02 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country` text,
  `movie_territory_mt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country`, `movie_territory_mt_id`) VALUES
(1, 'USA', 2),
(2, 'UK', 5),
(3, 'JAPAN', 3);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL,
  `film_name` text,
  `duration` text,
  `language` varchar(50) NOT NULL,
  `description` text,
  `movie_year_my_id` int(11) NOT NULL,
  `country_country_id` int(11) NOT NULL,
  `movie_rating_rating_id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`film_id`, `film_name`, `duration`, `language`, `description`, `movie_year_my_id`, `country_country_id`, `movie_rating_rating_id`, `gambar`) VALUES
(1, 'Inception', '2h 28min', 'english', 'Inception is a movie starring Leonardo DiCaprio, Joseph Gordon-Levitt, and Ellen Page. A thief, who steals corporate secrets through the use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', 1, 1, 5, 'inception.jpg'),
(2, 'The Social Network', '2h', 'english', 'The Social Network is a movie starring Jesse Eisenberg, Andrew Garfield, and Justin Timberlake. Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.', 1, 1, 4, 'the social network.jpg'),
(3, 'Drive', '1h 40min', 'english', 'A mysterious Hollywood stuntman and mechanic moonlights as a getaway driver and finds himself in trouble when he helps out his neighbor.', 2, 1, 4, 'drive.jpg'),
(4, 'Midnight in Paris', '1h 24min', 'english', 'While on a trip to Paris with his fiancée''s family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s everyday at midnight.', 2, 1, 5, 'midnight in paris.jpg'),
(5, 'Wolf Children', '1h 57min', 'english', 'After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.', 3, 3, 4, 'wolf children.jpg'),
(6, 'Life of Pi', '2h 7min', 'english', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', 3, 1, 3, 'life of pi.jpg'),
(7, 'Gravity ', '1h 31min', 'english', 'Two astronauts work together to survive after an accident which leaves them stranded in space.', 4, 1, 4, 'gravity.jpg'),
(8, 'Dallas Buyers Club', '1h 57min', 'english', 'In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease. ', 4, 1, 4, 'dallas buyers club.jpg'),
(9, 'Interstellar', '2h 49min', 'english', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 5, 1, 5, 'interstellar.jpg'),
(10, 'Nightcrawler', '1h 58min', 'english', 'When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.', 5, 1, 4, 'nightcrawler.jpg'),
(11, 'Far from the Madding Crowd', '1h 59min', 'english', 'Far from the Madding Crowd is a movie starring Carey Mulligan, Matthias Schoenaerts, and Michael Sheen. In Victorian England, the independent and headstrong Bathsheba Everdene attracts three very different suitors: Gabriel Oak, a sheep farmer; Frank Troy, a reckless Sergeant; and William Boldwood, a prosperous and mature bachelor.', 6, 2, 3, 'far from the madding crowd.jpg'),
(12, 'Spectre', '2h 28min', 'english', 'A cryptic message from 007 past sends him pitted against a mysterious terrorist organization called Spectre, and learns of its involvement on previous events of his most dangerous missions before', 6, 2, 5, 'spectre.jpg'),
(13, 'The Wind Rises', '2h 6min', 'english', 'A look at the life of Jiro Horikoshi, the man who designed Japanese fighter planes during World War II.', 4, 3, 5, 'the wind rises.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `film_has_genre`
--

CREATE TABLE `film_has_genre` (
  `fhg_id` int(11) NOT NULL,
  `film_film_id` int(11) NOT NULL,
  `genre_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film_has_genre`
--

INSERT INTO `film_has_genre` (`fhg_id`, `film_film_id`, `genre_genre_id`) VALUES
(1, 1, 21),
(2, 2, 31),
(3, 3, 23),
(4, 4, 24),
(5, 5, 11),
(6, 6, 22),
(7, 7, 35),
(8, 8, 31),
(9, 9, 35),
(10, 10, 23),
(11, 11, 17),
(12, 12, 21),
(13, 13, 11);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre` text,
  `movie_genre_mg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `genre`, `movie_genre_mg_id`) VALUES
(11, 'animation', 1),
(12, 'comedy', 1),
(13, 'drama', 1),
(14, 'family', 1),
(15, 'gameshow', 1),
(16, 'musical', 1),
(17, 'romance', 1),
(21, 'action', 2),
(22, 'adventure', 2),
(23, 'crime', 2),
(24, 'fantasy', 2),
(25, 'horror', 2),
(26, 'mystery', 2),
(27, 'thriller', 2),
(28, 'war', 2),
(29, 'western', 2),
(31, 'biography', 3),
(32, 'documentary', 3),
(33, 'history', 3),
(34, 'news', 3),
(35, 'sci-fi', 3),
(36, 'sport', 3);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `mg_id` int(11) NOT NULL,
  `mg_category` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`mg_id`, `mg_category`) VALUES
(1, 'entertainment'),
(2, 'experience'),
(3, 'information');

-- --------------------------------------------------------

--
-- Table structure for table `movie_person`
--

CREATE TABLE `movie_person` (
  `mp_id` int(11) NOT NULL,
  `mp_category` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_person`
--

INSERT INTO `movie_person` (`mp_id`, `mp_category`) VALUES
(1, 'actor'),
(2, 'director'),
(3, 'editor'),
(4, 'producer'),
(5, 'writer');

-- --------------------------------------------------------

--
-- Table structure for table `movie_rating`
--

CREATE TABLE `movie_rating` (
  `rating_id` int(11) NOT NULL,
  `star` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_rating`
--

INSERT INTO `movie_rating` (`rating_id`, `star`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `movie_territory`
--

CREATE TABLE `movie_territory` (
  `mt_id` int(11) NOT NULL,
  `mt_category` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_territory`
--

INSERT INTO `movie_territory` (`mt_id`, `mt_category`) VALUES
(1, 'africa'),
(2, 'america'),
(3, 'asia'),
(4, 'australia'),
(5, 'europe'),
(6, 'oceania');

-- --------------------------------------------------------

--
-- Table structure for table `movie_year`
--

CREATE TABLE `movie_year` (
  `my_id` int(11) NOT NULL,
  `year` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_year`
--

INSERT INTO `movie_year` (`my_id`, `year`) VALUES
(1, '2010'),
(2, '2011'),
(3, '2012'),
(4, '2013'),
(5, '2014'),
(6, '2015'),
(7, '2016'),
(8, '2017'),
(9, '2018');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `name` text,
  `movie_person_mp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `name`, `movie_person_mp_id`) VALUES
(1, 'Leonardo DiCaprio', 1),
(2, 'Christopher Nolan', 2),
(3, 'David Fincher', 2),
(4, 'Aaron Sorkin', 5),
(5, 'Nicolas Winding Refn', 2),
(6, 'Ryan Gosling', 1),
(7, 'Woody Allen', 2),
(8, 'Owen Wilson', 1),
(9, 'Mamoru Hosoda', 2),
(10, 'Aoi Miyazaki', 1),
(11, 'Ang Lee', 2),
(12, 'Suraj Sharma', 1),
(13, 'Sandra Bullock', 1),
(14, 'George Clonney', 1),
(15, 'Matthew McConaughey', 1),
(16, 'Jared Leto', 1),
(17, 'Jonathan Nolan', 5),
(18, 'Anne Hathway', 1),
(19, 'Dan Gilroy', 2),
(20, 'Jake Gyllenhaal', 1),
(21, 'Thomas Vinterberg', 2),
(22, 'Michael Sheen', 1),
(23, 'Sam Mandes', 2),
(24, 'Daniel Craig', 1),
(25, 'Hayao Miyazaki', 2),
(26, 'Hideaki Anno', 1);

-- --------------------------------------------------------

--
-- Table structure for table `person_has_film`
--

CREATE TABLE `person_has_film` (
  `phf_id` varchar(45) NOT NULL,
  `person_person_id` int(11) NOT NULL,
  `film_film_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_has_film`
--

INSERT INTO `person_has_film` (`phf_id`, `person_person_id`, `film_film_id`) VALUES
('1', 1, 1),
('10', 10, 5),
('11', 11, 6),
('12', 12, 6),
('13', 13, 7),
('14', 14, 7),
('15', 15, 8),
('16', 16, 8),
('17', 17, 9),
('18', 18, 9),
('19', 19, 10),
('2', 2, 1),
('20', 20, 10),
('21', 21, 11),
('22', 22, 11),
('23', 23, 12),
('24', 24, 12),
('25', 25, 13),
('26', 26, 13),
('3', 3, 2),
('4', 4, 2),
('5', 5, 3),
('6', 6, 3),
('7', 7, 4),
('8', 8, 4),
('9', 9, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `fk_country_movie_territory1_idx` (`movie_territory_mt_id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `fk_film_movie_year_idx` (`movie_year_my_id`),
  ADD KEY `fk_film_country1_idx` (`country_country_id`),
  ADD KEY `movie_rating_rating_id` (`movie_rating_rating_id`);

--
-- Indexes for table `film_has_genre`
--
ALTER TABLE `film_has_genre`
  ADD PRIMARY KEY (`fhg_id`),
  ADD KEY `fk_film_has_genre_genre1_idx` (`genre_genre_id`),
  ADD KEY `fk_film_has_genre_film1_idx` (`film_film_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`),
  ADD KEY `fk_genre_movie_genre1_idx` (`movie_genre_mg_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`mg_id`);

--
-- Indexes for table `movie_person`
--
ALTER TABLE `movie_person`
  ADD PRIMARY KEY (`mp_id`);

--
-- Indexes for table `movie_rating`
--
ALTER TABLE `movie_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `movie_territory`
--
ALTER TABLE `movie_territory`
  ADD PRIMARY KEY (`mt_id`);

--
-- Indexes for table `movie_year`
--
ALTER TABLE `movie_year`
  ADD PRIMARY KEY (`my_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `fk_person_movie_person1_idx` (`movie_person_mp_id`);

--
-- Indexes for table `person_has_film`
--
ALTER TABLE `person_has_film`
  ADD PRIMARY KEY (`phf_id`),
  ADD KEY `fk_person_has_film_film1_idx` (`film_film_id`),
  ADD KEY `fk_person_has_film_person1_idx` (`person_person_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `fk_country_movie_territory1` FOREIGN KEY (`movie_territory_mt_id`) REFERENCES `movie_territory` (`mt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`movie_rating_rating_id`) REFERENCES `movie_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_film_country1` FOREIGN KEY (`country_country_id`) REFERENCES `country` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_film_movie_year` FOREIGN KEY (`movie_year_my_id`) REFERENCES `movie_year` (`my_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `film_has_genre`
--
ALTER TABLE `film_has_genre`
  ADD CONSTRAINT `fk_film_has_genre_film1` FOREIGN KEY (`film_film_id`) REFERENCES `film` (`film_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_film_has_genre_genre1` FOREIGN KEY (`genre_genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `fk_genre_movie_genre1` FOREIGN KEY (`movie_genre_mg_id`) REFERENCES `movie_genre` (`mg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_person_movie_person1` FOREIGN KEY (`movie_person_mp_id`) REFERENCES `movie_person` (`mp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `person_has_film`
--
ALTER TABLE `person_has_film`
  ADD CONSTRAINT `fk_person_has_film_film1` FOREIGN KEY (`film_film_id`) REFERENCES `film` (`film_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_person_has_film_person1` FOREIGN KEY (`person_person_id`) REFERENCES `person` (`person_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
