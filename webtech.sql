-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 03:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `nname` varchar(100) NOT NULL,
  `ques` varchar(100) NOT NULL,
  `ans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `nname`, `ques`, `ans`) VALUES
(1, 'john', 'what is the full formate of ICT', 'information and communication technology'),
(5, 'john', 'What is maditaion?', 'nothing but consentration'),
(7, 'john', 'What is maditaion?', 'intrigation of consentretion');

-- --------------------------------------------------------

--
-- Table structure for table `available`
--

CREATE TABLE `available` (
  `id` int(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `class` int(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `tuition_provider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `available`
--

INSERT INTO `available` (`id`, `area`, `class`, `subject`, `tuition_provider`) VALUES
(1, 'Mirpur', 8, 'Math', 'Rasel'),
(2, 'Banani', 9, 'Accounting', 'Iqbal'),
(3, 'Kuril', 10, 'all', 'Hasan');

-- --------------------------------------------------------

--
-- Table structure for table `cta`
--

CREATE TABLE `cta` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `complain` varchar(350) NOT NULL,
  `reply` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cta`
--

INSERT INTO `cta` (`id`, `name`, `complain`, `reply`) VALUES
(13, 'Ratul', 'yo', 'hi'),
(14, 'Ratul', 'yolo', 'yzmkcv'),
(20, 'Ratul', 'My server is down', 'Fixing'),
(22, 'Robert', 'Reset', 'Done'),
(23, 'Ratul', 'Bug', 'Looking for problem'),
(25, 'Robert', 'network error', ''),
(26, 'ratN', 'i need a doctor', '');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `question` varchar(3500) NOT NULL,
  `date` date NOT NULL,
  `teacher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`, `question`, `date`, `teacher_name`) VALUES
(8, 'john', 'What is the full form of BTCL', '2020-05-17', 'linkon');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `teacher_name` varchar(350) NOT NULL,
  `student_text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `name`, `grade`, `date`, `teacher_name`, `student_text`) VALUES
(2, 'Tanvir', 'B+', '2020-04-08', 'Ratul', ''),
(3, 'john', 'A-', '2020-04-08', 'Ratul', ''),
(5, 'Arnob', 'D', '2020-04-08', 'Robert', ''),
(6, 'john', 'B', '2020-05-08', 'Robert', ''),
(7, 'Gin', 'A+', '2020-05-13', 'Ratul', '');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file` varchar(350) NOT NULL,
  `date` date NOT NULL,
  `teacher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `name`, `file`, `date`, `teacher_name`) VALUES
(1, 'Tanvir', 'upload/Literature Reveiw_JSW_evolution.pdf', '2020-04-17', 'linkon'),
(2, 'Arnob', 'upload/2.pdf', '2020-04-17', 'abraham'),
(3, 'Robi', 'upload/3.pdf', '2020-04-17', 'ubama'),
(4, 'Lilou', 'upload/WEBTECH FINAL TERM EVALUATION NOTICE -F.pdf', '2020-05-08', 'hasina'),
(5, 'Leo', 'upload/Finished Project Report - Final Term - Fall 19-20(1).docx', '2020-05-10', 'bilgates'),
(11, 'ash', 'upload/2.pdf', '2020-04-26', 'ratN');

-- --------------------------------------------------------

--
-- Table structure for table `offered`
--

