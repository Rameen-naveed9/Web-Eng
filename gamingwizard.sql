-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 08:09 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamingwizard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usertype` varchar(50) NOT NULL DEFAULT 'admingw'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `firstname`, `lastname`, `password`, `emailid`, `createdon`, `usertype`) VALUES
(0, 'usama790', 'Usama', 'Shafique', '1234', 'usamasfolio@gmail.com', '2022-06-18 00:57:29', 'admingw');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`ID`, `name`, `description`, `filename`, `link`) VALUES
(24, 'COD', 'Call of Duty', 'download.jpg', ''),
(25, 'GOD OF WAR', 'God Of war is an multiplayer game', 'god-of-war-ragnarok.png', ''),
(26, 'GTA V', 'Grand Theft Auto ', 'maxresdefault.jpg', 'https://drive.google.com/file/d/1hF2xK39DenDmJr_mlN9ENG93Mk17hcqe/view?usp=sharing'),
(28, 'GTA VI', 'Grand Theft Auto 6 Pre Booked version', 'download (1).jpg', 'https://drive.google.com/file/d/1hF2xK39DenDmJr_mlN9ENG93Mk17hcqe/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postDesc` varchar(10000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `postTag` varchar(40) NOT NULL,
  `postAuthor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `postTitle`, `postDesc`, `postTime`, `postTag`, `postAuthor`) VALUES
(35, 'Apple Just Wrecked 15+ Startups In Less Than 1 Hour', '<h2>What would you do if Apple added a feature that made your startup obsolete?</h2>\r\n\r\n<p><img alt=\"A customer uses Tay to Pay on iPhone to buy fruit at the farmer’s market.\" src=\"https://miro.medium.com/max/700/1*x4SgZvyNuKR794Nqy7_C7w.jpeg\" style=\"height:267px; width:400px\" /></p>\r\n\r\n<p>Apple</p>\r\n\r\n<p>Tech founders bite their nails before Apple events.</p>\r\n\r\n<ul>\r\n	<li>They don&rsquo;t care about the new home screens.</li>\r\n	<li>They don&rsquo;t care about the new erasable messages.</li>\r\n	<li>They don&rsquo;t care about the new ways you can share your dog photos.</li>\r\n</ul>\r\n\r\n<p>They care about Apple making their business obsolete.</p>\r\n\r\n<p>This week was no different.</p>\r\n\r\n<p>WWDC made life a whole lot harder for at least 15 startups.</p>\r\n\r\n<h1>Apple Pay Later</h1>\r\n\r\n<p><em>Buy now, pay later. No interest.</em></p>\r\n\r\n<p>You know that feeling when you see something stunning, but you just can&rsquo;t afford to pay fully right now and you&rsquo;d really hate to load it onto the credit card?</p>\r\n\r\n<p>It&rsquo;s awful.</p>\r\n\r\n<ul>\r\n	<li>For you, because you have to save up.</li>\r\n	<li>For the business that could have had a sale.</li>\r\n</ul>\r\n\r\n<p>A couple of smart people saw this as a great opportunity for a startup.</p>\r\n\r\n<p>The idea goes something like this:</p>\r\n\r\n<ol>\r\n	<li>You enter an online store.</li>\r\n	<li>You see something you like.</li>\r\n	<li>But it costs $499 and you only have $323.87 in your account.</li>\r\n	<li>But right below the button that says add to cart, there is a line that says that they have a buy now, pay later option.</li>\r\n	<li>You checkout through that button and they do a quick credit check to let you know you got it. Some pay later providers charge you interest; others don&rsquo;t.</li>\r\n	<li>You pay your first $125, get your product and pay the rest later.</li>\r\n	<li>The pay later provider charges the business a big fat 4&ndash;6% commission fee.</li>\r\n</ol>\r\n\r\n<p>It&rsquo;s a loan, but clever marketers phrase it as&nbsp;<em>buy now, pay later</em>.</p>\r\n\r\n<p>Hilarious.</p>\r\n\r\n<p>Apple just disrupted this business model at its core by doing what they do best: Simplifying things.</p>\r\n\r\n<p><img alt=\"An iPhone shows the new Apple Pay Later option for a purchase.\" src=\"https://miro.medium.com/max/700/1*FWVLf-3IvfQ2dk_qPpI--Q.jpeg\" style=\"height:680px; width:400px\" /></p>\r\n\r\n<p>Apple</p>\r\n\r\n<p>Apple cuts the complications for customers and the businesses.</p>\r\n\r\n<p>Customers:</p>\r\n\r\n<ul>\r\n	<li>Pay no fees.</li>\r\n	<li>Pay no interest.</li>\r\n	<li>Pay little now, the rest over 6 weeks.</li>\r\n</ul>\r\n\r\n<p>Businesses connected to Apple Pay-supported payment providers:</p>\r\n\r\n<ul>\r\n	<li>Pay no extra commission fees.</li>\r\n	<li>Need no extra payment plugins or API connections.</li>\r\n</ul>\r\n\r\n<p><strong>Brands most affected:</strong></p>\r\n\r\n<ul>\r\n	<li>Afterpay</li>\r\n	<li>Klarna</li>\r\n	<li>Affirm</li>\r\n	<li>Sezzle</li>\r\n	<li>Splitit</li>\r\n	<li>Perpay</li>\r\n</ul>\r\n\r\n<p>As a luxury e-commerce store owner, the big question is why pay the extra commission for any of these services if I can just implement the exact same features delivered by simpler Apple using my existing Stripe integration when most of my customers purchase with Apple devices?</p>\r\n\r\n<p>It just doesn&rsquo;t make sense.</p>\r\n\r\n<h1>Freeform</h1>\r\n\r\n<p><em>A minimalist collaboration whiteboard.</em></p>\r\n\r\n<p>Throughout the work-from-home epidemic, many creatives felt like they needed tools where they could brainstorm their very best ideas together on digital whiteboards in real-time.</p>\r\n\r\n<p>This led to a flurry of new brands exploding as their tools made perfect sense for a remote world. But after reading a couple of reviews, it is clear that many of these experiences weren&rsquo;t as seamless as they once seemed.</p>\r\n\r\n<p>Apple being Apple, decided it wants to bring the world its take on a friction-free collaboration tool and just launched a brand new app called Freeform.</p>\r\n\r\n<p><img alt=\"An iPad screen shows Apple’s new Freeform collaboration app.\" src=\"https://miro.medium.com/max/700/1*IHruCnCUCh0VTSnCIsKQ5g.gif\" style=\"height:294px; width:500px\" /></p>\r\n\r\n<p>Apple</p>\r\n\r\n<p>Freeform is a powerful new collaboration tool with a customizable canvas that allows users to view, share, and work in one location without having to worry about layouts or page sizes, and it also supports Apple Pencil.</p>\r\n\r\n<p>Users can see other people&rsquo;s contributions as they upload information or make changes, all while working in a real-time environment.</p>\r\n\r\n<p>Freeform also enables collaborators to start a session from FaceTime and view updates from others in the Messages thread.</p>\r\n\r\n<p>Best of all, it works on iPad, iPhone, and Mac.</p>\r\n\r\n<p>But it&rsquo;s clear that this is an app primarily focused on the iPad.</p>\r\n\r\n<p>Brands most affected:</p>\r\n\r\n<ul>\r\n	<li>Mural</li>\r\n	<li>Figjam</li>\r\n	<li>Miro</li>\r\n	<li>Whimsical</li>\r\n</ul>\r\n\r\n<h1>Passkey</h1>\r\n\r\n<p><em>The end of the password as we know it?</em></p>\r\n\r\n<p>Ar', '2022-06-20 04:37:48', 'apple', 'hassan'),
(36, 'I spent 3 months applying to jobs after a coding bootcamp. Here’s what I learned.', '<p><img alt=\"\" src=\"https://miro.medium.com/max/700/1*tMOJBSqKfYd9M2zOskluFw.png\" style=\"height:312px; width:700px\" /></p>\r\n\r\n<p>A less-talked about part of the bootcamper&rsquo;s journey is what happens after you graduate &mdash; when you&rsquo;re searching for that six-figure developer position.</p>\r\n\r\n<p><img alt=\"\" src=\"https://miro.medium.com/max/700/1*JjdbhfedcVR3i9XezIlCJA.png\" style=\"height:334px; width:700px\" /></p>\r\n\r\n<p>&lt; 3% of applications became offers</p>\r\n\r\n<p>I completed Hack Reactor in July 2016 and took almost 3 months before accepting an offer with Radius Intelligence. I applied to 291 companies, did 32 phone screens, 16 technical screens, 13 coding challenges, 11 on-sites, and received 8 offers. The offers ranged from $60-125k in salary from companies all over the US, and for both front end and full stack roles. In total, 2.8% of applications became offers.</p>\r\n\r\n<p>Here are 5 things I wish I&rsquo;d known before I began my job search.</p>\r\n\r\n<h1><strong>Insight #1: Get through to real people</strong></h1>\r\n\r\n<p>At first, I applied for companies using the shotgun approach. I applied through Indeed.com, AngelList, LinkedIn, StackOverflow, Hacker News, company websites, and even Craigslist.</p>\r\n\r\n<p>I&rsquo;d submit a resume for any role that wanted React, Node, or JavaScript experience. In the first week, I applied to 15&ndash;20 companies a day.</p>\r\n\r\n<blockquote>\r\n<p><em>Pro-Tip: Find companies using this&nbsp;</em><a href=\"https://github.com/j-delaney/easy-application\" rel=\"noopener ugc nofollow\" target=\"_blank\"><em>easy-application repo</em></a><em>.</em></p>\r\n</blockquote>\r\n\r\n<p>My yield was low. Less than five percent of companies responded to me. I was throwing applications into a black hole.</p>\r\n\r\n<p>Everything changed when one of my cohort-mates, a former recruiter, shared a guide to the job search. He told us to send emails directly to real people with each application. It could be anybody. As long as someone read it.</p>\r\n\r\n<p>From then on, whenever I submitted an application, I searched for the company on LinkedIn and emailed someone on their engineering or hiring team.</p>\r\n\r\n<p>For most small companies or C-level executives, the email format is usually firstName@dreamCompany.com. For larger companies, it may be firstName.lastName@dreamCompany.com.</p>\r\n\r\n<p>To verify emails, I used&nbsp;<a href=\"https://rapportive.com/\" rel=\"noopener ugc nofollow\" target=\"_blank\">Rapportive</a>&nbsp;to cross-check emails with social media accounts.</p>\r\n\r\n<p>The results were amazing. With 150+ emails sent, my response rate was a whopping 22%.</p>\r\n\r\n<p>It also felt great to hear from real people. Surprisingly, CEOs and CTOs responded to me. Sometimes they even interviewed me themselves.</p>\r\n\r\n<blockquote>\r\n<p><em>Takeaway: If you&rsquo;re applying through the front door, make sure you&rsquo;re getting to human beings.</em></p>\r\n</blockquote>\r\n\r\n<h1>Insight #2: Start small and work your way up</h1>\r\n\r\n<p>You will face Level 1 interviews (a non-tech company that needs any dev), where interviewers ask you nothing more than JavaScript trivia.</p>\r\n\r\n<p>You will face Level 9 interviews (Google/Facebook level), where interviewers ask difficult data structure and algorithm questions.</p>\r\n\r\n<p>I strategically set up my process so that I had lower-level interviews earlier, and higher-level interviews later on.</p>\r\n\r\n<p>Early on, I gained experience, built confidence, and secured offers from companies that had less intensive interviews.</p>\r\n\r\n<p>As I got more experience, I effectively &ldquo;leveled up.&rdquo; I became capable of completing interviews at companies with higher hiring bars. This is illustrated below as a linear correlation between the number of weeks I was into the process and the base salary I was offered.</p>\r\n\r\n<p><img alt=\"\" src=\"https://miro.medium.com/max/700/1*408EHuqaKEnSRTFPfd9AOg.png\" style=\"height:503px; width:700px\" /></p>\r\n\r\n<p>There&rsquo;s a direct correlation between time spent interviewing and offer salary.</p>\r\n\r\n<p>I unlocked tougher questions. I unlocked higher salaries. And eventually, I unlocked the job I took.</p>\r\n\r\n<blockquote>\r\n<p>Takeaway: Plan to tackle easier interviews early on and more difficult ones later on.</p>\r\n</blockquote>\r\n\r\n<h1><strong>Insight #3: Study like your future job depends on it (because it does)</strong></h1>\r\n\r\n<p>I hate to break it to you, but the most important thing you could be doing at any point is studying and preparing.</p>\r\n\r\n<p>Why? Because you won&rsquo;t get the offer if you don&rsquo;t have good answers to the questions they ask you.</p>\r\n\r\n<p>People won&rsquo;t refer you if they don&rsquo;t think you&rsquo;re prepared for their interviews.</p>\r\n\r\n<p>Coming out of Hack Reactor, my weaknesses were data structures and algorithms.&nbsp;<a href=\"http://blog.triplebyte.com/bootcamps-vs-college\" rel=\"noopener ugc nofollow\" target=\"_blank\">A study by Triplebyte</a>&nbsp;has found that bootcamp grads are weaker in these ar', '2022-06-20 05:21:24', 'codenow', 'hassan567');

-- --------------------------------------------------------

--
-- Table structure for table `requested_bloggers`
--

CREATE TABLE `requested_bloggers` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `usertype` varchar(20) NOT NULL DEFAULT 'blogger'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `fname`, `lname`, `email`, `phone`, `message`, `time`) VALUES
(3, ' Usama', 'khan', 'devfolio.usama@gmail.com', '03341103790', 'GOW is my fav game pleae make it available', '2022-06-18 04:56:43'),
(4, ' Usama', 'khan', 'd12ev@usamasfolio.com', '03341103790', 'COD have some issue with the link ', '2022-06-18 04:58:28'),
(5, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'why am i trying again and again', '2022-06-18 04:59:36'),
(6, ' Usama', 'khan', 'connection@gmail.com', '03341103790', 'its for last time im trying im tired', '2022-06-18 05:04:09'),
(7, ' Usama', 'khan', 'connection@gmail.com', '03341103790', 'its for last time im trying im tired', '2022-06-18 05:06:16'),
(8, ' Usama', 'khan', 'connection@gmail.com', '03341103790', 'its for last time im trying im tired', '2022-06-18 05:06:20'),
(9, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:06:25'),
(10, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:08:35'),
(11, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:09:37'),
(12, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:11:35'),
(13, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:12:32'),
(14, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:15:35'),
(15, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:16:45'),
(16, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:16:48'),
(17, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:18:35'),
(18, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:19:05'),
(19, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'GOW okay i entered the msg bruh', '2022-06-18 05:20:35'),
(20, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'kindly submit the game please', '2022-06-18 05:20:58'),
(21, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'kindly submit the game please', '2022-06-18 05:22:50'),
(22, ' Usama', 'khan', 'dev@usamasfolio.com', '03341103790', 'kindly submit the game please', '2022-06-18 05:22:54'),
(23, ' Usama', 'khan', 'dev@qwe.com', '03341103790', 'it will be done this time IA', '2022-06-18 05:23:17'),
(24, ' Usama', 'khan', 'khan@gmail.com', '03341103790', 'Functionality comes in first before design ', '2022-06-18 05:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `req_posts`
--

CREATE TABLE `req_posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) NOT NULL,
  `postDesc` varchar(5000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `postTag` varchar(20) NOT NULL,
  `postAuthor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_bloggers`
--

CREATE TABLE `users_bloggers` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `usertype` varchar(20) NOT NULL DEFAULT 'Bloggergw'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_bloggers`
--

INSERT INTO `users_bloggers` (`id`, `username`, `firstname`, `lastname`, `password`, `emailid`, `createdon`, `usertype`) VALUES
(8, 'hassan', '', '', 'uk2345', 'khan@gmail.co.uk', '2022-06-16 14:49:38', 'Bloggergw'),
(9, 'Hassan567', 'Hassan', 'Hayat', 'hassanpassword', 'Hayatkhan@gmail.com', '2022-06-18 17:15:05', 'Bloggergw');

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `postID` int(11) NOT NULL,
  `AuthorName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `postAuthor` (`postAuthor`);

--
-- Indexes for table `requested_bloggers`
--
ALTER TABLE `requested_bloggers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `req_posts`
--
ALTER TABLE `req_posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users_bloggers`
--
ALTER TABLE `users_bloggers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD KEY `userpost_FK` (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `req_posts`
--
ALTER TABLE `req_posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users_bloggers`
--
ALTER TABLE `users_bloggers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD CONSTRAINT `userpost_FK` FOREIGN KEY (`postID`) REFERENCES `posts` (`postID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
