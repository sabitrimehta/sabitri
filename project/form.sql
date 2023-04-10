-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 11:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `ward_number` varchar(100) DEFAULT NULL,
  `street_name` varchar(100) DEFAULT NULL,
  `tole_name` varchar(100) DEFAULT NULL,
  `zip_code` int(100) DEFAULT NULL,
  `personal_info` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `districts_id` int(11) DEFAULT NULL,
  `city_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `ward_number`, `street_name`, `tole_name`, `zip_code`, `personal_info`, `country_id`, `province_id`, `districts_id`, `city_id`) VALUES
(13, '12', '56', '34', 78, NULL, 1, 2, 4, NULL),
(14, '4523', '243', '523', 23, NULL, 1, 2, 3, 3),
(15, '65', 'purano bhansar road', 'ramjanaki', 1092, NULL, 2, 12, 16, 11),
(16, '2', 'liyamati', 'goyalapani', 10700, NULL, 1, 7, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `board_or_university`
--

CREATE TABLE `board_or_university` (
  `board_or_university_id` int(100) NOT NULL,
  `board_or_university_name` varchar(100) NOT NULL,
  `level_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `board_or_university`
--

INSERT INTO `board_or_university` (`board_or_university_id`, `board_or_university_name`, `level_id`) VALUES
(1, 'NEB', 1),
(2, 'HSEB', 2),
(3, 'Tribhuvan University', 3);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `districts_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `districts_id`) VALUES
(1, 'attariya', 31),
(2, 'Banepa', 37),
(3, 'Bardibas', 41),
(4, 'Bhadrapur', 29),
(5, 'Bharatpur', 12),
(6, 'Biratnagar', 44),
(7, 'Birendranagar', 72),
(8, 'Birgunj', 55),
(9, 'Butwal', 61),
(10, 'Damauli', 74),
(11, 'Dang', 15),
(12, 'Dhangadhi', 31),
(13, 'Dhankuta', 18),
(14, 'Dharan', 71),
(15, 'Dipayal Silgadhi', 22),
(16, 'Gaighat', 77),
(17, 'Gaur', 59),
(18, 'Ghorahi', 15),
(19, 'Gulariya', 9),
(20, 'Hetauda', 42),
(21, 'Ilam', 27),
(22, 'Inaruwa', 71),
(23, 'Itahari', 71),
(24, 'Jaleshwar', 41),
(25, 'Janakpur', 19),
(26, 'Kathmandu', 36),
(27, 'Khandbari', 64),
(28, 'Kirtipur', 36),
(29, 'Lumbini', 61),
(30, 'Mahendranagar', 33),
(31, 'Narayangarh', 4),
(32, 'Nepalgunj', 9),
(33, 'Pokhara', 35),
(34, 'sanfebagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'nepal'),
(2, 'india'),
(3, 'pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `districts_id` int(11) NOT NULL,
  `district_name` varchar(100) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`districts_id`, `district_name`, `province_id`) VALUES
(1, 'Achham', 7),
(2, 'Arghakhanchi', 5),
(3, 'Baglung', 4),
(4, 'Baitadi', 7),
(5, 'Bajhang', 7),
(6, 'Bajura', 7),
(7, 'Banke', 5),
(8, 'Bara', 2),
(9, 'Bardiya', 5),
(10, 'Bhaktapur', 3),
(11, 'Bhojpur', 1),
(12, 'Chitwan', 4),
(13, 'Dadeldhura', 7),
(14, 'Dailekh', 6),
(15, 'Dang', 5),
(16, 'Darchula', 7),
(17, 'Dhading', 4),
(18, 'Dhankuta', 1),
(19, 'Dhanusha', 2),
(20, 'Dolakha', 3),
(21, 'Dolpa', 7),
(22, 'Doti', 7),
(23, 'Eastern Rukum', 5),
(24, 'Gorkha', 4),
(25, 'Gulmi', 5),
(26, 'Humla', 7),
(27, 'Ilam', 1),
(28, 'Jajarkot', 6),
(29, 'Jhapa', 1),
(30, 'Jumla', 7),
(31, 'Kailali', 7),
(32, 'Kalikot', 6),
(33, 'Kanchanpur', 7),
(34, 'Kapilvastu', 5),
(35, 'Kaski', 4),
(36, 'Kathmandu', 3),
(37, 'Kavrepalanchok', 3),
(38, 'Khotang', 1),
(39, 'Lalitpur', 3),
(40, 'Lamjung', 4),
(41, 'Mahottari', 2),
(42, 'Makwanpur', 4),
(43, 'Manang', 4),
(44, 'Morang', 1),
(45, 'Mugu', 7),
(46, 'Mustang', 4),
(47, 'Myagdi', 4),
(48, 'Nawalpur', 4),
(49, 'Nuwakot', 4),
(50, 'Okhaldhunga', 1),
(51, 'Palpa', 5),
(52, 'Panchthar', 1),
(53, 'Parasi', 5),
(54, 'Parbat', 4),
(55, 'Parsa', 2),
(56, 'Pyuthan', 5),
(57, 'Ramechhap', 3),
(58, 'Rasuwa', 3),
(59, 'Rautahat', 2),
(60, 'Rolpa', 6),
(61, 'Rupandehi', 5),
(62, 'Rukum paschim', 6),
(63, 'Salyan', 6),
(64, 'Sankhuwasabha', 1),
(65, 'Saptari', 2),
(66, 'Sarlahi', 2),
(67, 'Sindhuli', 3),
(68, 'Sindhupalchok', 3),
(69, 'Siraha', 2),
(70, 'Solukhumbu', 1),
(71, 'Sunsari', 1),
(72, 'Surkhet', 6),
(73, 'Syangja', 4),
(74, 'Tanahu', 4),
(75, 'Taplejung', 1),
(76, 'Terhathum', 1),
(77, 'Udayapur', 1),
(78, 'Adilabad', 1),
(79, 'Agra', 26),
(80, 'Ahmedabad', 7),
(81, 'Ahmednagar', 14),
(82, 'Aizawl', 17),
(83, 'Ajmer', 21),
(84, 'Akola', 14),
(85, 'Alappuzha', 12),
(86, 'Aligarh', 26),
(87, 'Alirajpur', 13),
(88, 'Allahabad', 26),
(89, 'Almora', 27),
(90, 'Alwar', 21),
(91, 'Ambala', 8),
(92, 'Ambedkar Nagar', 26),
(93, 'Amravati', 14),
(94, 'Amreli', 7),
(95, 'Amritsar', 20),
(96, 'Anand', 7),
(97, 'Anantapur', 1),
(98, 'Anantnag', 1),
(99, 'Angul', 19),
(100, 'Anjaw', 2);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(11) NOT NULL,
  `personal_info` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `board_or_university_id` int(11) DEFAULT NULL,
  `symbol_number` int(100) NOT NULL,
  `passed_year` varchar(100) DEFAULT NULL,
  `division` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `personal_info`, `level_id`, `board_or_university_id`, `symbol_number`, `passed_year`, `division`) VALUES
(4, NULL, NULL, 1, 9852, '2075', ''),
(5, NULL, NULL, 2, 2147483647, '2075', 'second'),
(6, NULL, 2, 2, 2147483647, '2075', 'second'),
(7, NULL, 4, 3, 56646, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `family_information`
--

CREATE TABLE `family_information` (
  `family_info` int(11) NOT NULL,
  `Father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `Grand_fathar_name` varchar(100) DEFAULT NULL,
  `Grand_mother_name` varchar(100) DEFAULT NULL,
  `spouse_name` varchar(100) DEFAULT NULL,
  `personal_info` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_information`
--

INSERT INTO `family_information` (`family_info`, `Father_name`, `mother_name`, `Grand_fathar_name`, `Grand_mother_name`, `spouse_name`, `personal_info`) VALUES
(1, 'adsfsd', 'fsda', 'fsad', 'sfdaf', 'sdfa', NULL),
(2, '', '', '', '', '', NULL),
(3, 'madan raj regmi', 'bashundhara regmi', 'jayraj regmi', 'ramadevi regmi', 'xyz', NULL),
(4, '', '', '', '', '', NULL),
(5, '', '', '', '', '', NULL),
(6, '', '', '', '', '', NULL),
(7, 'manu', 'bx  ', '', '', '', NULL),
(8, '', '', '', '', '', NULL),
(9, '', '', '', '', '', NULL),
(10, '', '', '', '', '', NULL),
(11, 'scn ns', 'scb ', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_information`
--