CREATE TABLE `offered` (
  `id` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `class` int(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `salary` int(200) NOT NULL,
  `tuition_provider` varchar(50) NOT NULL,
  `teacher_name` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offered`
--

INSERT INTO `offered` (`id`, `area`, `class`, `subject`, `salary`, `tuition_provider`, `teacher_name`) VALUES
(1, 'Agargaon', 9, 'English', 3000, 'Sagar', 'Ratul'),
(2, 'Gulshan', 4, 'all', 4000, 'Emon', 'Ratul'),
(3, 'Farmgate', 10, 'Biology', 2500, 'Shakil', 'Robert');

-- --------------------------------------------------------

--
-- Table structure for table `pnotices`
--

CREATE TABLE `pnotices` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `notice` varchar(350) NOT NULL,
  `date` date NOT NULL,
  `teacher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pnotices`
--

INSERT INTO `pnotices` (`id`, `name`, `notice`, `date`, `teacher_name`) VALUES
(2, 'Robi', 'I will be late', '2020-04-08', ''),
(3, 'Tanvir', 'I am out of city', '2020-04-08', ''),
(4, 'Ayon', 'I will be on time', '2020-05-08', ''),
(5, 'john', 'wait for a while', '2020-05-14', 'abraham'),
(6, 'john', 'I\'ll call you', '2020-05-24', 'linkon'),
(23, 'emon', 'here i go with this notice', '2020-01-02', 'ratN');

-- --------------------------------------------------------

--
-- Table structure for table `provided_tuitions`
--

CREATE TABLE `provided_tuitions` (
  `sequences` int(10) NOT NULL,
  `Tutor_Name` varchar(50) NOT NULL,
  `Student_Name` varchar(50) NOT NULL,
  `Class_of_Student` varchar(50) NOT NULL,
  `Subjects_To_Provide` varchar(200) NOT NULL,
  `Area_of_Tuition` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provided_tuitions`
--

INSERT INTO `provided_tuitions` (`sequences`, `Tutor_Name`, `Student_Name`, `Class_of_Student`, `Subjects_To_Provide`, `Area_of_Tuition`) VALUES
(1, 'RatuL', 'Mahin', 'SSC', 'English,Maths,Chemistry,ICT', 'Mirpur-11'),
(2, 'Rayhan', 'Arnob', 'BSc', 'IELTS', 'Banasree,Dhaka'),
(3, 'SAJID', 'Wajid', 'Std-9', 'Bangla,Biology', 'Mohammadpur'),
(6, 'Mozammel_Haque', 'Danny_morrison', 'BSc', 'C#', 'Badda,dhaka'),
(7, 'cracksimon', 'sarah', 'std-10', 'english,religion,social science,bangla', 'nikunja-2');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `review` varchar(350) NOT NULL,
  `ratings` varchar(50) NOT NULL,
  `teacher_name` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `name`, `review`, `ratings`, `teacher_name`) VALUES
(1, 'Emon', 'good', '5', 'Ratul'),
(2, 'Arnob', 'average', '3', 'Robert'),
(3, 'Rasel', 'fair', '4', 'Robert'),
(4, 'Gin', 'Excellent', '5', 'Ratul'),
(5, 'john', 'very good', '5', 'abraham');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `ID` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `type` varchar(15) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `education` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `fname`, `username`, `password`, `email`, `type`, `gender`, `education`) VALUES
(3, 'Emon Iqbal', 'iEmon', '232311', 'rasjbii@gmail.com', 'tp', 'MALE', 'SSC,HSC,BSC'),
(36, 'Alina Rahman', 'ALina', '123123', 'Alina01i@gmail.com', 'student', 'FEMALE', 'SSC'),
(40, 'Mash Mortaza', 'Mash', '232323', 'asdf@gmail.com', 'tp', 'MALE', 'SSC,HSC,BSC'),
(68, 'Iffat Iqbal', 'Iffat', 'if1212', 'riktum@gmail.com', 'teacher', 'FEMALE', 'BSc'),
(78, 'Rashid Khan', 'rashid', 'rash5465', 'rash@gmail.com', 'admin', 'MALE', 'SSC'),
(95, 'Emon', 'Emon', '212121', 'rasjbii@gmail.com', 'tp', 'MALE', 'BSc.'),
(101, 'rasel rahman', 'rash', 'ras123', 'ras@yahoo.com', 'tp', 'MALE', 'SSC,HSC');

-- --------------------------------------------------------

--
-- Table structure for table `rnotices`
--

CREATE TABLE `rnotices` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `notice` varchar(350) NOT NULL,
  `date` date NOT NULL,
  `teacher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rnotices`
--

