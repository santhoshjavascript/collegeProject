-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2021 at 05:42 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdcmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin test', 'admin', 1234596321, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-04-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbabysitter`
--

CREATE TABLE `tblbabysitter` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNo` bigint(12) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `LanguagesKnown` mediumtext DEFAULT NULL,
  `BabysitterExp` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Certificate` mediumtext DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbabysitter`
--

INSERT INTO `tblbabysitter` (`id`, `Name`, `Email`, `MobileNo`, `Address`, `City`, `State`, `LanguagesKnown`, `BabysitterExp`, `ProfilePic`, `Certificate`, `Description`, `RegDate`) VALUES
(2, 'Mayanka Singh', 'may@gmail.com', 7896541238, '', 'ghaziabad', 'UP', 'Hindi, English and Bengali', '6', 'c26be60cfd1ba40772b5ac48b95ab19b1635402351.png', 'CPR, Heimlich and AED certification', 'Oversee the safety and well-being of all children\r\nAdhere to all schedules laid out by Parents, Guardians or Educators\r\nProvide meals at scheduled times\r\nEngage children in healthy educational and developmental activities\r\nConduct yourself as a person of authority and worth\r\nIf necessary, Safely transport children to activities such as sport, art or music classes\r\nKeep a safe and clean care environment\r\nBe punctual and on occasion stay late to help with unforeseen issues', '2021-10-28 05:30:33'),
(3, 'Maheswari Das', 'mah@gmail.com', 7896541236, 'u-789, goyal apartment', 'ghaziabad', 'UP', 'Hindi, English and Bengali', '4', '3af5212433e81b195f5020f4ccce607e1635402380.jpg', 'CPR, Heimlich and AED certification', 'Oversee the safety and well-being of all children\r\nAdhere to all schedules laid out by Parents, Guardians or Educators\r\nProvide meals at scheduled times\r\nEngage children in healthy educational and developmental activities\r\nConduct yourself as a person of authority and worth\r\nIf necessary, Safely transport children to activities such as sport, art or music classes\r\nKeep a safe and clean care environment\r\nBe punctual and on occasion stay late to help with unforeseen issues', '2021-10-28 05:30:33'),
(4, 'Jannifer Ronald', 'jannifer@gmail.com', 9896541236, '', 'ghaziabad', 'UP', 'Hindi, English and Bengali', '4', 'b6e149bfe43e1c070c0cf40b240907ef1635402421.png', 'CPR, Heimlich and AED certification', 'Oversee the safety and well-being of all children\r\nAdhere to all schedules laid out by Parents, Guardians or Educators\r\nProvide meals at scheduled times\r\nEngage children in healthy educational and developmental activities\r\nConduct yourself as a person of authority and worth\r\nIf necessary, Safely transport children to activities such as sport, art or music classes\r\nKeep a safe and clean care environment\r\nBe punctual and on occasion stay late to help with unforeseen issues', '2021-10-28 05:30:33'),
(5, 'Komal Devi', 'komal@gmail.com', 7894561236, '', 'Noida', 'UP', 'Hindi, English and Bengali', '4', '02fca5c8efa2229302a91e53c398fc081635402459.jpg', 'CPR, Heimlich and AED certification', 'Oversee the safety and well-being of all children\r\nAdhere to all schedules laid out by Parents, Guardians or Educators\r\nProvide meals at scheduled times\r\nEngage children in healthy educational and developmental activities\r\nConduct yourself as a person of authority and worth\r\nIf necessary, Safely transport children to activities such as sport, art or music classes\r\nKeep a safe and clean care environment\r\nBe punctual and on occasion stay late to help with unforeseen issues', '2021-10-28 05:30:33'),
(6, 'Gyatri', 'gyaytri@gmail.com', 5698231445, '', 'ghaziabad', 'UP', 'Hindi, English and Bengali', '4', 'acada297ff3a688187b5d2afd32772921635402497.png', 'CPR, Heimlich and AED certification', 'Oversee the safety and well-being of all children\r\nAdhere to all schedules laid out by Parents, Guardians or Educators\r\nProvide meals at scheduled times\r\nEngage children in healthy educational and developmental activities\r\nConduct yourself as a person of authority and worth\r\nIf necessary, Safely transport children to activities such as sport, art or music classes\r\nKeep a safe and clean care environment\r\nBe punctual and on occasion stay late to help with unforeseen issues', '2021-10-28 05:30:33'),
(7, 'Sudha', 'sudha@gmail.com', 7894561236, 'H-908 Gautam Vihar', 'New Delhi', 'UP', 'English and Hindi', '9', '16be2f0181d2c987b138af2595954fc71635402527.jpg', 'BLS cetification', 'Higg ghjghjg kjhh hkjh \r\nhhhjkhkh\r\njlkjlkj\r\nmlkjioufr\r\nkjhkj', '2021-10-28 05:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Manu', 'Sharma', 'manu@gmail.com', 9879879879, 'Tell me fee of play school', '2021-11-01 04:53:55', 1),
(2, 'Anuj', 'Kumar', 'ak@gmail.com', 1234567890, 'test', '2021-11-09 17:42:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblenrollment`
--

