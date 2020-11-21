-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2020 at 09:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `Andre-ML`
--

CREATE TABLE `Andre-ML` (
  `article-name` varchar(225) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course-student`
--

CREATE TABLE `course-student` (
  `course` varchar(225) NOT NULL,
  `student` varchar(225) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `imgname` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course-student`
--

INSERT INTO `course-student` (`course`, `student`, `status`, `imgname`) VALUES
('Andre-ML', 'abc', 0, 'ml1');

-- --------------------------------------------------------

--
-- Table structure for table `Course-tags`
--

CREATE TABLE `Course-tags` (
  `Course` varchar(225) NOT NULL,
  `tag` varchar(225) NOT NULL,
  `imgname` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Course-tags`
--

INSERT INTO `Course-tags` (`Course`, `tag`, `imgname`) VALUES
('Andre-ML', 'Machine-Learning', 'ml1'),
('fire-DL', 'Deep-Learning', 'dl1'),
('back-to-android', 'Android', 'ad1'),
('fast-nodejs', 'Web-App', 'wb1'),
('finance-core', 'Finance', 'fin1'),
('ML-fast-track', 'Machine-Learning', 'ml2'),
('ML-exceed', 'Machine-Learning', 'ml3\r\n'),
('RNN', 'Deep-Learning', 'dl2');

-- --------------------------------------------------------

--
-- Table structure for table `fire-DL`
--

CREATE TABLE `fire-DL` (
  `article-name` varchar(225) NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `VALID`
--

CREATE TABLE `VALID` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(230) DEFAULT NULL,
  `article` varchar(255) NOT NULL DEFAULT '0',
  `course` int(11) NOT NULL DEFAULT 0,
  `pone` varchar(255) DEFAULT NULL,
  `ptwo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `VALID`
--

INSERT INTO `VALID` (`name`, `email`, `password`, `article`, `course`, `pone`, `ptwo`) VALUES
('abc', 'abc@gmail.com', 'abc', '0', 0, 'Android', 'Web-App'),
('ameer', 'ameer@hmail.com', 'asd', '0', 0, '', ''),
('', '', '', '', 0, '', ''),
('ss', 'ss@gmail.com', 'ss', '0', 0, '', ''),
('pooja', 'pooja@gmail.com', 'pooja', '0\r\n', 0, 'Android', 'Deep-Learning'),
('sid', 'siddharth.kandola@gmail.com', 'sid', '0', 0, 'Machine-Learning', 'Android'),
('dahiya', 'ericlala@live.fr', 'dahiya', '0', 0, 'Android', 'Deep-Learning'),
('dd', 'dd@cc.com', 'dd', '0', 0, 'Machine-Learning', 'Android'),
('d2', 'd2@hh.com', 'd2', '0', 0, 'Machine-Learning', 'Deep-Learning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `VALID`
--
ALTER TABLE `VALID`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