INSERT INTO `rnotices` (`id`, `name`, `notice`, `date`, `teacher_name`) VALUES
(1, 'Arnob', 'Sir don\'t come today', '2020-04-08', ''),
(2, 'Ayon', 'Sir come an hour later', '2020-04-08', ''),
(3, 'john', 'thank you sir', '0000-00-00', 'Ratul'),
(4, 'john', 'okay', '0000-00-00', 'Ratul');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` int(50) NOT NULL,
  `teacher_name` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `name`, `salary`, `teacher_name`) VALUES
(1, 'Rasel', 4500, 'Ratul'),
(2, 'Rumel', 4000, 'Robert'),
(3, 'Emon', 1300, 'Ratul'),
(4, 'Arnob', 3700, 'Robert'),
(5, 'Saikat', 2000, 'Ratul'),
(6, 'Abir', 3000, 'Robert'),
(8, 'xyz', 3338, 'Ratul'),
(9, 'Faruk', 1500, 'Robert'),
(123, 'adrian', 12323, 'ratN'),
(124, 'badrinath', 12121, 'ratN');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `time` int(50) NOT NULL,
  `teacher_name` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `name`, `day`, `time`, `teacher_name`) VALUES
(1, 'Arnob', 'Sunday', 3, 'Ratul'),
(2, 'Emon', 'Friday', 8, 'Robert'),
(6, 'Tanvir', 'Monday', 3, 'Robert'),
(8, 'Tomal', 'Tuesday', 8, 'Ratul'),
(9, 'Robi', 'Saturday', 2, 'Robert'),
(10, 'Gin', 'Wednesday', 7, 'Ratul');

-- --------------------------------------------------------

--
-- Table structure for table `student_complain`
--

CREATE TABLE `student_complain` (
  `id` int(10) NOT NULL,
  `nname` varchar(10) NOT NULL,
  `complain` varchar(1000) NOT NULL,
  `reply` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_complain`
--

