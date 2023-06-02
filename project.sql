-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 02:31 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Algorithms', 'An algorithm is a self-contained sequence of actions to be performed. Algorithms can perform calculation, data processing and automated reasoning tasks.An algorithm is an effective method that can be expressed within a finite amount of space and time and in a well-defined formal language for calculating a function.<br>There are various algorithm design paradigm like Brute-Force approach, Divide and conquer approach, Linear programming, Dynamic programming, The greedy method and so on...'),
(2, 'Architecture', 'In computer engineering, computer architecture is a set of rules and methods that describe the functionality, organization, and implementation of computer systems. Some definitions of architecture define it as describing the capabilities and programming model of a computer but not a particular implementation. In other definitions computer architecture involves instruction set architecture design, microarchitecture design, logic design, and implementation.<br>The purpose of computer architecture is to design a computer that maximizes performance while keeping power consumption in check, costs low relative to the amount of expected performance, and is also very reliable. For this, many aspects are to be considered which includes Instruction Set Design, Functional Organization, Logic Design, and Implementation.'),
(3, 'Theory Of Computation', 'In theoretical computer science and mathematics, the theory of computation is the branch that deals with how efficiently problems can be solved on a model of computation, using an algorithm. The field is divided into three major branches: automata theory and language, computability theory, and computational complexity theory, which are linked by the question: \"What are the fundamental capabilities and limitations of computers?\".<br>In order to perform a rigorous study of computation, computer scientists work with a mathematical abstraction of computers called a model of computation. There are several models in use, but the most commonly examined is the Turing machine.'),
(4, 'Database Management', 'A Database Management System (DBMS) is a computer program (or more typically, a suite of them) designed to manage a database, a large set of structured data, and run operations on the data requested by numerous users. Typical examples of DBMS use include accounting, human resources and customer support systems.<br>Originally found only in large companies with the computer hardware needed to support large data sets, DBMSs have more recently emerged as a fairly standard part of any company back office.'),
(5, 'Probability &amp; Queuing', 'Probability is the measure of the likelihood that an event will occur. Probability is quantified as a number between 0 and 1 (where 0 indicates impossibility and 1 indicates certainty). The higher the probability of an event, the more certain that the event will occur.<br>Queueing theory is the mathematical study of waiting lines, or queues. In queueing theory, a model is constructed so that queue lengths and waiting time can be predicted. Queueing theory is generally considered a branch of operations research because the results are often used when making business decisions about the resources needed to provide a service.'),
(6, 'Software Engineering', 'Software engineering (SWE) is the application of engineering to the development of software in a systematic method. Typically, Software engineering is Research, design, develop, and test operating systems-level software, compilers, and network distribution software for medical, industrial, military, communications, aerospace, business, scientific, and general computing applications, and is an an engineering discipline that is concerned with all aspects of software production.<br>Software engineering is a direct sub-field of engineering and has an overlap with computer science and management science. It is also considered a part of overall systems engineering.'),
(7, 'Other', 'Any Other Category...');

-- --------------------------------------------------------

--
-- Table structure for table `quacat`
--

CREATE TABLE `quacat` (
  `id` int UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quacat`
--

INSERT INTO `quacat` (`id`, `category`) VALUES
(40, 'Database Management'),
(41, 'Algorithms'),
(42, 'Theory Of Computation'),
(43, 'Architecture'),
(44, 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `quans`
--

CREATE TABLE `quans` (
  `id` int UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `answer` longtext,
  `askedby` varchar(255) NOT NULL,
  `answeredby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quans`
--

INSERT INTO `quans` (`id`, `question`, `answer`, `askedby`, `answeredby`) VALUES
(40, 'What is DBMS ?', 'A database management system (or DBMS) is essentially nothing more than a computerized data-keeping system. Users of the system are given facilities to perform several kinds of operations on such a system for either manipulation of the data in the database or the management of the database structure itself.', 'visheshraghuvanshi', 'visheshraghuvanshi'),
(41, 'What is an Algorithm ?', 'In mathematics and computer science, an algorithm is a finite sequence of rigorous instructions, typically used to solve a class of specific problems or to perform a computation. Algorithms are used as specifications for performing calculations and data processing.', 'visheshraghuvanshi', 'visheshraghuvanshi'),
(42, 'What is Theory of Computation?', 'In theoretical computer science and mathematics, the theory of computation is the branch that deals with what problems can be solved on a model of computation, using an algorithm, how efficiently they can be solved or to what degree.', 'ujjwal', 'visheshraghuvanshi'),
(43, 'What is Architecture?', 'Computer architecture is the organisation of the components which make up a computer system and the meaning of the operations which guide its function. It defines what is seen on the machine interface, which is targeted by programming languages and their compilers.', 'ujjwal', 'visheshraghuvanshi'),
(44, 'What is Software Engineering ?', 'Software engineering is a systematic engineering approach to software development. A software engineer is a person who applies the principles of software engineering to design, develop, maintain, test, and evaluate computer software.', 'visheshraghuvanshi', 'visheshraghuvanshi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roles` varchar(15) DEFAULT 'Student'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `join_date`, `roles`) VALUES
(21, 'admin', '$2y$10$CDj3n5wIDcAySOE94uTeNuxlYYk1z.2e6WsUXtvkQqPgLLC.WpAvq', 'Admin', 'admin@dsp.in', '2022-11-16 16:59:45', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`,`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `quacat`
--
ALTER TABLE `quacat`
  ADD PRIMARY KEY (`category`,`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `quans`
--
ALTER TABLE `quans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `askedby` (`askedby`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quans`
--
ALTER TABLE `quans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quacat`
--
ALTER TABLE `quacat`
  ADD CONSTRAINT `quacat_ibfk_1` FOREIGN KEY (`id`) REFERENCES `quans` (`id`),
  ADD CONSTRAINT `quacat_ibfk_3` FOREIGN KEY (`category`) REFERENCES `category` (`name`);

--
-- Constraints for table `quans`
--
ALTER TABLE `quans`
  ADD CONSTRAINT `quans_ibfk_1` FOREIGN KEY (`askedby`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
