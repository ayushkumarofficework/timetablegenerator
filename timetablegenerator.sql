-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2016 at 10:20 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timetablegenerator`
--

-- --------------------------------------------------------

--
-- Table structure for table `facultyadvisors`
--

CREATE TABLE IF NOT EXISTS `facultyadvisors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `semester` int(1) NOT NULL,
  `branch` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `facultyadvisors`
--

INSERT INTO `facultyadvisors` (`id`, `name`, `email`, `password`, `semester`, `branch`) VALUES
(1, 'Ayush Kumar', 'abhiayush.kumar19@gmail.com', 'naninana', 4, 'cse'),
(2, 'piyush', 'piyush@gmail.com', 'ayush5583', 3, 'me'),
(3, 'Basudev', 'basudev@gmail.com', 'hahahehe', 3, 'Meta');

-- --------------------------------------------------------

--
-- Table structure for table `teacherbysemester`
--

CREATE TABLE IF NOT EXISTS `teacherbysemester` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `semester` int(1) NOT NULL,
  `teacher_busy_time` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `teacherbysemester`
--

INSERT INTO `teacherbysemester` (`teacher_id`, `teacher_code`, `teacher_name`, `subject`, `semester`, `teacher_busy_time`) VALUES
(37, 'cse1', 'kblakdc', 'phy', 3, ' ;1; ;9;'),
(38, '090', 'ayush', 'mjkh', 4, ' ;1; ;9; ;17; ;25; ;33;');

-- --------------------------------------------------------

--
-- Table structure for table `teacherseven`
--

CREATE TABLE IF NOT EXISTS `teacherseven` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_busy_time` varchar(200) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `teacherseven`
--

INSERT INTO `teacherseven` (`teacher_id`, `teacher_code`, `teacher_name`, `teacher_busy_time`) VALUES
(31, 'cse1', 'Mr pramanik', ''),
(32, 'cse2', 'Ms arpita', ''),
(33, 'cse3', 'Mr bn singh', ''),
(34, 'cse4', 'Mr pn singh', ''),
(35, 'cse5', 'Mr rn singh', ''),
(36, '', '', ''),
(37, '090', 'ayush', ';1;;9;;17;;25;;33;');

-- --------------------------------------------------------

--
-- Table structure for table `teachersodd`
--

CREATE TABLE IF NOT EXISTS `teachersodd` (
  `teacher_id` int(10) NOT NULL AUTO_INCREMENT,
  `teacher_code` varchar(11) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_busy_time` varchar(100) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `teachersodd`
--

INSERT INTO `teachersodd` (`teacher_id`, `teacher_code`, `teacher_name`, `teacher_busy_time`) VALUES
(5, 'cse1', 'kblakdc', ';1;;9;');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch` varchar(10) NOT NULL,
  `semester` int(1) NOT NULL,
  `day` varchar(10) NOT NULL,
  `period1` varchar(200) NOT NULL,
  `period2` varchar(200) NOT NULL,
  `period3` varchar(200) NOT NULL,
  `period4` varchar(200) NOT NULL,
  `period5` varchar(200) NOT NULL,
  `period6` varchar(200) NOT NULL,
  `period7` varchar(200) NOT NULL,
  `period8` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `branch`, `semester`, `day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`, `period7`, `period8`) VALUES
(91, 'Meta', 3, 'Mon', 'phy kblakdc', '---', '---', '---', '---', '---', '---', '---'),
(92, 'Meta', 3, 'Tue', 'phy kblakdc', '---', '---', '---', '---', '---', '---', '---'),
(93, 'Meta', 3, 'Wed', '---', '---', '---', '---', '---', '---', '---', '---'),
(94, 'Meta', 3, 'Thu', '---', '---', '---', '---', '---', '---', '---', '---'),
(95, 'Meta', 3, 'Fri', '---', '---', '---', '---', '---', '---', '---', '---'),
(96, 'cse', 4, 'Mon', 'mjkh ayush', '---', '---', '---', '---', '---', '---', '---'),
(97, 'cse', 4, 'Tue', 'mjkh ayush', '---', '---', '---', '---', '---', '---', '---'),
(98, 'cse', 4, 'Wed', 'mjkh ayush', '---', '---', '---', '---', '---', '---', '---'),
(99, 'cse', 4, 'Thu', 'mjkh ayush', '---', '---', '---', '---', '---', '---', '---'),
(100, 'cse', 4, 'Fri', 'mjkh ayush', '---', '---', '---', '---', '---', '---', '---');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