INSERT INTO `student_complain` (`id`, `nname`, `complain`, `reply`) VALUES
(1, 'Faiyaz', 'I cant fix it !!', 'Okay let me fix it !!!'),
(2, 'Niloy', 'Teacher name: Akash  is fake !!', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_schedule`
--

CREATE TABLE `student_schedule` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `TIME` time(6) NOT NULL,
  `DAY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_schedule`
--

INSERT INTO `student_schedule` (`ID`, `NAME`, `TIME`, `DAY`) VALUES
(1, 'Arnob', '07:00:00.000000', 'SUNDAY,TUESDAY,THURSDAY'),
(4, 'rakesh', '18:30:00.000000', 'SATURDAY,MONDAY,WEDNESDAY,FRIDAY'),
(5, 'stany', '19:00:00.000000', 'SATURDAY,SUNDAY,FRIDAY');

-- --------------------------------------------------------

--
-- Table structure for table `student_stext`
--

CREATE TABLE `student_stext` (
  `id` int(11) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `s_text` varchar(100) NOT NULL,
  `reciever` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_stext`
--

INSERT INTO `student_stext` (`id`, `sender`, `s_text`, `reciever`) VALUES
(2, 'john', 'thank you bro', 'rifat'),
(7, 'john', 'how r u?', 'bj'),
(9, 'john', 'please check my assignment', 'bj'),
(10, 'john', 'please check my assignment', 'nobody'),
(13, 'john', 'nothing but consentration', 'bj'),
(14, 'Sac', 'hi there', 'john'),
(15, 'Sac', 'yes i did it', 'john'),
(16, 'brad', 'hi there', 'john'),
(17, 'brad', 'need to contact admin', 'rifat');

-- --------------------------------------------------------

--
-- Table structure for table `s_notes`
--

CREATE TABLE `s_notes` (
  `id` int(11) NOT NULL,
  `nname` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_notes`
--

INSERT INTO `s_notes` (`id`, `nname`, `subject`, `date`, `notes`) VALUES
(1, 'john', 'Networking', '2020-05-17', '../views/upload/EM_Assignment_ Final_Spring 19-20.docx'),
(3, 'john', 'English', '2020-05-04', '../views/upload/Problems on Network diagram and Critical path, CPM 2.doc'),
(5, 'john', 'EM', '2020-05-06', '../views/upload/sample-1, Cost estimation in days.docx');

-- --------------------------------------------------------

--
-- Table structure for table `s_req`
--

CREATE TABLE `s_req` (
  `id` int(11) NOT NULL,
  `tutor` varchar(100) NOT NULL,
  `student` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_req`
--

INSERT INTO `s_req` (`id`, `tutor`, `student`, `subject`, `time`) VALUES
(1, 'karim', 'john', 'bangla', '11:00am-12:30pm'),
(7, 'abraham', 'john', 'EM', '5 pm or 9 pm'),
(8, 'sad', 'john', 'English', '8 pm or 9 pm');

-- --------------------------------------------------------

--
-- Table structure for table `s_tp_req`
--

CREATE TABLE `s_tp_req` (
  `id` int(11) NOT NULL,
  `nname` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_tp_req`
--

INSERT INTO `s_tp_req` (`id`, `nname`, `subject`, `time`) VALUES
(2, 'john', 'Networking', '7 am or 8 pm'),
(3, 'john', 'English', '8 pm or 9 pm'),
(4, 'Sac', 'English,Maths', '2'),
(5, 'Sac', 'English,Maths', '2');

-- --------------------------------------------------------

--
-- Table structure for table `s_tutor`
--

CREATE TABLE `s_tutor` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `student` varchar(100) NOT NULL,
  `tutor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_tutor`
--

INSERT INTO `s_tutor` (`id`, `subject`, `student`, `tutor`) VALUES
(2, 'Bangla', 'john', 'abraham'),
(3, 'English', 'john', 'linkon'),
(4, 'maritation', 'john', 'faruk'),
(5, 'COOKING', 'john', 'keka');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'TEACHER',
  `email` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `education` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `username`, `password`, `type`, `email`, `gender`, `education`) VALUES
(23, 'RatuL', '22654', 'TEACHER', 'RatL@gmail.com', 'MALE', 'SSC,HSC,BSC'),
(42, 'Nilasen', '12121221', 'TEACHER', 'rayhana@gmail.com', 'FEMALE', 'BSC,MSC'),
(45, 'rayhan', 'asd123', 'TEACHER', 'rh122@gmail.com', 'MALE', 'MED');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_schedule`
--

CREATE TABLE `teacher_schedule` (
  `ID` int(10) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TIME` time(6) NOT NULL,
  `DAY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_schedule`
--

INSERT INTO `teacher_schedule` (`ID`, `NAME`, `TIME`, `DAY`) VALUES
(1, 'MD. Ratul ', '18:30:00.000000', 'SATURDAY,MONDAY,WEDNESDAY'),
(2, 'IDRA', '05:00:00.000000', 'SATURDAY,THURSDAY'),
(10, 'Bobs', '18:30:00.000000', 'SATURDAY,MONDAY,WEDNESDAY'),
(26, 'RatuL', '19:30:00.000000', 'SATURDAY,TUESDAY,FRIDAY'),
(27, 'Derek', '20:00:00.000000', 'SATURDAY,THURSDAY,FRIDAY'),
(28, 'sarin', '19:00:00.000000', 'SATURDAY,SUNDAY,TUESDAY'),
(29, 'akash', '19:59:00.000000', 'SATURDAY,TUESDAY'),
(30, 'sakib', '19:00:00.000000', 'SATURDAY,SUNDAY,TUESDAY,FRIDAY'),
(31, 'zlatan', '19:10:00.000000', 'SATURDAY,SUNDAY,WEDNESDAY,THURSDAY');

-- --------------------------------------------------------

--
-- Table structure for table `tp_contact`
--

CREATE TABLE `tp_contact` (
  `...` int(10) NOT NULL,
  `ADMIN` text NOT NULL,
  `TEACHER` text NOT NULL,
  `STUDENT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tp_contact`
--

INSERT INTO `tp_contact` (`...`, `ADMIN`, `TEACHER`, `STUDENT`) VALUES
(1, '01777222313', '01782324234', '01765432123');

-- --------------------------------------------------------

--
-- Table structure for table `tp_profile`
--

CREATE TABLE `tp_profile` (
  `ID` int(12) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `EmaiL` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `AGE` int(11) NOT NULL,
  `EDUCATION` varchar(30) NOT NULL,
  `BLOOD_GROUP` varchar(10) NOT NULL,
  `Living_Area` varchar(50) NOT NULL,
  `UPLOADED_filename` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tp_profile`
--

INSERT INTO `tp_profile` (`ID`, `NAME`, `EmaiL`, `Gender`, `AGE`, `EDUCATION`, `BLOOD_GROUP`, `Living_Area`, `UPLOADED_filename`) VALUES
(74, 'EMON-IQBAL', 'rasjbii@gmail.com', 'MALE', 25, 'JSC,SSC,HSC', 'O+', 'Eskaton Garden,Ramna-1000', 'IMG_2306.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tp_ratings`
--

CREATE TABLE `tp_ratings` (
  `ID` int(10) NOT NULL,
  `Teacher_name` varchar(50) NOT NULL,
  `T_PERFORMANCE` varchar(50) NOT NULL,
  `Student_name` varchar(50) NOT NULL,
  `S_PERFORMANCE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tp_ratings`
--

INSERT INTO `tp_ratings` (`ID`, `Teacher_name`, `T_PERFORMANCE`, `Student_name`, `S_PERFORMANCE`) VALUES
(8, 'RatuL', '*** [AVERAGE]', 'Maisha', '**** [BETTER]'),
(9, 'Rayhan', '** [GOOD]', 'Arnob', '***** [BEST]'),
(10, 'Akash', '* [POOR]', 'Blizzard', '** [GOOD]'),
(11, 'ALAMIN SIR', '***** [BEST]', 'Mehzabien', '* [POOR]'),
(12, 'Qwerty', '**** [BETTER]', 'uiopa', '*** [AVERAGE]'),
(14, 'Dev', '** [GOOD]', 'Barman', '*** [AVERAGE]');

-- --------------------------------------------------------

--
-- Table structure for table `tuitionprovider_complain`
--

CREATE TABLE `tuitionprovider_complain` (
  `Id` int(10) NOT NULL,
  `nname` varchar(20) NOT NULL,
  `complain` varchar(1000) NOT NULL,
  `reply` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuitionprovider_complain`
--

INSERT INTO `tuitionprovider_complain` (`Id`, `nname`, `complain`, `reply`) VALUES
(1, 'Emon', 'Could not change password!', 'Ok'),
(2, 'Blizzard', 'Ki obostha ?', ''),
(3, 'Niloy', 'I want to deactivate my account !', ''),
(4, 'Emon', 'Hello there...I need to add a new tution to our site. Hope you open the access', 'will check it');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `nname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `picsource` varchar(350) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `nname`, `password`, `email`, `type`, `picsource`, `gender`, `education`) VALUES
(18, 'john doe', 'john', '12345', 'john@gmail.com', 'student', '../views/upload/', 'M', 'hsc'),
(19, 'iftekhar rifat', 'rifat', '12345', 'rifat@gmail.com', 'student', '../views/upload/', 'M', 'bsc'),
(20, 'bj saad', 'bj', '12345', 'sad@gmail.com', 'student', '../views/upload/', 'M', 'ssc'),
(23, 'Ratul Rayhan', 'Ratul', '123456', 'ratulrayhan201@gmail.com', 'teacher', '../views/upload/IMG_20200313_012852.jpg', 'M', 'bsc'),
(24, 'Robert Pattinson', 'Robert', '654321', 'robert@gmail.com', 'teacher', '../views/upload/11988607_10153104308911778_561824965723703670_n.png', 'M', 'bsc'),
(25, 'Zlatan Ibrahimovic', 'Zlatan', '123654', 'zlatan@gmail.com', 'teacher', '../views/upload/gNEX1XxYLXZ4SNYFSVYvfnKW.jpeg', 'M', 'bsc'),
(26, 'Rimon RR', 'Rimon', '012345', 'rimon@gmail.com', 'tp', '../views/upload/page.jpg', 'M', 'hsc'),
(27, 'Rasel IE', 'Imon', '234567', 'rimon@gmail.com', 'tp', '../views/upload/ace.jpg', 'M', 'bsc'),
(28, 'Limon YA', 'Limon', '765432', 'limon@gmail.com', 'tp', '../views/upload/son_goku_super_saiyan_god_super_saiyan_by_dark_crawler_d8zkljz-fullview.png', 'M', 'ssc'),
(43, 'Sam Curran', 'Sac', 'sam123', 'sam123@gmail.com', 'tp', '../views/upload/20190101_114819.jpg', 'M', 'bsc'),
(44, 'Akash Rahman', 'Akash', 'aks123', 'ak$@gmail.com', 'admin', '../views/upload/IMG_2398.JPG', 'M', 'ssc'),
(45, 'Brad Piter', 'brad', 'bra121', 'bpit@gmail.com', 'teacher', '../views/upload/IMG_5350.PNG', 'M', 'bsc'),
(46, 'Rat Nilsen', 'ratN', 'rat123', 'ratN@gmail.com', 'teacher', '../views/upload/IMG_5373.JPG', 'M', 'hsc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available`
--
ALTER TABLE `available`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cta`
--
ALTER TABLE `cta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offered`
--
ALTER TABLE `offered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pnotices`
--
ALTER TABLE `pnotices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provided_tuitions`
--
ALTER TABLE `provided_tuitions`
  ADD PRIMARY KEY (`sequences`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `pass` (`password`);

--
-- Indexes for table `rnotices`
--
ALTER TABLE `rnotices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_complain`
--
ALTER TABLE `student_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_schedule`
--
ALTER TABLE `student_schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_stext`
--
ALTER TABLE `student_stext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_notes`
--
ALTER TABLE `s_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_req`
--
ALTER TABLE `s_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_tp_req`
--
ALTER TABLE `s_tp_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_tutor`
--
ALTER TABLE `s_tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `password_2` (`password`);

--
-- Indexes for table `teacher_schedule`
--
ALTER TABLE `teacher_schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tp_contact`
--
ALTER TABLE `tp_contact`
  ADD PRIMARY KEY (`...`);

--
-- Indexes for table `tp_profile`
--
ALTER TABLE `tp_profile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tp_ratings`
--
ALTER TABLE `tp_ratings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tuitionprovider_complain`
--
ALTER TABLE `tuitionprovider_complain`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `available`
--
ALTER TABLE `available`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cta`
--
ALTER TABLE `cta`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `offered`
--
ALTER TABLE `offered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pnotices`
--
ALTER TABLE `pnotices`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `provided_tuitions`
--
ALTER TABLE `provided_tuitions`
  MODIFY `sequences` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `rnotices`
--
ALTER TABLE `rnotices`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_complain`
--
ALTER TABLE `student_complain`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_schedule`
--
ALTER TABLE `student_schedule`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_stext`
--
ALTER TABLE `student_stext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `s_notes`
--
ALTER TABLE `s_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `s_req`
--
ALTER TABLE `s_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `s_tp_req`
--
ALTER TABLE `s_tp_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `s_tutor`
--
ALTER TABLE `s_tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `teacher_schedule`
--
ALTER TABLE `teacher_schedule`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tp_contact`
--
ALTER TABLE `tp_contact`
  MODIFY `...` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tp_profile`
--
ALTER TABLE `tp_profile`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tp_ratings`
--
ALTER TABLE `tp_ratings`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tuitionprovider_complain`
--
ALTER TABLE `tuitionprovider_complain`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
