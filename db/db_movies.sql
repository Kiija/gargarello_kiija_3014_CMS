-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2018 at 04:20 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`) VALUES
(15, 'lovedrugs.jpg', 'Love and Other Drugs', '2010', '1h 37min', 'Maggie is an alluring free spirit who will not let anyone or anything tie her down. But she meets her match in Jamie, whose relentless and nearly infallible charm serve him well with the ladies and in the cutthroat world of pharmaceutical sales. Maggie and Jamies evolving relationship takes them both by surprise, as they find themselves under the influence of the ultimate drug, love.'),
(16, 'clueless.jpg', 'Clueless', '1995', '1h 37min', 'Cher, a high school student in Beverly Hills, must survive the ups and downs of adolescent life. Her external demeanour at first seems superficial, but rather it hides her wit, charm, and intelligence which help her to deal with relationships, friends, family, school, and the all important teenage social life.'),
(17, 'shawshank.jpg', 'The Shawshank Redemption', '1994', '2h 22min', 'Chronicles the experiences of a formerly successful banker as a prisoner in the gloomy jailhouse of Shawshank after being found guilty of a crime he did not commit. The film portrays the mans unique way of dealing with his new, torturous life, along the way he befriends a number of fellow prisoners, most notably a wise longterm inmate named Red.'),
(18, 'paranormal.jpg', 'Paranormal Activity', '2007', '1h 26min', 'After a young, middle class couple moves into a suburban starter tract house, they become increasingly disturbed by a presence that may or may not be somehow demonic but is certainly most active in the middle of the night. Especially when they sleep. Or try to.'),
(19, 'tangled.jpg', 'Tangled', '2010', '1h 40min', 'After receiving the healing powers from a magical flower, the baby Princess Rapunzel is kidnapped from the palace in the middle of the night by Mother Gothel. Mother Gothel knows that the flowers magical powers are now growing within the golden hair of Rapunzel, and to stay young, she must lock Rapunzel in her hidden tower. Rapunzel is now a teenager and her hair has grown to a length of 70 feet. The beautiful Rapunzel has been in the tower her entire life, and she is curious of the outside world. One day, the bandit Flynn Ryder scales the tower and is taken captive by Rapunzel. Rapunzel strikes a deal with the charming thief to act as her guide to travel to the place where the floating lights come from that she has seen every year on her birthday. Rapunzel is about to have the most exciting and magnificent journey of her life.'),
(20, 'blockers.jpg', 'Blockers', '2018', '1h 42min', 'Three parents try to stop their daughters from having sex on Prom night.'),
(22, 'croft.jpg', 'Tomb Raider', '2018', '1h 58min', 'Lara Croft is the fiercely independent daughter of an eccentric adventurer who vanished when she was scarcely a teen. Now a young woman of 21 without any real focus or purpose, Lara navigates the chaotic streets of trendy East London as a bike courier, barely making the rent, and takes college courses, rarely making it to class. Determined to forge her own path, she refuses to take the reins of her fathers global empire just as staunchly as she rejects the idea that he is truly gone. Advised to face the facts and move forward after seven years without him, even Lara can not understand what drives her to finally solve the puzzle of his mysterious death. Going explicitly against his final wishes, she leaves everything she knows behind in search of her dads lastknown destination, a fabled tomb on a mythical island that might be somewhere off the coast of Japan. But her mission will not be an easy one. '),
(27, 'fightclub.jpg', 'Fight Club', '1999', '2h 19min', 'A nameless first person narrator attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla, another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power. When the narrator is exposed to the hidden agenda of Tylers fight club, he must accept the awful truth that Tyler may not be who he says he is. '),
(28, 'gump.jpg', 'Forest Gump', '1994', '2h 22min', 'Forrest Gump is a simple man with a low IQ. but has good intentions. He is running through childhood with his best and only friend Jenny. His mama teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.'),
(29, 'hunting.jpg', 'Good Will Hunting', '1997', '2h 6min', 'A touching tale of a wayward young man who struggles to find his identity, living in a world where he can solve any problem, except the one brewing deep within himself, until one day he meets his soul mate who opens his mind and his heart.'),
(30, 'showman.jpg', 'The Greatest Showman', '2017', '1h 45min', 'Orphaned, penniless but ambitious and with a mind crammed with imagination and fresh ideas, the American Phineas Taylor Barnum will always be remembered as the man with the gift to effortlessly blur the line between reality and fiction. Thirsty for innovation and hungry for success, the son of a tailor will manage to open a wax museum but will soon shift focus to the unique and peculiar, introducing extraordinary, never seen before live acts on the circus stage. Some will call Barnums wide collection of oddities, a freak show. However, when the obsessed showman gambles everything on the opera singer Jenny Lind to appeal to a high-brow audience, he will somehow lose sight of the most important aspect of his life, his family.'),
(31, 'pulpfiction.jpg', 'Pulp Fiction', '1994', '2h 34min', 'Jules Winnfield and Vincent Vega are two hit men who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled for incidents.'),
(32, 'playerone.jpg', 'Ready Player One', '2018', '2h 20min', 'In the year 2045, the real world is a harsh place. The only time Wade Watts truly feels alive is when he escapes to the OASIS, an immersive virtual universe where most of humanity spends their days. In the OASIS, you can go anywhere, do anything, be anyone, the only limits are your own imagination. The OASIS was created by the brilliant and eccentric James Halliday, who left his immense fortune and total control of the Oasis to the winner of a three part contest he designed to find a worthy heir. When Wade conquers the first challenge of the reality-bending treasure hunt, he and his friends are hurled into a fantastical universe of discovery and danger to save the OASIS.'),
(33, 'shapewater.jpg', 'The Shape of Water', '2017', '2h 3min', 'From master storyteller Guillermo del Toro comes THE SHAPE OF WATER, an otherworldly fable set against the backdrop of Cold War era America circa 1962. In the hidden high security government laboratory where she works, lonely Elisa is trapped in a life of isolation. Elisas life is changed forever when she and coworker Zelda discover a secret classified experiment.'),
(34, 'panther.jpg', 'Black Panther', '2018', '2h 14min', 'After the events of Captain America Civil War, King TChalla returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his countrys new leader. However, TChalla soon finds that he is challenged for the throne from factions within his own country. When two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with CIA. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war.'),
(35, 'gunslingers.jpg', 'Ecstasy of Gold', '2009', '1h 29min', 'Butch is a bounty hunter who just wants to get paid an honest amount for an honest days work. His chattel, morally corrupt Rattler Fenton just wants to cash in on his well hidden and hard won gold. As Butch navigates an increasingly magical West in search of payment he is joined by a quirky band of outcasts and outlaws and terrorized by the entirely evil but not entirely human Mondego gang. Through Butch we learn the very real consequences of greed as he watches the pursuit of the ecstasy of gold. '),
(36, 'simon.jpg', 'Love, Simon', '2018', '1h 50min', 'A young coming of age teenage boy, Simon Spier, goes through a different kind of Romeo and Juliet story. Simon has a love connection with a boy, Blue, by email, but the only problem is that Simon has no idea who hes talking to. Simon must discover who that boy is, who Blue is. Along the way, he tries to find himself as well.'),
(37, 'callme.jpg', 'Call Me By Your Name', '2017', '2h 12min', 'A sensual and transcendent tale of first love, based on the acclaimed novel by Andre Aciman. Its the summer of 1983 in the north of Italy, and Elio Perlman, a precocious 17 year old young man, spends his days in his familys 17th century villa transcribing and playing classical music, reading, and flirting with his friend Marzia. Elio enjoys a close relationship with his father, an eminent professor specializing in Greco Roman culture, and his mother Annella, a translator, who favor him with the fruits of high culture in a setting that overflows with natural delights. While Elios sophistication and intellectual gifts suggest he is already a fully fledged adult, there is much that yet remains innocent and unformed about him, particularly about matters of the heart.'),
(38, 'coco.jpg', 'Coco', '2017', '1h 45min', 'Despite his familys baffling generations old ban on music, Miguel dreams of becoming an accomplished musician like his idol, Ernesto de la Cruz. Desperate to prove his talent, Miguel finds himself in the stunning and colorful Land of the Dead following a mysterious chain of events. Along the way, he meets charming trickster Hector, and together, they set off on an extraordinary journey to unlock the real story behind Miguels family history.'),
(39, 'harry.jpg', 'Harry Potter and the Philosophers Stone', '2001', '2h 32min', 'This is the tale of Harry Potter, an ordinary 11 year old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry. Harry is snatched away from his mundane existence by Rubeus Hagrid, the grounds keeper for Hogwarts, and quickly thrown into a world completely foreign to both him and the viewer. Famous for an incident that happened at his birth, Harry makes friends easily at his new school. He soon finds, however, that the wizarding world is far more dangerous for him than he would have imagined, and he quickly learns that not all wizards are ones to be trusted. '),
(40, 'loseaguy.jpg', 'How to Lose a Guy in 10 Days', '2003', '1h 56min', 'Benjamin Barry is an advertising executive competing with two female coworkers for a major campaign for a diamond merchant. He cuts a deal with his competitors that the account is his if he can make a woman of their choice fall in love with him in 10 days. In comes Andie Anderson who, in turn, is writing a story on how to lose a guy in 10 days as a bet with her boss to be allowed to write more substantial stories. With a hidden agenda in each camp, will either party be able to complete their mission?'),
(41, 'centrestage.jpg', 'Center Stage', '2000', '1h 55min', 'The education of three young students, Jodie, Eva and Maureen, as they study at the American Ballet Academy. Life is not what they expected at the esteemed ABA, and all three face problems along the road. Jodie does not have the ideal body for dancing, Eva does not have the right attitude, and Maureen does not have the heart. Along the way, they learn that love can be found in unlikely places, and dancing should be a passion, not a duty.'),
(42, 'moana.jpg', 'Moana', '2016', '1h 47min', 'Moana Waialiki is a sea voyaging enthusiast and the only daughter of a chief in a long line of navigators. When her islands fishermen cannot catch any fish and the crops fail, she learns that the demigod Maui caused the blight by stealing the heart of the goddess, Te Fiti. The only way to heal the island is to persuade Maui to return Te Fitis heart, so Moana sets off on an epic journey across the Pacific. The film is based on stories from Polynesian mythology.'),
(43, 'post.jpg', 'The Post', '2017', '1h 56min', 'When American military analyst, Daniel Ellsberg, realizes to his disgust the depths of the US governments deceptions about the futility of the Vietnam War, he takes action by copying topsecret documents that would become the Pentagon Papers. Later, Washington Post owner, Kay Graham, is still adjusting to taking over her late husbands business when editor Ben Bradlee discovers the New York Times has scooped them with an explosive expose on those papers. Determined to compete, Post reporters find Ellsberg himself and a complete copy of those papers. However, the Posts plans to publish their findings are put in jeopardy with a Federal restraining order that could get them all indicted for Contempt. Now, Kay Graham must decide whether to back down for the safety of her paper or publish and fight for the Freedom of the Press. In doing so, Graham and her staff join a fight that would have Americas democratic ideals in the balance.'),
(44, 'molly.jpg', 'Mollys Game', '2017', '2h 20min', 'Molly Bloom, a beautiful young Olympic class skier, ran the worlds most exclusive highstakes poker game for a decade before being arrested in the middle of the night by 17 FBI agents wielding automatic weapons. Her players included Hollywood royalty, sports stars, business titans, and finally, unbeknownst to her, the Russian mob. Her only ally was her criminal defense lawyer Charlie Jaffey, who learned that there was much more to Molly than the tabloids led us to believe.'),
(45, 'moneyworld.jpg', 'All the Money in the World', '2017', '2h 12min', 'Rome, 1973. Masked men kidnap a teenage boy named John Paul Getty III. His grandfather, Jean Paul Getty , is the richest human world, a billionaire oil magnate, but hes notoriously miserly. His favorite grandsons abduction is not reason enough for him to part with any of his fortune. All the Money in the World follows Gail, Pauls devoted, strong willed mother, who unlike Getty, has consistently chosen her children over his fortune. Her sons life in the balance with time running out, she attempts to sway Getty even as her sons mob captors become increasingly more determined, volatile and brutal. When Getty sends his enigmatic security man Fletcher Chace to look after his interests, he and Gail become unlikely allies in this race against time that ultimately reveals the true and lasting value of love over money.'),
(46, 'moonlight.jpg', 'Moonlight', '2016', '1h 51min', 'Three time periods, young adolescence, midteen and young adult, in the life of black American Chiron is presented. When a child, Chiron lives with his single, crack addict mother Paula in a crime ridden neighborhood in Miami. Chiron is a shy, withdrawn child largely due to his small size and being neglected by his mother, who is more concerned about getting her fixes and satisfying her carnal needs than taking care of him. Because of these issues, Chiron is bullied, the slurs hurled at him which he does not understand beyond knowing that they are meant to be hurtful. Besides his same aged Cuban American friend Kevin, Chiron is given what little guidance he has in life from a neighborhood drug dealer named Juan, who can see that he is neglected, and Juans caring girlfriend Teresa, whose home acts as a sanctuary away from the bullies and away from Paulas abuse. With this childhood as a foundation, Chiron may have a predetermined path in life, one that will only be magnified in terms.'),
(47, 'spotlight.jpg', 'Spotlight', '2015', '2h 8min', 'When the Boston Globes tenacious Spotlight team of reporters delves into allegations of abuse in the Catholic Church, their year long investigation uncovers a decades long cover up at the highest levels of Bostons religious, legal, and government establishment, touching off a wave of revelations around the world.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(41, 15, 15),
(42, 16, 3),
(43, 17, 4),
(44, 18, 7),
(45, 19, 12),
(46, 20, 3),
(47, 22, 1),
(48, 23, 8),
(49, 24, 5),
(50, 25, 5),
(51, 26, 5),
(52, 27, 5),
(53, 28, 5),
(54, 29, 5),
(55, 30, 8),
(56, 31, 4),
(57, 32, 9),
(58, 33, 2),
(59, 34, 1),
(60, 35, 11),
(61, 36, 15),
(62, 37, 15),
(63, 38, 12),
(64, 39, 14),
(65, 40, 15),
(66, 41, 5),
(67, 42, 12),
(68, 43, 6),
(69, 44, 5),
(70, 45, 4),
(71, 46, 5),
(72, 47, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_lvllist` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_lvllist`) VALUES
(1, 'Kiija', 'kiija123', 'kiija123', 'kiijagargarello@gmail.com', '2018-03-07 20:50:46', '::1', 0),
(2, 'Abby', 'Abby', 'test', 'test', '2018-03-08 19:31:20', '::1', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
