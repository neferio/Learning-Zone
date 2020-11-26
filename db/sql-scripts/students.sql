-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2020 at 11:18 AM
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
-- Table structure for table `course-data`
--

CREATE TABLE `course-data` (
  `course` varchar(225) NOT NULL,
  `data` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `author` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course-data`
--

INSERT INTO `course-data` (`course`, `data`, `status`, `author`) VALUES
('ML-exceed', 'In machine learning (ML), statistical methods are used to empower machines to learn without being programmed explicitly. The field focuses on letting algorithms learn from the provided data, collect insights, and make predictions on unanalyzed data based on the gathered information.\r\n\r\nIn machine learning (ML), statistical methods are used to empower machines to learn without being programmed explicitly. The field focuses on letting algorithms learn from the provided data, collect insights, and make predictions on unanalyzed data based on the gathered information.\r\n\r\n\r\nIn machine learning (ML), statistical methods are used to empower machines to learn without being programmed explicitly. The field focuses on letting algorithms learn from the provided data, collect insights, and make predictions on unanalyzed data based on the gathered information.\r\n\r\nIn machine learning (ML), statistical methods are used to empower machines to learn without being programmed explicitly. The field focuses on letting algorithms learn from the provided data, collect insights, and make predictions on unanalyzed data based on the gathered information.', 0, 'kandola'),
('Andre-ML', 'Here are various ways to classify machine learning problems. Here, we discuss the most obvious ones.\r\n1. On basis of the nature of the learning “signal” or “feedback” available to a learning system\r\n\r\nSupervised learning: The computer is presented with example inputs and their desired outputs, given by a “teacher”, and the goal is to learn a general rule that maps inputs to outputs. The training process continues until the model achieves the desired level of accuracy on the training data. Some real-life examples are:\r\nImage Classification: You train with images/labels. Then in the future you give a new image expecting that the computer will recognize the new object.\r\nMarket Prediction/Regression: You train the computer with historical market data and ask the computer to predict the new price in the future.\r\nUnsupervised learning: No labels are given to the learning algorithm, leaving it on its own to find structure in its input. It is used for clustering population in different groups. Unsupervised learning can be a goal in itself (discovering hidden patterns in data).\r\nClustering: You ask the computer to separate similar data into clusters, this is essential in research and science.\r\nHigh Dimension Visualization: Use the computer to help us visualize high dimension data.\r\nGenerative Models: After a model captures the probability distribution of your input data, it will be able to generate more data. This can be very useful to make your classifier more robust.\r\nA simple diagram which clears the concept of supervised and unsupervised learning is shown below:', 0, 'Geek'),
('back-to-android', 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.', 0, 'pooka'),
('fast-nodejs', 'Node.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browserNode.js is an open-source, cross-platform, back-end, JavaScript runtime environment that executes JavaScript code outside a web browser', 0, 'tyagi'),
('finance-core', 'Finance is a term for matters regarding the management, creation, and study of money and investments. Specifically, it deals with the questions of how and why an individual, company or government acquires the money needed – called capital in the company context – and how they spend or invest that money. Finance is a term for matters regarding the management, creation, and study of money and investments. Specifically, it deals with the questions of how and why an individual, company or government acquires the money needed – called capital in the company context – and how they spend or invest that money. Finance is a term for matters regarding the management, creation, and study of money and investments. Specifically, it deals with the questions of how and why an individual, company or government acquires the money needed – called capital in the company context – and how they spend or invest that money. Finance is a term for matters regarding the management, creation, and study of money and investments. Specifically, it deals with the questions of how and why an individual, company or government acquires the money needed – called capital in the company context – and how they spend or invest that money', 0, 'Siddharth'),
('ML-fast-track', 'As you can see clearly, the data in supervised learning is labelled, where as data in unsupervised learning is unlabelled.\r\n\r\nSemi-supervised learning: Problems where you have a large amount of input data and only some of the data is labeled, are called semi-supervised learning problems. These problems sit in between both supervised and unsupervised learning. For example, a photo archive where only some of the images are labeled, (e.g. dog, cat, person) and the majority are unlabeled.\r\nReinforcement learning: A computer program interacts with a dynamic environment in which it must perform a certain goal (such as driving a vehicle or playing a game against an opponent). The program is provided feedback in terms of rewards and punishments as it navigates its problem space.\r\nAs you can see clearly, the data in supervised learning is labelled, where as data in unsupervised learning is unlabelled.\r\n\r\nSemi-supervised learning: Problems where you have a large amount of input data and only some of the data is labeled, are called semi-supervised learning problems. These problems sit in between both supervised and unsupervised learning. For example, a photo archive where only some of the images are labeled, (e.g. dog, cat, person) and the majority are unlabeled.\r\nReinforcement learning: A computer program interacts with a dynamic environment in which it must perform a certain goal (such as driving a vehicle or playing a game against an opponent). The program is provided feedback in terms of rewards and punishments as it navigates its problem space.\r\nAs you can see clearly, the data in supervised learning is labelled, where as data in unsupervised learning is unlabelled.\r\n\r\nSemi-supervised learning: Problems where you have a large amount of input data and only some of the data is labeled, are called semi-supervised learning problems. These problems sit in between both supervised and unsupervised learning. For example, a photo archive where only some of the images are labeled, (e.g. dog, cat, person) and the majority are unlabeled.\r\nReinforcement learning: A computer program interacts with a dynamic environment in which it must perform a certain goal (such as driving a vehicle or playing a game against an opponent). The program is provided feedback in terms of rewards and punishments as it navigates its problem space.\r\nAs you can see clearly, the data in supervised learning is labelled, where as data in unsupervised learning is unlabelled.\r\n\r\nSemi-supervised learning: Problems where you have a large amount of input data and only some of the data is labeled, are called semi-supervised learning problems. These problems sit in between both supervised and unsupervised learning. For example, a photo archive where only some of the images are labeled, (e.g. dog, cat, person) and the majority are unlabeled.\r\nReinforcement learning: A computer program interacts with a dynamic environment in which it must perform a certain goal (such as driving a vehicle or playing a game against an opponent). The program is provided feedback in terms of rewards and punishments as it navigates its problem space.\r\n', 0, 'dahiya'),
('RNN', '\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.\r\nRecurrent neural network - Wikipediaen.wikipedia.org › wiki › Recurrent_neural_network\r\nA recurrent neural network (RNN) is a class of artificial neural networks where connections between nodes form a directed graph along a temporal sequence. This allows it to exhibit temporal dynamic behavior.', 0, 'Steff'),
('fire-DL', 'Deep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeledDeep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeledDeep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeledDeep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeledDeep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeledDeep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeledDeep learning is an AI function that mimics the workings of the human brain in processing data for use in detecting objects, recognizing speech, translating languages, and making decisions. Deep learning AI is able to learn without human supervision, drawing from data that is both unstructured and unlabeled', 0, 'harsh');

-- --------------------------------------------------------

--
-- Table structure for table `course-student`
--

CREATE TABLE `course-student` (
  `course` varchar(225) NOT NULL,
  `student` varchar(225) NOT NULL,
  `status` int(225) NOT NULL DEFAULT -1,
  `imgname` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course-student`
--

INSERT INTO `course-student` (`course`, `student`, `status`, `imgname`) VALUES
('ML-exceed', 'dahiya', 0, 'ml3\r\n'),
('Andre-ML', 'abc', 0, 'ml1'),
('fire-DL', 'abc', 0, 'dl1'),
('fire-DL', 'sid', 0, 'dl1'),
('fast-nodejs', 'undefined', 0, 'wb1'),
('ML-exceed', 'undefined', 0, 'ml3\r\n'),
('back-to-android', 'abc', 0, 'ad1'),
('ML-fast-track', 'sid', 0, 'ml2'),
('back-to-android', 'dahiya', 0, 'ad1'),
('fire-DL', 'dahiya', 0, 'dl1'),
('finance-core', 'undefined', 0, 'fin1'),
('finance-core', 'abcd', 0, 'fin1'),
('back-to-android', 'abcd', 0, 'ad1'),
('Andre-ML', 'abcd', 0, 'ml1'),
('ML-fast-track', 'abcd', 0, 'ml2'),
('RNN', 'undefined', 0, 'dl2'),
('Andre-ML', 'sid', 0, 'ml1'),
('back-to-android', 'sid', 0, 'ad1'),
('fast-nodejs', 'sid', 0, 'wb1'),
('RNN', 'sid', 0, 'dl2'),
('Andre-ML', 'undefined', 0, 'ml1'),
('back-to-android', 'undefined', 0, 'ad1'),
('back-to-android', 'pooja', 0, 'ad1'),
('Andre-ML', 'pooja', 0, 'ml1'),
('fire-DL', 'pooja', 0, 'dl1'),
('RNN', 'pooja', 0, 'dl2'),
('fast-nodejs', 'abc', 0, 'wb1'),
('ML-exceed', 'abc', 0, 'ml3\r\n'),
('ML-fast-track', 'abc', 0, 'ml2'),
('back-to-android', 'abs', 0, 'ad1'),
('ML-exceed', 'abs', 0, 'ml3\r\n'),
('finance-core', 'abs', 0, 'fin1'),
('Andre-ML', 'abs', 0, 'ml1'),
('ML-fast-track', 'abs', 0, 'ml2'),
('fast-nodejs', 'abs', 0, 'wb1'),
('RNN', 'abs', 0, 'dl2'),
('fire-DL', 'abs', 0, 'dl1'),
('ML-exceed', 'piyush', 0, 'ml3\r\n'),
('fast-nodejs', 'piyush', 0, 'wb1'),
('finance-core', 'piyush', 0, 'fin1'),
('finance-core', 'parshvi', 0, 'fin1'),
('RNN', 'parshvi', 0, 'dl2'),
('fire-DL', 'sickboy', 0, 'dl1'),
('back-to-android', 'sickboy', 0, 'ad1');

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
('abc', 'abc@gmail.com', 'abc', '0', 0, 'Android', 'Finance'),
('ameer', 'ameer@hmail.com', 'asd', '0', 0, '', ''),
('', '', '', '', 0, '', ''),
('ss', 'ss@gmail.com', 'ss', '0', 0, '', ''),
('pooja', 'pooja@gmail.com', 'pooja', '0\r\n', 0, 'Web-App', 'Finance'),
('sid', 'siddharth.kandola@gmail.com', 'sid', '0', 0, 'Machine-Learning', 'Deep-Learning'),
('dahiya', 'ericlala@live.fr', 'dahiya', '0', 0, 'Android', 'Deep-Learning'),
('dd', 'dd@cc.com', 'dd', '0', 0, 'Machine-Learning', 'Android'),
('d2', 'd2@hh.com', 'd2', '0', 0, 'Machine-Learning', 'Deep-Learning'),
('abcd', 'as@g.com', 'abcd', '0', 0, 'Web-App', 'Finance'),
('abs', 'abs@gg.com', 'abs', '0', 0, 'Deep-Learning', 'Web-App'),
('piyush', 'p@gg.com', 'piyush', '0', 0, 'Android', 'Web-App'),
('parshvi', 'p@jj.com', 'parshvi', '0', 0, 'Android', 'Deep-Learning'),
('testusername', 'test@gmail.com', 'test1234', '0', 0, NULL, NULL),
('sickboy', 'sick@dd.com', 'sickboy', '0', 0, 'Machine-Learning', 'Deep-Learning');

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
