-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2021 at 01:28 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `reg_count` (IN `type` VARCHAR(30))  begin 
select count(*) as Numbers_Of
from user_information u
where u.Type = type;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Post Code` int(5) NOT NULL,
  `Ward No` int(3) NOT NULL,
  `Holding No` int(3) NOT NULL,
  `Village Name` varchar(100) NOT NULL,
  `Thana` varchar(100) NOT NULL,
  `District` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Post Code`, `Ward No`, `Holding No`, `Village Name`, `Thana`, `District`) VALUES
(1750, 8, 19, 'chapair', 'Kaliakair', 'Gazipur'),
(1895, 5, 17, 'Chadpur', 'Mohakhali', 'Dhaka'),
(3400, 4, 42, 'Fardabad', 'Fardabad', 'Brahmanbaria'),
(3550, 2, 75, 'Fulto;i', 'Fultoli', 'Comilla'),
(3600, 3, 3, 'Namazpur', 'Namazpur', 'Chadpur'),
(4200, 3, 10, 'Pakundia', 'Pakundia', 'Kishoregang'),
(5000, 3, 55, 'Oskhali', 'Oskhali', 'Noakhali'),
(7420, 2, 79, 'Kishnonogar', 'sdfsldfkjsldkj', 'sdfsdfs'),
(8100, 3, 25, 'Gimadanga', 'Gimadanga', 'Gopalgonj'),
(8200, 1, 40, 'Baldia', 'Pirojpur', 'Pirojpur'),
(8300, 1, 12, 'Daheneia', 'Guli', 'Bhola'),
(8700, 1, 35, 'Deohani', 'Barguna', 'Barisal');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `msg1`
--

CREATE TABLE `msg1` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `national_database`
--

