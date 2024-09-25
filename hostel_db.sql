-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 03:42 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_hostal`
--

CREATE TABLE `add_hostal` (
  `Room_ID` varchar(20) NOT NULL,
  `Hostal_Owner_ID` varchar(40) NOT NULL,
  `Hostal_name` varchar(40) NOT NULL,
  `Distence` varchar(20) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Room_Size` varchar(40) NOT NULL,
  `Facilities` varchar(50) NOT NULL,
  `Electricity` varchar(40) NOT NULL,
  `Type` varchar(40) NOT NULL,
  `Number_of_rooms` int(50) NOT NULL,
  `Price_for_one_person` varchar(40) NOT NULL,
  `Price_for_two_people` varchar(40) NOT NULL,
  `Price_for_three_people` varchar(40) NOT NULL,
  `Price_for_four_people` varchar(40) NOT NULL,
  `Discription` varchar(150) NOT NULL,
  `Key_money` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_hostal`
--

INSERT INTO `add_hostal` (`Room_ID`, `Hostal_Owner_ID`, `Hostal_name`, `Distence`, `Location`, `Room_Size`, `Facilities`, `Electricity`, `Type`, `Number_of_rooms`, `Price_for_one_person`, `Price_for_two_people`, `Price_for_three_people`, `Price_for_four_people`, `Discription`, `Key_money`) VALUES
('R0001', 'H0001', 'Horizon Girls Hostel', '750m', 'https://goo.gl/maps/ebLByzKBY4BdYoFs5', '12', 'Study area,Attached bathroom,Fan,', 'Yes', 'Girls, ', 10, 'RS.20000', 'RS.12000', 'RS.7500', 'RS.5000', 'Cool place to stay. Prices also reasonable.Good security. Easy to approach so many places like Newil Fernando Teaching Hospital,KCM.', '0'),
('R0002', 'H0002', 'Nayana House', '1000m', 'https://goo.gl/maps/UDHVJcoRwNNaweEW7', '10', 'Fan,', 'NO', 'Girls, ', 2, 'RS.15000', 'RS.10000', 'RS.7500', 'RS.5000', 'Nice to study', '0'),
('R0003', 'H0003', 'jam', '5', 'ibisbxxb hxbuhbbx ', '50', 'Attached bathroom,Food Included,', 'Yes', 'Girls, Boys,', 8, '7800', '5000', '2000', '1000', 'hbsahusux ixbsixb', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `Student_ID` varchar(40) NOT NULL,
  `Owner_ID` varchar(40) NOT NULL,
  `Room_ID` varchar(40) NOT NULL,
  `No_of_rooms` varchar(40) NOT NULL,
  `Student_Phone_NO` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Student_ID`, `Owner_ID`, `Room_ID`, `No_of_rooms`, `Student_Phone_NO`) VALUES
('S0001', 'H0002', 'R0002', '1', '0701702600'),
('S0001', 'H0002', 'R002', '1', '65654165165'),
('S0002', 'H0001', 'R0001', '2', '0758889964');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_owner`
--

CREATE TABLE `hostel_owner` (
  `Hostal_Owner_ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Phone_Number` int(40) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel_owner`
--

INSERT INTO `hostel_owner` (`Hostal_Owner_ID`, `Name`, `Gender`, `Phone_Number`, `Email`) VALUES
('H0001', 'Hostel Owners', 'Male', 786696588, 'hostelowner@gmail.com'),
('H0002', 'D.Nayana ', 'Female', 759812355, 'nayana@gmail.com'),
('H0003', 'kamal', 'Male', 1234, 'kamalr');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Position` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Position`, `Email`, `Password`) VALUES
('Admin', 'admin@gmail.com', 'admin123'),
('Hostel Owner', 'hos@gmail.com', '123'),
('Hostel Owner', 'hostelowner@gmail.com', 'hostelowner123'),
('Student', 'maleesha@gmail.com', 'maleesha123'),
('Hostel Owner', 'nayana@gmail.com', 'nayana123'),
('Hostel Owner', 'ravihariowner@gmail.com', 'ravihari123'),
('Student', 'student@gmail.com', 'student123'),
('Hostel Owner', 'sumith@gmail.com', 'sumith123'),
('Student', 'supun@gmail.com', 'supun123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Phone_Number` int(40) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Name`, `Gender`, `Phone_Number`, `Email`) VALUES
('S0001', 'Maleesha ', 'Male', 701702600, 'maleesha@gmail.com'),
('S0002', 'Supun Disanyaka', 'Male', 758889964, 'supun@gmail.com'),
('S0003', 'saduni', 'Female', 774112, 'student@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_hostal`
--
ALTER TABLE `add_hostal`
  ADD PRIMARY KEY (`Room_ID`),
  ADD KEY `Hostal_Owner_ID` (`Hostal_Owner_ID`),
  ADD KEY `Room_ID` (`Room_ID`) USING BTREE;

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`Student_ID`,`Room_ID`),
  ADD KEY `Room_ID` (`Room_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `hostel_owner`
--
ALTER TABLE `hostel_owner`
  ADD PRIMARY KEY (`Hostal_Owner_ID`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Email`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Email_2` (`Email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Student_ID` (`Student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