CREATE TABLE `job_information` (
  `job_info` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `work_location` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `work_number` varchar(100) DEFAULT NULL,
  `job_start_date` varchar(100) DEFAULT NULL,
  `salary` varchar(100) DEFAULT NULL,
  `personal_info` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_information`
--

INSERT INTO `job_information` (`job_info`, `title`, `department`, `work_location`, `email`, `work_number`, `job_start_date`, `salary`, `personal_info`) VALUES
(1, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(2, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(3, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(4, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(5, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(6, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(7, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(8, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(9, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(10, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(11, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(12, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(13, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(14, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(15, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(16, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(17, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(18, 'title', 'Department', 'work_location', 'email', 'work_number', 'job_start-date', 'Salary', NULL),
(19, '', '', '', '', '', '-date', '', NULL),
(20, '', '', '', '', '', '-date', '', NULL),
(21, '', '', '', '', '', '', '', NULL),
(22, '', '', '', '', '', '', '', NULL),
(23, '', '', '', '', '', '', '', NULL),
(24, '', '', '', '', '', '', '', NULL),
(25, 'teacher', '', 'kathmandu', 'manuregmi500@gmail.com', '', '', '', NULL),
(26, '', '', '', '', '', '', '', NULL),
(27, 'teacher', '', 'kathmandu', 'manuregmi500@gmail.com', '', '', '', NULL),
(28, '', '', '', '', '', '', '', NULL),
(29, '', '', '', '', '', '', '', NULL),
(30, '', '', '', '', '', '', '', NULL),
(31, 'nxz ', '', 'xnnx', '', '', '', '', NULL),
(32, '', '', '', '', '', '', '', NULL),
(33, '', '', '', '', '', '', '', NULL),
(34, '', '', '', '', '', '', '', NULL),
(35, 'nsmdcm', '', 'nmdsfb', '', '', '', '', NULL),
(36, 'sc ', 'teacher', 'dsn', '', '', '2023-02-28', '', NULL),
(37, 'teacher', 'teacher', 'kathamandu', 'manuregmi500@gmail.com', '9854225255', '2023-02-28', '12000', NULL),
(38, 'teacher', 'teacher', 'kathamandu', 'manuregmi500@gmail.com', '9854225255', '2023-02-28', '12000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`) VALUES
(1, 'slc'),
(2, '12'),
(3, 'bachelor'),
(4, 'master');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `personal_info` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone_number` int(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`personal_info`, `first_name`, `middle_name`, `last_name`, `phone_number`, `email`, `gender`, `birthday`, `nationality`) VALUES
(4, 'first_name', 'middle_name', 'last_name', 0, 'email', 'nationality', NULL, 'birthday'),
(5, 'first_name', 'middle_name', 'last_name', 0, 'email', 'nationality', NULL, 'birthday'),
(6, 'fsdfg', 'gsdf', 'sdfg', 6443, 'fsd@fsdgsfd.com', 'male', '2023-03-08', 'Nepal'),
(7, 'manu', 'kumar', 'regmi', 2147483647, 'manuregmi500@gmail.com', 'male', '2023-03-03', 'Nepal'),
(8, 'manu', 'regmi', 'regmi', 2147483647, 'manuregmi500@gmail.com', '', '', ''),
(9, 'pawan', 'kumar', 'jethara', -7174, 'jethara@gmail.com', 'other', '2023-02-26', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`, `country_id`) VALUES
(1, 'koshi', 1),
(2, 'madesh', 1),
(3, 'bagmati', 1),
(4, 'gandaki', 1),
(5, 'lumbini', 1),
(6, 'karnali', 1),
(7, 'sudurpashchima', 1),
(8, 'Andhra Pradesh', 2),
(9, 'Arunachal Pradesh', 2),
(10, 'Assam', 2),
(11, 'Bihar', 2),
(12, 'Chhattisgarh', 2),
(13, 'Goa', 2),
(14, 'Gujarat', 2),
(15, 'Haryana', 2),
(16, 'Himachal Pradesh', 2),
(17, 'Jharkhand', 2),
(18, 'Karnataka', 2),
(19, 'Kerala', 2),
(20, 'Madhya Pradesh', 2),
(21, 'Maharashtra', 2),
(22, 'Manipur', 2),
(23, 'Meghalaya', 2),
(24, 'Mizoram', 2),
(25, 'Nagaland', 2),
(26, 'Odisha', 2),
(27, 'Punjab', 2),
(28, 'Rajasthan', 2),
(29, 'Sikkim', 2),
(30, 'Tamil Nadu', 2),
(31, 'Telangana', 2),
(32, 'Tripura', 2),
(33, 'Uttar Pradesh', 2),
(34, 'Uttarakhand', 2),
(35, 'West Bengal', 2),
(36, 'Azad Jammu and Kashmir', 3),
(37, 'Balochistan', 3),
(38, 'Gilgit-Baltistan', 3),
(39, 'Islamabad Capital Territory', 3),
(40, 'Khyber Pakhtunkhwa', 3),
(41, 'Punjab', 3),
(42, 'Sindh', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `personal_info` (`personal_info`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `districts_id` (`districts_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `board_or_university`
--
ALTER TABLE `board_or_university`
  ADD PRIMARY KEY (`board_or_university_id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `districts_id` (`districts_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`districts_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`),
  ADD KEY `personal_info` (`personal_info`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `board_or_university_id` (`board_or_university_id`);

--
-- Indexes for table `family_information`
--
ALTER TABLE `family_information`
  ADD PRIMARY KEY (`family_info`),
  ADD KEY `personal_info` (`personal_info`);

--
-- Indexes for table `job_information`
--
ALTER TABLE `job_information`
  ADD PRIMARY KEY (`job_info`),
  ADD KEY `personal_info` (`personal_info`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`personal_info`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`),
  ADD KEY `country_id` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `board_or_university`
--
ALTER TABLE `board_or_university`
  MODIFY `board_or_university_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `districts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `family_information`
--
ALTER TABLE `family_information`
  MODIFY `family_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `job_information`
--
ALTER TABLE `job_information`
  MODIFY `job_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_information`
--
ALTER TABLE `personal_information`
  MODIFY `personal_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`personal_info`) REFERENCES `personal_information` (`personal_info`),
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  ADD CONSTRAINT `address_ibfk_3` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`),
  ADD CONSTRAINT `address_ibfk_4` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`districts_id`),
  ADD CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `board_or_university`
--
ALTER TABLE `board_or_university`
  ADD CONSTRAINT `level_id` FOREIGN KEY (`level_id`) REFERENCES `board_or_university` (`board_or_university_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`districts_id`) REFERENCES `districts` (`districts_id`);

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`personal_info`) REFERENCES `personal_information` (`personal_info`),
  ADD CONSTRAINT `education_ibfk_2` FOREIGN KEY (`level_id`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `education_ibfk_3` FOREIGN KEY (`board_or_university_id`) REFERENCES `board_or_university` (`board_or_university_id`);

--
-- Constraints for table `family_information`
--
ALTER TABLE `family_information`
  ADD CONSTRAINT `family_information_ibfk_1` FOREIGN KEY (`personal_info`) REFERENCES `personal_information` (`personal_info`);

--
-- Constraints for table `job_information`
--
ALTER TABLE `job_information`
  ADD CONSTRAINT `job_information_ibfk_1` FOREIGN KEY (`personal_info`) REFERENCES `personal_information` (`personal_info`);

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `province_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
