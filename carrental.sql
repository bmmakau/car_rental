-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 04:36 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e807f1fcf82d132f9bb018ca6738a19f', '2020-08-26 12:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` int(10) DEFAULT NULL,
  `EmailId` varchar(45) DEFAULT NULL,
  `carno` varchar(15) DEFAULT NULL,
  `pid` int(25) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `EmailId`, `carno`, `pid`, `FromDate`, `ToDate`, `status`, `PostingDate`, `LastUpdationDate`) VALUES
(6, 145375, 'mbuvi009@gmail.com', 'KAC 244N', 45, '2020-09-03', '2020-09-25', '2', '2020-09-02 13:49:28', NULL),
(7, 615696, 'mbuvi@gmail.com', 'KAC 360k', 45, '2020-09-03', '2020-09-03', '1', '2020-09-02 14:37:27', NULL),
(8, 212881, 'mwendwacollins935@gmail.com', 'kda 456h', 46, '2020-09-03', '2020-09-04', '1', '2020-09-02 15:20:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `ParkName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Location` varchar(25) NOT NULL,
  `lots` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `PricePerDay` int(11) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `shaded` varchar(15) NOT NULL,
  `pimg1` varchar(140) NOT NULL,
  `pimg2` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `ParkName`, `CreationDate`, `Location`, `lots`, `booked`, `PricePerDay`, `UpdationDate`, `shaded`, `pimg1`, `pimg2`) VALUES
(45, 'kaITI', '2020-08-31 11:01:04', 'POBOX 45, WOTE', 100, 0, 100, NULL, 'No', '', ''),
(46, 'Maviani', '2020-08-31 11:04:52', 'PO BOX 34,Kaumoni', 50, 0, 250, NULL, 'Yes', '', ''),
(47, 'Kilala', '2020-08-31 11:04:58', 'PO BOX 120, Kilala', 500, 0, 250, NULL, 'No', '', ''),
(49, 'kaumoni', '2020-08-31 13:01:17', 'p.o box 10', 50, 0, 200, NULL, 'No', '', ''),
(50, 'kaumoni', '2020-08-31 13:03:15', 'p.o box 10', 50, 0, 200, NULL, 'No', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'POBOX 15,KILALA', 'mbuvi009@gmail.com', '0701237958');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'janu janu', 'janu1@gmail.com', '0701234890', 'janu januh  januh januh januh januhhh', '2020-08-31 08:19:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbllostcars`
--

CREATE TABLE `tbllostcars` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `idno` int(11) NOT NULL,
  `EmailId` varchar(45) NOT NULL,
  `Contactno` int(11) NOT NULL,
  `carno` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllostcars`
--

INSERT INTO `tbllostcars` (`id`, `name`, `idno`, `EmailId`, `Contactno`, `carno`, `message`) VALUES
(4, 'EILEEN MANG\'ALE', 87434883, 'jan@gmail.com', 701234890, 'KAC 244N', 'i lost it to thiesf'),
(5, 'janu janu', 34577845, 'janu@gmail.com', 701234890, 'KAC 234G', 'lost car,find it');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>yOH YOH&nbsp; ACCEPT THIS TERMS DEAR</font></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">I REALY LOVE YOU PURITY</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">TRUST MY LOVE PLEASEEEEEEE!!!!!!!!!1</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\">YOU BE MY BEST&nbsp;</span></div>'),
(3, 'About Us ', 'aboutus', '										<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied Collection of parks all around our cities.</span><div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">e offer&nbsp; nice parking with ambient security.</span></div><div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\"><br></span></div><div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">with lost car retrival</span></div>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblparking`
--

CREATE TABLE `tblparking` (
  `id` int(11) NOT NULL,
  `ParkName` varchar(45) NOT NULL,
  `ParkingOverview` varchar(100) NOT NULL,
  `PricePerDay` int(11) NOT NULL,
  `Lots` int(11) NOT NULL,
  `Bookedlots` int(11) NOT NULL,
  `Freelots` int(11) NOT NULL,
  `Vimage1` varchar(140) NOT NULL,
  `Vimage2` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblparks`
--

CREATE TABLE `tblparks` (
  `id` int(11) NOT NULL,
  `ParkName` varchar(35) NOT NULL,
  `CreationDate` date NOT NULL,
  `Location` varchar(45) NOT NULL,
  `UpdationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(8, 'mbuvi9@gmail.com', '2020-08-28 14:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Idno` int(11) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Idno`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'janu janu', 'mbuvi009@gmail.com', 1237958, 'a5be851ba7625087f223b35ea780fec0', '0701237958', '01/01/1998', 'kaumoni', 'wote', 'wote', '2020-08-24 11:20:10', '2020-08-31 12:51:11'),
(4, 'collins wendwa', 'mwendwacollins935@gmail.com', 740420698, '7ab0b7f1d2f6ac8c7922b8b2fe5ec373', '0701237958', NULL, NULL, NULL, NULL, '2020-09-02 15:18:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `ParkName` varchar(150) DEFAULT NULL,
  `Location` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `Lots` int(45) DEFAULT NULL,
  `BookedLots` int(6) DEFAULT NULL,
  `FreeLots` int(11) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `shaded` varchar(15) NOT NULL,
  `pimg1` varchar(120) NOT NULL,
  `pimg2` varchar(120) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `ParkName`, `Location`, `PricePerDay`, `Lots`, `BookedLots`, `FreeLots`, `status`, `shaded`, `pimg1`, `pimg2`, `UpdationDate`) VALUES
(1, 'MLOLONGO', 'MACHAKOS', 100, 100, 2, 98, '', 'Yes', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `fname` varchar(35) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `idno` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `worklevel` varchar(45) NOT NULL,
  `parkname` varchar(55) NOT NULL,
  `salary` int(6) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`fname`, `phone`, `email`, `idno`, `location`, `worklevel`, `parkname`, `salary`, `id`) VALUES
('Katumbi', 745896324, 'janu1@gmail.com', 234577, 'nairbi', 'supervisor', '', 12500, 31),
('rita', 745869312, 'rita@gmail.com', 34570845, 'kibwezi', 'supervisor', '', 10000, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `BookingNumber` (`BookingNumber`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllostcars`
--
ALTER TABLE `tbllostcars`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`idno`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbllostcars`
--
ALTER TABLE `tbllostcars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
