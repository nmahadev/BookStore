-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 09:48 PM
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
-- Database: `simplebookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorID` int(3) NOT NULL,
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorID`, `Firstname`, `Lastname`, `Email`) VALUES
(1, 'Anany', 'Levitin', ''),
(2, 'Michael', 'Garey', ''),
(3, 'David', 'Johnson', ''),
(4, 'Paul', 'Deitel', ''),
(5, 'Harvey', 'Deitel', ''),
(6, 'Kenneth', 'Lambert', ''),
(7, 'Ronald', 'Graham', ''),
(8, 'Donald', 'Knuth', ''),
(9, 'Oren', 'Patashnik', ''),
(10, 'Shai', 'Vaingast', ''),
(11, 'Glenn', 'Myatt', ''),
(12, 'Wayne', 'Johnson', ''),
(13, 'Thomas', 'Mowbray', ''),
(14, 'Dale', 'Skrien', ''),
(15, 'Ian', 'Witten', ''),
(16, 'Eibe', 'Frank', ''),
(17, 'Mark ', 'Hall', ''),
(18, 'Al', 'Kelley', ''),
(19, 'Ira', 'Pohl', ''),
(20, 'Michael', 'Sipser', ''),
(21, 'Ellie', 'Quigley', ''),
(22, 'Marko', 'Gargenta', ''),
(23, 'Ian', 'Sommerville', '');

-- --------------------------------------------------------

--
-- Table structure for table `bookauthors`
--

CREATE TABLE `bookauthors` (
  `bookauthorID` int(3) NOT NULL,
  `bookID` int(3) NOT NULL,
  `authorID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookauthors`
--

INSERT INTO `bookauthors` (`bookauthorID`, `bookID`, `authorID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5),
(6, 4, 6),
(7, 5, 7),
(8, 5, 8),
(9, 5, 9),
(10, 6, 10),
(11, 7, 11),
(12, 7, 12),
(13, 8, 13),
(14, 9, 14),
(15, 10, 15),
(16, 10, 16),
(17, 10, 17),
(18, 11, 18),
(19, 11, 19),
(20, 12, 20),
(21, 13, 21),
(22, 13, 22),
(23, 14, 23);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` int(3) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `Year` int(5) NOT NULL,
  `Edition` int(2) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Cover` varchar(20) NOT NULL,
  `StockSize` int(3) NOT NULL,
  `UpdatedOn` date NOT NULL,
  `Review` text NOT NULL,
  `Rating` decimal(4,1) NOT NULL,
  `StaffID` int(3) NOT NULL,
  `PubID` int(3) NOT NULL,
  `SubID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `Title`, `ISBN`, `Year`, `Edition`, `Price`, `Cover`, `StockSize`, `UpdatedOn`, `Review`, `Rating`, `StaffID`, `PubID`, `SubID`) VALUES
(1, 'The Design and Analysis of Algorithms', '0-13-231681-1', 2012, 3, 74.99, 'daa.jpg', 0, '2024-11-05', '', 3.9, 1, 1, 1),
(2, 'Computers and Intractability', '0-7167-1045-5', 1979, 0, 113.49, 'cai.jpg', 0, '2024-11-05', '', 4.2, 1, 2, 8),
(3, 'Java, How to Program', '0-13-257566-3', 2018, 11, 28.00, 'jhp.jpg', 0, '0000-00-00', '', 0.0, 1, 1, 2),
(4, 'Fundamentals of Python', '1-111-82270-0', 2012, 0, 42.16, 'fop.jpg', 0, '0000-00-00', '', 0.0, 1, 4, 3),
(5, 'Concrete Mathematics', '0-201-14236-8', 1989, 0, 58.97, 'cm.jfif', 0, '0000-00-00', '', 0.0, 1, 5, 4),
(6, 'Beginning Python Visualization', '978-1-4302-1843-2', 2009, 0, 50.55, 'bpv.jpg', 0, '0000-00-00', '', 0.0, 1, 6, 3),
(7, 'Making Sense of Data I', '978-1-118-40741-7', 2006, 2, 65.77, 'msd.jpg', 0, '2024-11-05', '', 4.1, 1, 7, 5),
(8, 'Cybersecurity', '978-1-118-69711-5', 2014, 0, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 6, 7),
(9, 'Object-Oriented Design Using Java', '978-0-07-297416-4', 2009, 0, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 2, 2),
(10, 'Data Mining', '978-0-12-374856-0', 2011, 3, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 5, 9),
(11, 'A Book on C', '0-201-18399-4', 1998, 4, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 7, 5),
(12, 'Introduction to the Theory of Computatio', '0-534-95097-3', 2006, 2, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 8, 4),
(13, 'PHP and MySQL', '0-13-187508-6', 2007, 0, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 9, 3),
(14, 'Software Engineering', '0-13-703515-2', 2011, 9, 0.00, '', 0, '0000-00-00', '', 0.0, 1, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(3) NOT NULL,
  `Date` date NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Cost` decimal(10,2) NOT NULL,
  `ShippedOn` date NOT NULL,
  `bookID` int(3) NOT NULL,
  `customerID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `pubID` int(3) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Web` varchar(40) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`pubID`, `Name`, `Web`, `Phone`) VALUES