CREATE TABLE `tblenrollment` (
  `ID` int(10) NOT NULL,
  `EnrollmentNumber` int(10) DEFAULT NULL,
  `YourName` varchar(200) DEFAULT NULL,
  `PhoneNumber` bigint(10) DEFAULT NULL,
  `AlternateNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `ChildName` varchar(200) DEFAULT NULL,
  `DOB` varchar(200) DEFAULT NULL,
  `ChildGender` varchar(50) DEFAULT NULL,
  `ProgramName` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Landmark` varchar(200) DEFAULT NULL,
  `EnrollDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblenrollment`
--

INSERT INTO `tblenrollment` (`ID`, `EnrollmentNumber`, `YourName`, `PhoneNumber`, `AlternateNumber`, `Email`, `ChildName`, `DOB`, `ChildGender`, `ProgramName`, `Address`, `Zipcode`, `City`, `State`, `Country`, `Landmark`, `EnrollDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 829361397, 'Raghav Tiwari', 8956565656, 6567978797, 'rag@gmail.com', 'Dhruv Tiwari', '2020-01-05', 'Male', 'Play Group', 'H-890, Diwan Apartment', 456789, 'Noida', 'UP', 'India', 'Near Shiv Mandir', '2021-11-01 09:23:54', '', 'Accepted', '2021-11-03 05:19:03'),
(2, 729361397, 'Gyandra', 2356898654, 4654654654, 'gyan@gmail.com', 'Hansi', '2018-08-03', 'Female', 'Nursery', 'K-789, Kamal Apartment', 797977987, 'Ghaziabd', 'UP', 'India', 'None', '2021-11-01 09:27:14', '', 'Onhold', '2021-11-03 05:20:01'),
(3, 629361398, 'kkjhkjhjk', 5465454654, 6546546546, 'njk@kj', 'jlkjl', '2021-11-01', 'Male', 'Nursery', 'jhkjh', 78978789, 'ljklj', 'lkjlk', 'lkjlkj', 'lkjlkj', '2021-11-01 09:31:52', '', 'Rejected', '2021-11-03 05:19:25'),
(4, 629361397, 'Virendra Pratap Singh', 4646446465, 6465465465, 'vir@gmail.com', 'Shanvi', '2019-07-06', 'Female', 'Lower KG', 'kjhjkhkjhkjhkmmbjgjh', 7979798, 'Varanasi', 'UP', 'India', 'NA', '2021-11-01 09:39:14', '', 'Accepted', '2021-11-03 05:20:18'),
(5, 958941350, 'kjhjk', 7899879879, 9879879879, 'h@gmail.com', 'hhuiyui', '2021-05-06', 'Male', 'Play Group', 'hkjhkjhkj', 877895, 'kl;k;', ';lk;l', ';lk;l', ';lk;l', '2021-11-01 09:41:20', '', 'Rejected', '2021-11-03 05:19:45'),
(6, 384502123, 'Tina Singh', 9879787979, 9798798798, 'tina@gmail.com', 'Manvi', '2019-11-01', 'Male', 'Play Group', 'hkjhkjhjkhkjhkhkh', 789456, 'jouoiuuoiu', 'oiuoiu', 'oiuo', 'oiuuo', '2021-11-01 09:42:57', '', 'Onhold', '2021-11-03 05:20:37'),
(7, 724628473, 'Test', 7987977978, 9879879797, 'test@gmail.com', 'Test1', '2020-03-07', 'Female', 'Play Group', 'test test test', 4564654, 'test', 'test', 'test', 'test', '2021-11-07 05:49:27', NULL, NULL, '2021-11-07 05:49:27'),
(8, 677662848, 'Ram Singh', 9879798797, 9879878978, 'ram@gmail.com', 'Jhanvi Singh', '2019-10-01', 'Female', 'Nursery', 'XDTTD', 798797789, 'Ghazibad', 'UP', 'India', 'NA', '2021-11-08 13:40:11', NULL, NULL, '2021-11-08 13:40:11'),
(9, 974578462, 'khkhkj', 5455465464, 6546546546, 'kjhkj@gnoa.com', 'gjhg', '2021-11-01', 'Male', 'Play Group', 'bmnbm', 4654654, 'kjhjkh', 'kjhk', 'jhjk', 'hkjh', '2021-11-08 13:44:41', NULL, NULL, '2021-11-08 13:44:41'),
(11, 688945146, 'Anuj', 1234567890, 9874563210, 'anujk@gmail.com', 'Rahul', '2020-01-09', 'Male', 'Play Group', 'A 346 ABC Street', 110001, 'New Delhi', 'Delhi', 'India', 'NA', '2021-11-09 17:41:20', '', 'Accepted', '2021-11-09 17:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \r\n', NULL, NULL, '2021-11-09 17:46:31'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India.', 'bdcmsinfo@test.com', 1234567899, '2021-11-09 17:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `id` int(11) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDetail` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`id`, `ServiceName`, `ServiceDetail`, `CreationDate`) VALUES
(1, 'Healthy Food', 'Food hkjh;l;kfvmotiunoiuotuy4igyory3biy4ityivy4riytiuer\r\nrgjhgecegiutyut', '2021-10-25 06:45:23'),
(2, 'Home Services', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:45:42'),
(3, 'Baby Care', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:45:58'),
(4, 'Special Care', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:46:13'),
(5, 'Nutrition', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:46:29'),
(6, 'Child Care', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:46:42'),
(7, 'Activity Skill', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:47:01'),
(8, 'Security', 'Suspendisse tincidunt velit velit sagittis vehicula. Duis posuere mollis iaculis.Lorem ipsum dolor sit amet, consectetur adipiscing', '2021-10-25 06:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'ani@gmail.com', '2021-07-16 07:32:33'),
(2, 'rahul@gmail.com', '2021-07-16 07:32:33'),
(6, 'j@gmail.com', '2021-08-16 15:00:59'),
(7, 'cfsdf@gmail.com', '2021-08-25 16:57:34'),
(8, 'raj@gmail.com', '2021-11-01 05:03:51'),
(9, 'test@gmail.com', '2021-11-09 17:45:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbabysitter`
--
ALTER TABLE `tblbabysitter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenrollment`
--
ALTER TABLE `tblenrollment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PracticeArea` (`ServiceName`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbabysitter`
--
ALTER TABLE `tblbabysitter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblenrollment`
--
ALTER TABLE `tblenrollment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