CREATE TABLE `national_database` (
  `NID NO` int(11) NOT NULL,
  `Date of Birth` date NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Father's Name` varchar(45) NOT NULL,
  `Mother's Name` varchar(45) NOT NULL,
  `Blood Group` char(3) NOT NULL,
  `PostCode` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `national_database`
--

INSERT INTO `national_database` (`NID NO`, `Date of Birth`, `First_Name`, `Last_Name`, `Father's Name`, `Mother's Name`, `Blood Group`, `PostCode`) VALUES
(14523, '1965-08-19', 'Bruno', 'Twilley', 'Nicholas Bickett', 'Daniella', 'AB', 4200),
(14524, '1955-07-09', 'Jonathan', 'Straker', 'Aubrey Dugal', 'Clotilde Offutt', 'AB+', 5000),
(14525, '1950-04-29', 'Susanne', 'Dussault', 'Faustino Carollo', 'Teri Maudlin', 'A+', 3400),
(14526, '1970-02-10', 'Toya', 'Jarvis', 'Waylon Rivenbark', 'Corinne Loyd', 'B+', 8700),
(14527, '1972-03-12', 'Tomas', 'Selle', 'Nathanael Skoglund', 'Pearle Carlton', 'AB+', 8300),
(14528, '1976-05-15', 'Bridgette', 'Pineo', 'Anibal Anson', 'Ivelisse Hunte', 'A+', 8200),
(14529, '1976-04-22', 'Eldridge', 'Goh', 'Kory Metoyer', 'Annabelle Baylor', 'B+', 5000),
(14530, '1986-05-25', 'Megan', 'Selleck', 'Kevin Tobia', 'Agnus Shankle', 'AB', 8100),
(14531, '1956-05-15', 'Florrie', 'Rizo', 'Cecil Flamm', 'Madlyn Avilez', 'AB+', 4200),
(14532, '1957-07-05', 'Diego', 'Kiger', 'Merlin Miguel', 'Earnestine Hann', 'A+', 1750),
(14533, '1947-09-11', 'Karen', 'Broyles', 'Julius Hiatt', 'Lorina Cuthbert', 'B+', 7420),
(14534, '1950-08-21', 'Sanda', 'Perillo', 'Jame Malbon', 'Jacquelyne Withers', 'A+', 3550),
(14535, '1952-04-30', 'Jeremy', 'Huntsberry', 'Bennett Bretz', 'Rachel Kesten', 'A+', 8100),
(14536, '1954-02-25', 'Bill', 'Rahe', 'Les Braunstein', 'Cher Hesson', 'B+', 4200),
(14537, '1967-06-05', 'Roselle', 'Monette', 'Michael Mccombs', 'Karen Broyles', 'B+', 5000),
(14538, '1969-05-22', 'Lorina', 'Cuthbert', 'Noble Acuna', 'Sanda Perillo', 'AB+', 7420),
(14539, '1972-09-12', 'Lloy', 'Sarcone', 'Rico Dustin', 'Jacquelyne Withers', 'B+', 7420),
(14540, '1973-10-10', 'Rachel', 'Kesten', 'Werner Vanpatten', 'Cher Hesson', 'A+', 3550),
(14541, '1974-11-13', 'Roselle', 'Monette', 'Jefferey Brumback', 'Tameka Pedigo', 'A+', 3550),
(14542, '1975-08-17', 'Quincy', 'Brickey', 'Florentino Vezina', 'Malissa Greeley', 'B+', 8300),
(14569, '1999-09-19', 'Dipto', 'Das', 'hsdjkfhsd', 'sdfsdfs', 'B+', 7420),
(15987, '2000-06-28', 'Pulak2', 'Saha', 'aa', 'ss', 'B-', 1750),
(111111, '2000-06-28', 'Pulak', 'Saha', 'MR. A', 'MRS. S', 'B-', 1750);

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `RegistrationNO` int(11) NOT NULL,
  `NIDNO` int(11) NOT NULL,
  `Date of Birth` date NOT NULL,
  `VaccineBatch` int(5) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  `vkey` varchar(4) DEFAULT NULL,
  `Password` char(11) NOT NULL,
  `CenterID` int(11) DEFAULT NULL,
  `Type` char(40) NOT NULL,
  `REG_TIME` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`RegistrationNO`, `NIDNO`, `Date of Birth`, `VaccineBatch`, `Email`, `vkey`, `Password`, `CenterID`, `Type`, `REG_TIME`) VALUES