(1, 'Pearson', 'www.pearsonhighered.com', ''),
(2, 'Freeman', '', ''),
(3, 'Prentice Hall', 'www.pearsonhighered.com', ''),
(4, 'Course Technology', 'www.cengage.com', ''),
(5, 'Addison Wesley', '', ''),
(6, 'Apress', 'www.apress.com', ''),
(7, 'John Wiley & Sons', 'www.wiley.com', ''),
(8, 'McGraw-Hill', 'www.mhhe.com', ''),
(9, 'Elsevier Inc', 'www.elsevier.com', ''),
(10, 'Morgan Kaufmann', 'www.mkp.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewID` int(3) NOT NULL,
  `review` text NOT NULL,
  `rating` int(1) NOT NULL,
  `bookID` int(3) NOT NULL,
  `customerID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subID` int(3) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subID`, `Name`) VALUES
(1, 'Algorithms'),
(2, 'Java'),
(3, 'Python'),
(4, 'Discrete Mathematics'),
(5, 'Data Science'),
(6, 'Cybersecurity'),
(7, 'C Programming'),
(8, 'Theory of Computation'),
(9, 'PHP'),
(10, 'Software Engineering'),
(11, 'Computer Architecture'),
(12, 'Hardware'),
(13, 'Robotics');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(3) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Firstname` varchar(15) NOT NULL,
  `Lastname` varchar(15) NOT NULL,
  `Address1` varchar(40) NOT NULL,
  `Address2` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `SecurityQuestion` varchar(40) NOT NULL,
  `SecurityAnswer` varchar(40) NOT NULL,
  `Verified` tinyint(1) NOT NULL,
  `Usertype` int(1) NOT NULL COMMENT '1.owner,2.staff,3.customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `Username`, `Password`, `Firstname`, `Lastname`, `Address1`, `Address2`, `Email`, `Phone`, `SecurityQuestion`, `SecurityAnswer`, `Verified`, `Usertype`) VALUES
(1, 'mahadev', 'mahadev', 'Mahadev', 'Nadimpalli', '160 Pearl Street', 'Fitchburg, MA 01420', 'nmahadev@gmail.com', '978-665-3270', 'What if?', 'What if not?', 1, 1),
(2, 'mahadev2', 'mahadev', 'Nadimpalli', 'Mahadev', '160 Pearl Street', 'Fitchburg, MA 01420', 'nmahadev@fitchburgstate.edu', '978-665-3270', 'What if 2?', 'What if not?', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorID`);

--
-- Indexes for table `bookauthors`
--
ALTER TABLE `bookauthors`
  ADD PRIMARY KEY (`bookauthorID`),
  ADD KEY `bookID` (`bookID`),
  ADD KEY `authorID` (`authorID`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`),
  ADD KEY `StaffID` (`StaffID`,`PubID`,`SubID`),
  ADD KEY `PubID` (`PubID`),
  ADD KEY `SubID` (`SubID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `bookID` (`bookID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`pubID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `bookID` (`bookID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `username` (`Username`),
  ADD UNIQUE KEY `SecurityQuestion` (`SecurityQuestion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bookauthors`
--
ALTER TABLE `bookauthors`
  MODIFY `bookauthorID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `pubID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookauthors`
--
ALTER TABLE `bookauthors`
  ADD CONSTRAINT `bookauthors_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  ADD CONSTRAINT `bookauthors_ibfk_2` FOREIGN KEY (`authorID`) REFERENCES `authors` (`authorID`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`PubID`) REFERENCES `publishers` (`pubID`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`SubID`) REFERENCES `subjects` (`subID`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`StaffID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
