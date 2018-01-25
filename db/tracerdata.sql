-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2018 at 01:35 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracerdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `cvsu_college`
--

CREATE TABLE `cvsu_college` (
  `colleges_ID` int(11) NOT NULL,
  `college_name` varchar(150) NOT NULL,
  `college_acronym` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvsu_college`
--

INSERT INTO `cvsu_college` (`colleges_ID`, `college_name`, `college_acronym`) VALUES
(1, 'College of Engineering and Information Technology', 'CEIT'),
(2, 'College of Art and Sciences', 'CAS');

-- --------------------------------------------------------

--
-- Table structure for table `cvsu_course`
--

CREATE TABLE `cvsu_course` (
  `course_ID` int(11) NOT NULL,
  `course_departmentID` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_acronym` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvsu_course`
--

INSERT INTO `cvsu_course` (`course_ID`, `course_departmentID`, `course_name`, `course_acronym`) VALUES
(1, 2, 'Bachelor of Science in Information Technology', 'BSIT'),
(2, 2, 'Bachelor of Science in Computer Science', 'BSCS'),
(3, 2, 'Bachelor of Science in Office Administration', 'BSOA');

-- --------------------------------------------------------

--
-- Table structure for table `cvsu_department`
--

CREATE TABLE `cvsu_department` (
  `department_ID` int(11) NOT NULL,
  `department_collegeID` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_acronym` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvsu_department`
--

INSERT INTO `cvsu_department` (`department_ID`, `department_collegeID`, `department_name`, `department_acronym`) VALUES
(1, 1, 'Computer Science', 'COMSCI'),
(2, 1, 'Information Technology', 'IT'),
(3, 1, 'Office Administration', 'OA');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment`
--

CREATE TABLE `forum_comment` (
  `comment_ID` int(11) NOT NULL,
  `comment_topicID` varchar(150) NOT NULL,
  `comment_userID` int(11) NOT NULL,
  `comment_content` varchar(500) NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_comment`
--

INSERT INTO `forum_comment` (`comment_ID`, `comment_topicID`, `comment_userID`, `comment_content`, `comment_date`) VALUES
(4, '20', 1, 'aaaaaaaa', '2017-10-16 12:17:55'),
(5, '20', 1, 'zxczxcxc', '2017-10-16 12:23:38'),
(6, '20', 1, 'franz\r\n', '2017-10-16 12:24:18'),
(7, '12', 1, 'zxczxc', '2017-10-16 12:28:07'),
(8, '12', 1, 'zxczxczxczxc', '2017-10-16 12:28:30'),
(9, '6', 1, 'xxxxxxxxxxxxxxxxxxxxxxxxx', '2017-10-17 14:56:43'),
(10, '6', 1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2017-10-17 15:11:21'),
(11, '2', 1, 'xcvxcvxcv', '2017-10-17 15:59:50'),
(12, '6', 2, 'teacher', '2017-10-17 16:00:33'),
(13, '20', 2, 'zxczxczxc', '2017-10-17 16:03:24'),
(14, '4', 2, 'xcvxcv', '2017-10-25 12:15:10'),
(15, '20', 2, 'asdasd', '2017-10-27 18:57:18'),
(25, '20', 2, 'darrennnnnn', '2017-11-04 19:52:04'),
(26, '20', 2, 'aaaa', '2017-11-04 19:52:26'),
(27, '1', 2, 'my teacherrr', '2017-11-04 19:54:10'),
(28, '10', 2, 'my teacher\r\n', '2017-11-04 19:54:32'),
(29, '18', 1, 'csdsdasd23423424', '2017-11-25 08:41:22'),
(30, '18', 1, 'rhemz', '2017-11-25 08:41:34'),
(32, '10', 3, '234234234', '2018-01-19 18:15:07'),
(33, '22', 3, '3123123', '2018-01-19 18:15:38'),
(34, '9', 1, 'asdasdasd', '2018-01-25 08:30:40'),
(36, '1', 1, 'asdasd', '2018-01-25 10:18:49'),
(37, '7', 1, 'asdasd', '2018-01-25 11:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comment_reply`
--

CREATE TABLE `forum_comment_reply` (
  `comment_reply_ID` int(11) NOT NULL,
  `comment_reply_parentID` int(11) NOT NULL,
  `comment_reply_userID` int(50) NOT NULL,
  `comment_reply_content` varchar(500) NOT NULL,
  `comment_reply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_comment_reply`
--

INSERT INTO `forum_comment_reply` (`comment_reply_ID`, `comment_reply_parentID`, `comment_reply_userID`, `comment_reply_content`, `comment_reply_date`) VALUES
(1, 0, 0, '35345534', '2018-01-25 10:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic`
--

CREATE TABLE `forum_topic` (
  `topic_ID` int(11) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `post_owner_id` int(11) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_content` varchar(50000) NOT NULL,
  `post_status` varchar(25) NOT NULL DEFAULT 'UNPIN'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_topic`
--

INSERT INTO `forum_topic` (`topic_ID`, `post_title`, `post_owner_id`, `post_date`, `post_content`, `post_status`) VALUES
(1, 'aaaaaaaaaaaaa', 1, '2017-11-25 08:42:00', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>\r\n', 'UNPIN'),
(2, 'werwerewr', 1, '2017-09-09 12:04:01', '<p>wrwer</p>\r\n', 'UNPIN'),
(3, 'xcvxcvxcv', 1, '2017-09-09 12:04:08', '<p>xcvxv</p>\r\n', 'UNPIN'),
(4, 'heyeeee', 1, '2017-10-11 01:48:37', '<p>asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd</p>\r\n', 'UNPIN'),
(5, 'sadasdasd', 1, '2017-10-06 18:43:23', '<p>999999999999999999999999999999999999999999999</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'UNPIN'),
(6, '22222222222222222', 2, '2017-10-11 01:35:54', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\">pop[op[op[op[op[</div>\r\n\r\n<h3 style=\"color:#aaaaaa; font-style:italic\">p[]546564sdfsdfsdf</h3>\r\n\r\n<p><strong><span dir=\"rtl\"><span style=\"background-color:#2ecc71\">cxverewr</span></span></strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'UNPIN'),
(7, 'asdasd', 1, '2017-09-09 15:45:52', '<p>asdasdasd</p>\r\n', 'UNPIN'),
(8, 'xx', 3, '2017-09-09 16:11:28', '<p>xx</p>\r\n', 'UNPIN'),
(9, '89', 3, '2017-09-09 16:14:46', '<p>987</p>\r\n', 'UNPIN'),
(10, 'sdfsdfsdf', 3, '2017-09-09 16:17:24', '<p>fsdf</p>\r\n', 'UNPIN'),
(11, 'sdfsdfsdf', 3, '2017-09-09 16:17:32', '<p>fsdf</p>\r\n', 'UNPIN'),
(12, 'sdfsdfsdf', 3, '2017-09-09 16:18:28', '<p>fsdf</p>\r\n', 'UNPIN'),
(18, '22222222222222', 3, '2018-01-13 08:22:36', '<p>ssadasdasdasd</p>\r\n', 'PIN'),
(20, 'sample', 2, '2017-10-31 04:07:52', '<h1><span style=\"font-size:14px\"><strong>xxxxxxxxxxxxxxxxxxxxxxxxxx<span style=\"color:#2c3e50\">xxxxxxxxxxxxxxxxxxxxxxxxxxxx<br />\r\nasdasdasdasd</span></strong></span></h1>\r\n\r\n<h6><span style=\"font-size:48px\"><strong>DARREN1</strong></span><br />\r\n<q><span style=\"color:#1abc9c\"><span style=\"font-family:Georgia,serif\">a</span></span></q></h6>\r\n', 'UNPIN'),
(22, 'franz', 12, '2017-10-29 10:42:05', '<p>franz</p>\r\n', 'UNPIN');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topic_likes`
--

CREATE TABLE `forum_topic_likes` (
  `topic_likes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_topic_likes`
--

INSERT INTO `forum_topic_likes` (`topic_likes_ID`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `message_send`
--

CREATE TABLE `message_send` (
  `message_ID` int(11) NOT NULL,
  `message_threadID` int(11) NOT NULL,
  `message_sendDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_content` varchar(1500) NOT NULL,
  `message_receiver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_send`
--

INSERT INTO `message_send` (`message_ID`, `message_threadID`, `message_sendDate`, `message_content`, `message_receiver`) VALUES
(1, 1, '2017-10-06 18:19:33', 'waaaaaaaa', 2),
(2, 1, '2017-10-06 18:19:28', 'meeeeeeeeeeeee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `message_send_state`
--

CREATE TABLE `message_send_state` (
  `state_ID` int(11) NOT NULL,
  `state_msgID` int(11) NOT NULL,
  `state_readerID` int(11) NOT NULL,
  `state_dateRead` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_send_state`
--

INSERT INTO `message_send_state` (`state_ID`, `state_msgID`, `state_readerID`, `state_dateRead`) VALUES
(1, 1, 2, '0000-00-00 00:00:00'),
(2, 2, 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `thread_ID` int(11) NOT NULL,
  `thread_name` varchar(150) NOT NULL,
  `thread_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`thread_ID`, `thread_name`, `thread_created`) VALUES
(1, 'row1', '2017-10-06 18:02:55'),
(2, 'row2', '2017-10-06 17:59:58'),
(3, 'row3', '2017-10-06 18:02:46'),
(4, 'row4', '2017-10-06 18:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `message_thread_participant`
--

CREATE TABLE `message_thread_participant` (
  `participant_ID` int(11) NOT NULL,
  `participant_threadID` int(11) NOT NULL,
  `participant_userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_thread_participant`
--

INSERT INTO `message_thread_participant` (`participant_ID`, `participant_threadID`, `participant_userID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 4, 1),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey_forms`
--

CREATE TABLE `survey_forms` (
  `form_id` int(11) NOT NULL,
  `form_ownerID` int(11) NOT NULL,
  `form_taken` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_forms`
--

INSERT INTO `survey_forms` (`form_id`, `form_ownerID`, `form_taken`) VALUES
(1, 1, '2017-11-26 14:34:57'),
(2, 1, '2017-11-26 14:37:33'),
(3, 1, '2017-11-26 14:39:26'),
(4, 1, '2018-01-18 09:21:56'),
(5, 1, '2018-01-18 13:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `survey_maxcount`
--

CREATE TABLE `survey_maxcount` (
  `survey_id` int(11) NOT NULL,
  `survey_ownerID` int(11) NOT NULL,
  `survey_maxattemp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_maxcount`
--

INSERT INTO `survey_maxcount` (`survey_id`, `survey_ownerID`, `survey_maxattemp`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question1`
--

CREATE TABLE `survey_question1` (
  `survey_qID` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `col1` varchar(50) NOT NULL,
  `col2` varchar(50) NOT NULL,
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question1`
--

INSERT INTO `survey_question1` (`survey_qID`, `row`, `col1`, `col2`, `survey_formID`) VALUES
(1, 1, 'U_AB_BS1', 'G_MS_MA_PHD1', 1),
(2, 2, '', 'G_MS_MA_PHD2', 1),
(3, 3, '', 'G_MS_MA_PHD3', 1),
(4, 4, 'U_AB_BS4', '', 1),
(5, 5, 'U_AB_BS5', '', 1),
(6, 6, '', 'G_MS_MA_PHD6', 1),
(7, 7, 'U_AB_BS7', '', 1),
(8, 8, '', '', 1),
(9, 9, '', 'G_MS_MA_PHD9', 1),
(10, 10, '', 'G_MS_MA_PHD10', 1),
(11, 11, 'U_AB_BS11', '', 1),
(12, 12, 'U_AB_BS12', '', 1),
(13, 13, '', 'G_MS_MA_PHD13', 1),
(14, 14, '', 'G_MS_MA_PHD14', 1),
(15, 15, 'other', 'daaaaaa', 1),
(16, 1, '', '', 2),
(17, 2, '', '', 2),
(18, 3, '', '', 2),
(19, 4, '', '', 2),
(20, 5, '', '', 2),
(21, 6, '', '', 2),
(22, 7, '', '', 2),
(23, 8, '', '', 2),
(24, 9, '', '', 2),
(25, 10, '', '', 2),
(26, 11, '', '', 2),
(27, 12, '', '', 2),
(28, 13, '', '', 2),
(29, 14, '', '', 2),
(30, 15, 'other', '99999999999999', 2),
(31, 1, '', '', 3),
(32, 2, '', '', 3),
(33, 3, '', '', 3),
(34, 4, '', '', 3),
(35, 5, '', '', 3),
(36, 6, '', '', 3),
(37, 7, '', '', 3),
(38, 8, '', '', 3),
(39, 9, '', '', 3),
(40, 10, '', '', 3),
(41, 11, '', '', 3),
(42, 12, '', '', 3),
(43, 13, '', '', 3),
(44, 14, '', '', 3),
(45, 15, 'other', 'qqqqqqq', 3),
(46, 1, 'U_AB_BS1', '', 4),
(47, 2, 'U_AB_BS2', '', 4),
(48, 3, '', 'G_MS_MA_PHD3', 4),
(49, 4, '', 'G_MS_MA_PHD4', 4),
(50, 5, 'U_AB_BS5', '', 4),
(51, 6, 'U_AB_BS6', '', 4),
(52, 7, '', 'G_MS_MA_PHD7', 4),
(53, 8, '', 'G_MS_MA_PHD8', 4),
(54, 9, 'U_AB_BS9', '', 4),
(55, 10, 'U_AB_BS10', '', 4),
(56, 11, '', 'G_MS_MA_PHD11', 4),
(57, 12, '', 'G_MS_MA_PHD12', 4),
(58, 13, 'U_AB_BS13', '', 4),
(59, 14, 'U_AB_BS14', '', 4),
(60, 15, 'other', '21214654768787', 4),
(61, 1, '', '', 5),
(62, 2, '', '', 5),
(63, 3, '', '', 5),
(64, 4, '', '', 5),
(65, 5, '', '', 5),
(66, 6, '', '', 5),
(67, 7, '', '', 5),
(68, 8, '', '', 5),
(69, 9, '', '', 5),
(70, 10, '', '', 5),
(71, 11, '', '', 5),
(72, 12, '', '', 5),
(73, 13, '', '', 5),
(74, 14, '', '', 5),
(75, 15, 'other', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question2`
--

CREATE TABLE `survey_question2` (
  `survey_qID` int(11) NOT NULL,
  `survey_row1` int(11) NOT NULL,
  `survey_col1` varchar(50) DEFAULT NULL,
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question2`
--

INSERT INTO `survey_question2` (`survey_qID`, `survey_row1`, `survey_col1`, `survey_formID`) VALUES
(1, 1, 'yes', 1),
(2, 2, 'yes', 1),
(3, 3, 'yes', 1),
(4, 4, 'yes', 1),
(5, 5, 'no', 1),
(6, 1, 'no', 2),
(7, 2, 'no', 2),
(8, 3, 'no', 2),
(9, 4, 'no', 2),
(10, 5, 'no', 2),
(11, 1, 'no', 3),
(12, 2, 'no', 3),
(13, 3, 'no', 3),
(14, 4, 'no', 3),
(15, 5, 'qqqq', 3),
(16, 1, 'yes', 4),
(17, 2, 'yes', 4),
(18, 3, 'yes', 4),
(19, 4, 'yes', 4),
(20, 5, '', 4),
(21, 1, 'no', 5),
(22, 2, 'no', 5),
(23, 3, 'no', 5),
(24, 4, 'no', 5),
(25, 5, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question3`
--

CREATE TABLE `survey_question3` (
  `survey_qID` int(11) NOT NULL,
  `row` int(11) NOT NULL,
  `col1` varchar(1) DEFAULT '0',
  `col2` varchar(1) NOT NULL DEFAULT '0',
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question3`
--

INSERT INTO `survey_question3` (`survey_qID`, `row`, `col1`, `col2`, `survey_formID`) VALUES
(1, 1, '1', '1', 1),
(2, 2, '1', '1', 1),
(3, 3, '1', '1', 1),
(4, 4, '1', '1', 1),
(5, 1, '', '', 2),
(6, 2, '', '', 2),
(7, 3, '', '', 2),
(8, 4, '', '', 2),
(9, 1, '', '', 3),
(10, 2, '', '', 3),
(11, 3, '', '', 3),
(12, 4, '', '', 3),
(13, 1, '1', '', 4),
(14, 2, '1', '', 4),
(15, 3, '1', '', 4),
(16, 4, '1', '', 4),
(17, 1, '', '', 5),
(18, 2, '', '', 5),
(19, 3, '', '', 5),
(20, 4, '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question4`
--

CREATE TABLE `survey_question4` (
  `survey_qID` int(11) NOT NULL,
  `row1` int(11) NOT NULL,
  `col1` varchar(1) NOT NULL DEFAULT '0',
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question4`
--

INSERT INTO `survey_question4` (`survey_qID`, `row1`, `col1`, `survey_formID`) VALUES
(1, 1, '1', 1),
(2, 2, '1', 1),
(3, 3, '1', 1),
(4, 4, '1', 1),
(5, 5, '1', 1),
(6, 6, '1', 1),
(7, 1, '', 2),
(8, 2, '', 2),
(9, 3, '', 2),
(10, 4, '', 2),
(11, 5, '', 2),
(12, 6, '', 2),
(13, 1, '', 3),
(14, 2, '', 3),
(15, 3, '', 3),
(16, 4, '', 3),
(17, 5, '', 3),
(18, 6, '', 3),
(19, 1, '', 4),
(20, 2, '', 4),
(21, 3, '', 4),
(22, 4, '1', 4),
(23, 5, '1', 4),
(24, 6, '1', 4),
(25, 1, '', 5),
(26, 2, '', 5),
(27, 3, '', 5),
(28, 4, '', 5),
(29, 5, '', 5),
(30, 6, '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question5`
--

CREATE TABLE `survey_question5` (
  `survey_qID` int(11) NOT NULL,
  `ans` varchar(5) NOT NULL,
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question5`
--

INSERT INTO `survey_question5` (`survey_qID`, `ans`, `survey_formID`) VALUES
(1, 'no', 1),
(2, 'yes', 2),
(3, 'yes', 3),
(4, 'yes', 4),
(5, 'yes', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question6`
--

CREATE TABLE `survey_question6` (
  `survey_qID` int(11) NOT NULL,
  `ans` varchar(10) NOT NULL,
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question6`
--

INSERT INTO `survey_question6` (`survey_qID`, `ans`, `survey_formID`) VALUES
(1, 'rop', 1),
(2, 'self', 2),
(3, 'con', 3),
(4, 'temp', 4),
(5, 'cas', 0),
(6, 'rop', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question7`
--

CREATE TABLE `survey_question7` (
  `survey_qID` int(11) NOT NULL,
  `survey_ans` varchar(1) NOT NULL DEFAULT '0',
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question7`
--

INSERT INTO `survey_question7` (`survey_qID`, `survey_ans`, `survey_formID`) VALUES
(1, '1', 1),
(2, '0', 2),
(3, '0', 3),
(4, '1', 4),
(5, '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question8`
--

CREATE TABLE `survey_question8` (
  `survey_qID` int(11) NOT NULL,
  `row1` int(11) NOT NULL,
  `col1` varchar(50) NOT NULL,
  `survey_formID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question8`
--

INSERT INTO `survey_question8` (`survey_qID`, `row1`, `col1`, `survey_formID`) VALUES
(1, 1, '1', 1),
(2, 2, '1', 1),
(3, 3, '1', 1),
(4, 4, '1', 1),
(5, 5, '1', 1),
(6, 6, 'daaaaaaaa', 1),
(7, 1, '1', 4),
(8, 2, '', 4),
(9, 3, '1', 4),
(10, 4, '', 4),
(11, 5, '1', 4),
(12, 6, '', 4),
(13, 1, '', 5),
(14, 2, '', 5),
(15, 3, '', 5),
(16, 4, '1', 5),
(17, 5, '', 5),
(18, 6, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `user_ID` int(11) NOT NULL,
  `user_level` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`user_ID`, `user_level`, `user_name`, `user_password`, `user_created`) VALUES
(0, 0, 'unregister', 'unregister', '2017-10-21 16:35:35'),
(1, 1, '201310656', 'M8+Cpt+zltZs3QpomFLRjEFCGvI0VGC+jjJzXH32Mtw=', '2017-10-25 06:08:39'),
(2, 2, 'teacher', '6Bgzqn4mnCPjx432mpfOVbU87Mi3sy29KRe8A1l+2X0=', '2017-09-06 10:18:33'),
(3, 3, 'admin', 'QrUgcNdRjaE74hfEIeThKa/RaqA9N/KpBI+X7VeiyfE=', '2017-09-06 10:23:49'),
(12, 1, '123456', 'swHPJ7q+RfGnh4kp774FrzOW/hnKWeRhBNhK0xS/YtM=', '2017-10-29 10:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin_detail`
--

CREATE TABLE `user_admin_detail` (
  `admin_ID` int(11) NOT NULL,
  `admin_userID` int(11) NOT NULL,
  `admin_img` varchar(50) NOT NULL DEFAULT 'temp.gif',
  `admin_fName` varchar(100) NOT NULL,
  `admin_mName` varchar(25) NOT NULL,
  `admin_lName` varchar(50) NOT NULL,
  `admin_address` varchar(250) NOT NULL,
  `admin_status` varchar(10) NOT NULL DEFAULT 'unregister',
  `admin_gender` varchar(1) NOT NULL,
  `admin_dob` date NOT NULL,
  `admin_contact` varchar(11) NOT NULL,
  `admin_civilStat` varchar(25) NOT NULL,
  `admin_secretquestion` varchar(250) NOT NULL,
  `admin_secretanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin_detail`
--

INSERT INTO `user_admin_detail` (`admin_ID`, `admin_userID`, `admin_img`, `admin_fName`, `admin_mName`, `admin_lName`, `admin_address`, `admin_status`, `admin_gender`, `admin_dob`, `admin_contact`, `admin_civilStat`, `admin_secretquestion`, `admin_secretanswer`) VALUES
(1, 3, 'temp.gif', 'admin', 'admin', 'admin', 'Blk 38 Lot 11 Phase 2 b Southville 2 TMC', 'register', 'M', '0000-00-00', '09999999999', 'Single', '', ''),
(2, 0, 'temp.gif', 'admin', 'admin', 'admin', 'Blk 38 Lot 11 Phase 2 b Southville 2 TMC', 'unregister', 'M', '0000-00-00', '09999999999', 'Single', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `level_ID` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`level_ID`, `level_name`) VALUES
(0, 'unregister'),
(1, 'student'),
(2, 'teacher'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `notif_ID` int(11) NOT NULL,
  `notif_typeID` int(11) NOT NULL,
  `notif_topicID` int(11) NOT NULL,
  `notif_userID` int(11) NOT NULL,
  `notif_receiverID` int(11) NOT NULL,
  `notif_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notif_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notification`
--

INSERT INTO `user_notification` (`notif_ID`, `notif_typeID`, `notif_topicID`, `notif_userID`, `notif_receiverID`, `notif_date`, `notif_state`) VALUES
(1, 3, 22, 1, 2, '2017-11-04 19:04:38', 0),
(4, 3, 1, 2, 1, '2017-11-04 19:54:10', 0),
(5, 3, 10, 2, 3, '2017-11-04 19:54:32', 0),
(6, 3, 18, 1, 3, '2017-11-25 08:41:22', 0),
(7, 3, 18, 1, 3, '2017-11-25 08:41:34', 0),
(8, 3, 22, 3, 12, '2018-01-19 18:15:38', 0),
(9, 3, 9, 1, 3, '2018-01-25 08:30:41', 0),
(10, 3, 9, 1, 3, '2018-01-25 08:30:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notif_state`
--

CREATE TABLE `user_notif_state` (
  `status_ID` int(11) NOT NULL,
  `status_Desc` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notif_state`
--

INSERT INTO `user_notif_state` (`status_ID`, `status_Desc`) VALUES
(0, 'UNREAD'),
(1, 'READ');

-- --------------------------------------------------------

--
-- Table structure for table `user_notif_type`
--

CREATE TABLE `user_notif_type` (
  `type_ID` int(11) NOT NULL,
  `type_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notif_type`
--

INSERT INTO `user_notif_type` (`type_ID`, `type_Name`) VALUES
(1, 'Login'),
(2, 'Like'),
(3, 'Comment'),
(4, 'Post');

-- --------------------------------------------------------

--
-- Table structure for table `user_student_detail`
--

CREATE TABLE `user_student_detail` (
  `student_ID` int(11) NOT NULL,
  `student_userID` int(11) NOT NULL,
  `student_img` varchar(150) NOT NULL DEFAULT 'temp.gif',
  `student_IDNumber` int(11) NOT NULL,
  `student_fName` varchar(100) NOT NULL,
  `student_mName` varchar(25) NOT NULL,
  `student_lName` varchar(50) NOT NULL,
  `student_address` varchar(250) NOT NULL,
  `student_civilStat` varchar(25) NOT NULL,
  `student_dob` date NOT NULL,
  `student_gender` varchar(1) NOT NULL,
  `student_contact` varchar(11) NOT NULL,
  `student_admission` date NOT NULL,
  `student_year_grad` date NOT NULL,
  `student_department` varchar(100) NOT NULL,
  `student_status` varchar(10) NOT NULL DEFAULT 'unregister',
  `student_secretquestion` varchar(250) NOT NULL,
  `student_secretanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_student_detail`
--

INSERT INTO `user_student_detail` (`student_ID`, `student_userID`, `student_img`, `student_IDNumber`, `student_fName`, `student_mName`, `student_lName`, `student_address`, `student_civilStat`, `student_dob`, `student_gender`, `student_contact`, `student_admission`, `student_year_grad`, `student_department`, `student_status`, `student_secretquestion`, `student_secretanswer`) VALUES
(1, 1, 'op.png', 201310656, 'Rhalp Darren ', 'R', 'Cabrera', 'Blk 38 lot 11', 'Single', '1997-09-26', 'M', '09888888888', '2013-11-01', '2018-11-29', 'IT', 'register', 'ano ang pangalan ko ?', 'darren'),
(2, 0, 'temp.gif', 201410209, 'Mardical', '', 'del Mundo', 'Indang', 'Single', '1997-09-26', 'F', '09169158798', '2017-09-30', '2017-09-12', 'COMSCI', 'register', '', ''),
(13, 0, 'temp.gif', 201410259, 'Ria', '', 'Jimenez', 'Indang', 'Single', '1997-09-26', 'F', '09169158798', '2017-09-30', '2017-09-02', 'OA', 'unregister', '', ''),
(16, 0, 'temp.gif', 200901201, 'Justine', '', 'De-guzman', 'Indang', 'Single', '1997-09-26', 'M', '09169158798', '2017-09-30', '2017-02-00', 'COMSCI', 'unregister', '', ''),
(17, 0, 'temp.gif', 201310253, 'Andrea', 'L', 'Labbres', 'Indang', 'Single', '1997-09-26', 'F', '09169158798', '2017-09-30', '2017-01-00', 'COMSCI', 'unregister', '', ''),
(23, 12, 'temp.gif', 123456, 'franz', 'r', 'cabrera', 'blk 38 lot 11 ph2b', '', '0000-00-00', '', '', '2013-01-01', '2017-04-05', 'IT', 'register', 'franz', 'cabrera'),
(24, 0, 'temp.gif', 123456, 'sda', 'R', 'dasd', 'asd', '', '0000-00-00', '', '', '2017-10-03', '2017-10-14', 'COMSCI', 'unregister', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_teacher_detail`
--

CREATE TABLE `user_teacher_detail` (
  `teacher_ID` int(11) NOT NULL,
  `teacher_userID` int(11) NOT NULL,
  `teacher_img` varchar(250) NOT NULL DEFAULT 'temp.gif',
  `teacher_facultyID` varchar(50) NOT NULL,
  `teacher_fName` varchar(100) NOT NULL,
  `teacher_mName` varchar(25) NOT NULL,
  `teacher_lName` varchar(50) NOT NULL,
  `teacher_gender` varchar(1) NOT NULL,
  `teacher_dob` date NOT NULL,
  `teacher_contact` varchar(11) NOT NULL,
  `teacher_address` varchar(250) NOT NULL,
  `teacher_civilStat` varchar(25) NOT NULL,
  `teacher_department` int(11) NOT NULL,
  `teacher_status` varchar(10) NOT NULL DEFAULT 'unregister',
  `teacher_secretquestion` varchar(250) NOT NULL,
  `teacher_secretanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_teacher_detail`
--

INSERT INTO `user_teacher_detail` (`teacher_ID`, `teacher_userID`, `teacher_img`, `teacher_facultyID`, `teacher_fName`, `teacher_mName`, `teacher_lName`, `teacher_gender`, `teacher_dob`, `teacher_contact`, `teacher_address`, `teacher_civilStat`, `teacher_department`, `teacher_status`, `teacher_secretquestion`, `teacher_secretanswer`) VALUES
(1, 2, 'temp.gif', 'a12s3d', 'teacher', 't', 'teacher', 'M', '1997-09-26', '09999999999', 'Blk 38 Lot 11 Phase 2 b Southville 2 TMC', 'Single', 2, 'register', 'zxczxczxc', '3333'),
(3, 2, 'temp.gif', '123', 'sad', 'asd', 'asd', '', '0000-00-00', '', 'asdasd', '', 0, 'register', '', ''),
(4, 2, 'temp.gif', '231', 'asd', 'dd', 'ss', '', '0000-00-00', '', 'aa', '', 0, 'register', '', ''),
(5, 2, 'temp.gif', '22', 'sdfs', 'sf', 'cx', '', '0000-00-00', '', 'xcv', '', 0, 'register', '', ''),
(6, 2, 'temp.gif', '111', 'a', 'asd', 'a', '', '0000-00-00', '', 'a', '', 0, 'register', '', ''),
(7, 2, 'temp.gif', '1', 's', 's', 's', '', '0000-00-00', '', 's', '', 2, 'register', '', ''),
(8, 2, 'temp.gif', '123', 'asdasd', 'x', 'dasda', '', '0000-00-00', '', '234234', '', 3, 'register', '', ''),
(9, 2, 'temp.gif', '6456456', 'ff', 'fgg', 'ccc', '', '0000-00-00', '', 'gggdfg8798980', '', 2, 'register', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `view_counter`
--

CREATE TABLE `view_counter` (
  `view_ID` int(11) NOT NULL,
  `view_topicID` int(11) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_counter`
--

INSERT INTO `view_counter` (`view_ID`, `view_topicID`, `view_count`) VALUES
(1, 1, 62),
(2, 2, 154),
(3, 3, 21),
(4, 4, 21),
(5, 5, 63),
(6, 6, 141),
(19, 22, 15),
(20, 23, 1),
(21, 24, 1),
(22, 25, 2),
(23, 26, 16),
(24, 27, 24),
(28, 1, 70),
(34, 29, 1),
(36, 1, 48),
(37, 2, 3),
(38, 3, 5),
(39, 4, 15),
(40, 5, 5),
(41, 6, 50),
(47, 12, 7),
(53, 18, 22),
(55, 20, 134),
(57, 22, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cvsu_college`
--
ALTER TABLE `cvsu_college`
  ADD PRIMARY KEY (`colleges_ID`);

--
-- Indexes for table `cvsu_course`
--
ALTER TABLE `cvsu_course`
  ADD PRIMARY KEY (`course_ID`),
  ADD KEY `course_departmentID` (`course_departmentID`);

--
-- Indexes for table `cvsu_department`
--
ALTER TABLE `cvsu_department`
  ADD PRIMARY KEY (`department_ID`),
  ADD KEY `department_collegeID` (`department_collegeID`);

--
-- Indexes for table `forum_comment`
--
ALTER TABLE `forum_comment`
  ADD PRIMARY KEY (`comment_ID`);

--
-- Indexes for table `forum_comment_reply`
--
ALTER TABLE `forum_comment_reply`
  ADD PRIMARY KEY (`comment_reply_ID`);

--
-- Indexes for table `forum_topic`
--
ALTER TABLE `forum_topic`
  ADD PRIMARY KEY (`topic_ID`);

--
-- Indexes for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  ADD PRIMARY KEY (`topic_likes_ID`);

--
-- Indexes for table `message_send`
--
ALTER TABLE `message_send`
  ADD PRIMARY KEY (`message_ID`);

--
-- Indexes for table `message_send_state`
--
ALTER TABLE `message_send_state`
  ADD PRIMARY KEY (`state_ID`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`thread_ID`);

--
-- Indexes for table `message_thread_participant`
--
ALTER TABLE `message_thread_participant`
  ADD PRIMARY KEY (`participant_ID`);

--
-- Indexes for table `survey_forms`
--
ALTER TABLE `survey_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `survey_maxcount`
--
ALTER TABLE `survey_maxcount`
  ADD PRIMARY KEY (`survey_id`),
  ADD UNIQUE KEY `survey_ownerID` (`survey_ownerID`);

--
-- Indexes for table `survey_question1`
--
ALTER TABLE `survey_question1`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question2`
--
ALTER TABLE `survey_question2`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question3`
--
ALTER TABLE `survey_question3`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question4`
--
ALTER TABLE `survey_question4`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question5`
--
ALTER TABLE `survey_question5`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question6`
--
ALTER TABLE `survey_question6`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question7`
--
ALTER TABLE `survey_question7`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `survey_question8`
--
ALTER TABLE `survey_question8`
  ADD PRIMARY KEY (`survey_qID`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_ID`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_admin_detail`
--
ALTER TABLE `user_admin_detail`
  ADD PRIMARY KEY (`admin_ID`),
  ADD KEY `admin_userID` (`admin_userID`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`level_ID`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`notif_ID`);

--
-- Indexes for table `user_notif_state`
--
ALTER TABLE `user_notif_state`
  ADD PRIMARY KEY (`status_ID`);

--
-- Indexes for table `user_notif_type`
--
ALTER TABLE `user_notif_type`
  ADD PRIMARY KEY (`type_ID`);

--
-- Indexes for table `user_student_detail`
--
ALTER TABLE `user_student_detail`
  ADD PRIMARY KEY (`student_ID`),
  ADD KEY `student_userID` (`student_userID`);

--
-- Indexes for table `user_teacher_detail`
--
ALTER TABLE `user_teacher_detail`
  ADD PRIMARY KEY (`teacher_ID`),
  ADD KEY `teacher_userID` (`teacher_userID`);

--
-- Indexes for table `view_counter`
--
ALTER TABLE `view_counter`
  ADD PRIMARY KEY (`view_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cvsu_college`
--
ALTER TABLE `cvsu_college`
  MODIFY `colleges_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cvsu_course`
--
ALTER TABLE `cvsu_course`
  MODIFY `course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cvsu_department`
--
ALTER TABLE `cvsu_department`
  MODIFY `department_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `forum_comment`
--
ALTER TABLE `forum_comment`
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `forum_comment_reply`
--
ALTER TABLE `forum_comment_reply`
  MODIFY `comment_reply_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `forum_topic`
--
ALTER TABLE `forum_topic`
  MODIFY `topic_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `forum_topic_likes`
--
ALTER TABLE `forum_topic_likes`
  MODIFY `topic_likes_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `message_send`
--
ALTER TABLE `message_send`
  MODIFY `message_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message_send_state`
--
ALTER TABLE `message_send_state`
  MODIFY `state_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `thread_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message_thread_participant`
--
ALTER TABLE `message_thread_participant`
  MODIFY `participant_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `survey_forms`
--
ALTER TABLE `survey_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `survey_maxcount`
--
ALTER TABLE `survey_maxcount`
  MODIFY `survey_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `survey_question1`
--
ALTER TABLE `survey_question1`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `survey_question2`
--
ALTER TABLE `survey_question2`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `survey_question3`
--
ALTER TABLE `survey_question3`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `survey_question4`
--
ALTER TABLE `survey_question4`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `survey_question5`
--
ALTER TABLE `survey_question5`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `survey_question6`
--
ALTER TABLE `survey_question6`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `survey_question7`
--
ALTER TABLE `survey_question7`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `survey_question8`
--
ALTER TABLE `survey_question8`
  MODIFY `survey_qID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_admin_detail`
--
ALTER TABLE `user_admin_detail`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `level_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `notif_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_notif_state`
--
ALTER TABLE `user_notif_state`
  MODIFY `status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_notif_type`
--
ALTER TABLE `user_notif_type`
  MODIFY `type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_student_detail`
--
ALTER TABLE `user_student_detail`
  MODIFY `student_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_teacher_detail`
--
ALTER TABLE `user_teacher_detail`
  MODIFY `teacher_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `view_counter`
--
ALTER TABLE `view_counter`
  MODIFY `view_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cvsu_course`
--
ALTER TABLE `cvsu_course`
  ADD CONSTRAINT `cvsu_course_ibfk_1` FOREIGN KEY (`course_departmentID`) REFERENCES `cvsu_department` (`department_ID`),
  ADD CONSTRAINT `cvsu_course_ibfk_2` FOREIGN KEY (`course_departmentID`) REFERENCES `cvsu_department` (`department_ID`);

--
-- Constraints for table `cvsu_department`
--
ALTER TABLE `cvsu_department`
  ADD CONSTRAINT `cvsu_department_ibfk_1` FOREIGN KEY (`department_collegeID`) REFERENCES `cvsu_college` (`colleges_ID`);

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`user_level`) REFERENCES `user_level` (`level_ID`);

--
-- Constraints for table `user_admin_detail`
--
ALTER TABLE `user_admin_detail`
  ADD CONSTRAINT `user_admin_detail_ibfk_1` FOREIGN KEY (`admin_userID`) REFERENCES `user_account` (`user_ID`);

--
-- Constraints for table `user_student_detail`
--
ALTER TABLE `user_student_detail`
  ADD CONSTRAINT `user_student_detail_ibfk_1` FOREIGN KEY (`student_userID`) REFERENCES `user_account` (`user_ID`),
  ADD CONSTRAINT `user_student_detail_ibfk_2` FOREIGN KEY (`student_userID`) REFERENCES `user_account` (`user_ID`);

--
-- Constraints for table `user_teacher_detail`
--
ALTER TABLE `user_teacher_detail`
  ADD CONSTRAINT `user_teacher_detail_ibfk_1` FOREIGN KEY (`teacher_userID`) REFERENCES `user_account` (`user_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