(64, 111111, '2000-06-28', 20001, 'psr.reedhan@gmail.com', '6720', '36987', 115, 'University Student', '2021-09-12 13:12:16'),
(65, 15987, '2000-06-28', 36874, 'saha.pa85@gmail.com', '1741', '36987', 987, 'University Student', '2021-09-13 01:02:45'),
(66, 14569, '1999-09-19', 10011, 'diptokumar96@gmail.com', '1566', '35214', 201, 'AGE: 35 or Above', '2021-09-13 11:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `VID` int(5) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`VID`, `Name`) VALUES
(10011, 'Moderna'),
(20001, 'Pfizer'),
(36874, 'Sinopharm'),
(56987, 'Verocell');

-- --------------------------------------------------------

--
-- Table structure for table `vaccinecenter`
--

CREATE TABLE `vaccinecenter` (
  `CenterID` int(11) NOT NULL,
  `HospitalName` varchar(150) NOT NULL,
  `PostCode` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccinecenter`
--

INSERT INTO `vaccinecenter` (`CenterID`, `HospitalName`, `PostCode`) VALUES
(111, 'kalikair Medical', 1750),
(115, 'kaliakair Medical college and Hospital', 1750),
(119, 'Sripur Jonogon Hospital', 1750),
(201, 'Ad-din Sakina Medical College Hospital, Jessore', 7420),
(202, 'Aichi Hospital, Dhaka', 1750),
(203, 'Comilla Medical College Hospital, Comilla', 3550),
(204, 'Gonoshasthaya Nagar Hospital', 8300),
(205, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra', 8100),
(206, 'Sher-e-Bangla Medical College Hospital, Barisal', 8700),
(207, 'Khulna Medical College Hospital, Khulna', 8100),
(208, 'Arif Memorial Hospital, Barishal', 8700),
(209, 'Dhaka Community Hospital', 8200),
(210, 'Bangabandhu Memorial Hospital (BBMH), Chittagong', 3550),
(987, 'Dhaka Medical hospital', 1895),
(5454, 'Jhikargacha Hospital', 7420);

-- --------------------------------------------------------

--
-- Table structure for table `workeraccess`
--

CREATE TABLE `workeraccess` (
  `RegistrationNO` int(11) NOT NULL,
  `Dose1` enum('NO','YES') NOT NULL,
  `Does1 Date` date DEFAULT NULL,
  `Dose2` enum('NO','YES') NOT NULL,
  `Does2 Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workeraccess`
--

INSERT INTO `workeraccess` (`RegistrationNO`, `Dose1`, `Does1 Date`, `Dose2`, `Does2 Date`) VALUES
(64, 'YES', '2021-09-13', 'YES', '2021-10-13'),
(65, 'YES', '2021-09-13', 'YES', '2021-10-01'),
(66, 'NO', NULL, 'NO', NULL);

--
-- Triggers `workeraccess`
--
DELIMITER $$
CREATE TRIGGER `DOSE_DATE_UPDATE` AFTER UPDATE ON `workeraccess` FOR EACH ROW BEGIN
if !(new.`Does1 Date` <=> old.`Does1 Date`)
THEN
INSERT INTO msg VALUES(old.`RegistrationNO`);
ELSEIF !(new.`Does2 Date` <=> old.`Does2 Date`)
THEN
INSERT INTO msg1 VALUES(old.`RegistrationNO`);

END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Post Code`);

--
-- Indexes for table `msg1`
--
ALTER TABLE `msg1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_database`
--
ALTER TABLE `national_database`
  ADD PRIMARY KEY (`NID NO`),
  ADD KEY `PostCode` (`PostCode`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`RegistrationNO`),
  ADD UNIQUE KEY `NID NO` (`NIDNO`),
  ADD KEY `CenterID` (`CenterID`),
  ADD KEY `VaccineBatch` (`VaccineBatch`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`VID`);

--
-- Indexes for table `vaccinecenter`
--
ALTER TABLE `vaccinecenter`
  ADD PRIMARY KEY (`CenterID`),
  ADD KEY `fk_PostCode` (`PostCode`);

--
-- Indexes for table `workeraccess`
--
ALTER TABLE `workeraccess`
  ADD PRIMARY KEY (`RegistrationNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `RegistrationNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msg1`
--
ALTER TABLE `msg1`
  ADD CONSTRAINT `msg1_ibfk_1` FOREIGN KEY (`id`) REFERENCES `workeraccess` (`RegistrationNO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `national_database`
--
ALTER TABLE `national_database`
  ADD CONSTRAINT `PostCode` FOREIGN KEY (`PostCode`) REFERENCES `address` (`Post Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_information`
--
ALTER TABLE `user_information`
  ADD CONSTRAINT `NID NO` FOREIGN KEY (`NIDNO`) REFERENCES `national_database` (`NID NO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_information_ibfk_1` FOREIGN KEY (`CenterID`) REFERENCES `vaccinecenter` (`CenterID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_information_ibfk_2` FOREIGN KEY (`VaccineBatch`) REFERENCES `vaccine` (`VID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaccinecenter`
--
ALTER TABLE `vaccinecenter`
  ADD CONSTRAINT `fk_PostCode` FOREIGN KEY (`PostCode`) REFERENCES `address` (`Post Code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workeraccess`
--
ALTER TABLE `workeraccess`
  ADD CONSTRAINT `workeraccess_ibfk_1` FOREIGN KEY (`RegistrationNO`) REFERENCES `user_information` (`RegistrationNO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
