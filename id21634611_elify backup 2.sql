-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2024 at 02:55 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21634611_elify`
--

-- --------------------------------------------------------

--
-- Table structure for table `addqs`
--

CREATE TABLE `addqs` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ADD_Q` int(50) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addqs`
--

INSERT INTO `addqs` (`ID`, `NAME`, `ADD_Q`, `DATES`) VALUES
(1, 'Malarone', 33, '2022-08-14'),
(2, 'Amala', 20, '2022-08-14'),
(3, 'Ibrofen', 14, '2022-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(11) NOT NULL,
  `SUBCHURCH` varchar(100) NOT NULL,
  `EVENT` varchar(100) NOT NULL,
  `MALE` int(50) NOT NULL,
  `FEMALE` int(50) NOT NULL,
  `TOTAL` int(100) NOT NULL,
  `DATES` date NOT NULL,
  `RDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `SUBCHURCH`, `EVENT`, `MALE`, `FEMALE`, `TOTAL`, `DATES`, `RDATE`) VALUES
(9, 'Adult Church', 'Sunday Service - Every Sunday - 08:00', 114, 432, 546, '2023-11-26', '2023-11-29'),
(10, 'Children Church', 'Sunday Service - Every Sunday - 08:00', 32, 54, 86, '2023-11-26', '2023-11-29'),
(11, 'Adult Church', 'Sunday Service - Every Sunday - 08:00', 431, 234, 665, '2023-11-27', '2023-11-28'),
(12, 'Adult Church', 'Bible Study with God - Every Tuesday - 17:30', 200, 502, 702, '2023-11-27', '2023-11-30'),
(13, 'Adult Church', 'Bible Study with God - Every Tuesday - 17:30', 100, 200, 300, '2023-11-28', '2023-11-30'),
(14, 'Adult Church', 'Sunday Service - Every Sunday - 08:00', 500, 600, 1100, '2023-11-30', '2023-11-30'),
(15, 'Adult Church', 'Sunday Service - Every Sunday - 08:00', 456, 345, 801, '2024-01-21', '2024-01-21'),
(16, 'Adult Church', 'Sunday Service - Every Sunday - 08:00', 30, 69, 99, '2024-02-21', '2024-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(1, 'Drugs'),
(2, 'Other Products');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(20) NOT NULL,
  `EMAIL` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`, `EMAIL`) VALUES
(2, 'Adebisi', 'Mary', '08034210923', 'stella@gmail.com'),
(3, 'Ogunlana', 'Bola', '09076456732', 'ogunlana@gmail.com'),
(4, 'Adebisi', 'Tolani', '09045656554', 'tolani@gmail.com'),
(5, 'James', 'Ola', '08032451234', 'jola@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cust_id`
--

CREATE TABLE `cust_id` (
  `ID` int(11) NOT NULL,
  `CID` varchar(200) NOT NULL,
  `DATESS` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cust_id`
--

INSERT INTO `cust_id` (`ID`, `CID`, `DATESS`) VALUES
(16, 'A69613', '2022-08-27'),
(17, 'A58214', '2022-08-27'),
(18, 'A19681', '2022-08-27'),
(19, 'A84274', '2022-08-27'),
(20, 'A6377', '2022-08-27'),
(21, 'A93332', '2022-08-28'),
(22, 'A15407', '2022-08-28'),
(23, 'A39934', '2022-08-28'),
(24, 'A75079', '2022-08-28'),
(25, 'A15620', '2022-08-28'),
(26, 'A93350', '2022-08-28'),
(27, 'A64000', '2022-08-28'),
(28, 'A59882', '2022-08-28'),
(29, 'A83896', '2022-08-28'),
(30, 'A8877', '2022-08-28'),
(31, 'A7587', '2022-08-28'),
(32, 'A17224', '2022-08-28'),
(33, 'A32812', '2022-08-28'),
(34, 'A92067', '2022-08-29'),
(35, 'A82640', '2022-08-29'),
(36, 'A69496', '2023-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `ID` int(11) NOT NULL,
  `SUB` varchar(200) NOT NULL,
  `EVENTS` varchar(300) NOT NULL,
  `EVENT` varchar(200) NOT NULL,
  `MODE` varchar(200) NOT NULL,
  `N5` int(100) NOT NULL,
  `N10` int(100) NOT NULL,
  `N20` int(100) NOT NULL,
  `N50` int(100) NOT NULL,
  `N100` int(100) NOT NULL,
  `N200` int(100) NOT NULL,
  `N500` int(100) NOT NULL,
  `N1000` int(100) NOT NULL,
  `TOTAL` int(100) NOT NULL,
  `DATES` date NOT NULL,
  `RDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`ID`, `SUB`, `EVENTS`, `EVENT`, `MODE`, `N5`, `N10`, `N20`, `N50`, `N100`, `N200`, `N500`, `N1000`, `TOTAL`, `DATES`, `RDATE`) VALUES
(1, 'Adult Church', 'Bible Study with God - Monday', 'Offering', 'Cash', 0, 2, 3, 5, 1, 2, 2, 3, 4830, '2023-10-20', '2023-10-20'),
(2, 'Adult Church', 'Bible Study with God - Monday', 'Offering', 'Cash', 0, 2, 3, 0, 5, 2, 1, 2, 3480, '2023-10-18', '2023-10-21'),
(4, 'Adult Church', 'Bible Study with God - Monday', 'Tithe', 'Cash', 0, 0, 0, 4, 5, 2, 1, 2, 3600, '2023-10-20', '2023-10-21'),
(5, 'Adult Church', 'Bible Study with God - Monday', 'Offering', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 3000, '2023-10-20', '2023-10-21'),
(6, 'Youth Church', 'Bible Study with God - Monday', 'Tithe', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 3500, '2023-10-20', '2023-10-21'),
(7, 'Youth Church', 'Bible Study with God - Monday', 'Tithe', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 2300, '2023-10-21', '2023-10-21'),
(8, 'Adult Church', 'Bible Study with God - Monday', 'Building Project', 'Cash', 0, 0, 0, 0, 5, 0, 2, 1, 2500, '2023-10-23', '2023-10-21'),
(9, 'Youth Church', 'One minute with God - Thursday', 'Building Project', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 1600, '2023-10-30', '2023-10-21'),
(10, 'Adult Church', 'Bible Study with God - Every Tuesday', 'Offering', 'Cash', 0, 0, 0, 23, 0, 10, 0, 5, 8150, '2023-11-30', '2023-11-30'),
(11, 'Adult Church', 'Sunday Service - Every Sunday', 'Tithe', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 7500, '2023-11-30', '2023-11-30'),
(12, 'Adult Church', 'Sunday Service - Every Sunday', 'Children Support', 'Cash', 0, 0, 0, 0, 0, 0, 0, 10, 10000, '2024-01-23', '2024-01-23'),
(13, 'Adult Church', 'The God of 24hrs Miracle - 22-11-2023', 'Children Support', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 250, '2024-01-23', '2024-01-23'),
(14, 'Adult Church', 'Bible Study with God - Every Tuesday', 'Tithe', 'Bank', 0, 0, 0, 0, 0, 0, 0, 0, 5000, '2024-01-31', '2024-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `donation_type`
--

CREATE TABLE `donation_type` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(100) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation_type`
--

INSERT INTO `donation_type` (`ID`, `NAMES`, `DATES`) VALUES
(2, 'Offering', '2023-10-18'),
(3, 'Tithe', '2023-10-18'),
(4, 'Building Project', '2023-10-21'),
(5, 'Children Support', '2024-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `GENDER` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PHONE_NUMBER` varchar(20) NOT NULL,
  `JOB_ID` int(11) NOT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(2, 'Elify CMS', '21, Olukolu Street, Ijebu-Ife', 'Male', 'olamidejohn123@gmail.com', '09039330304', 1, '2023-10-15', 5),
(3, 'Audu Olamide', '44, Ayegbami Street, Ijebu-Ife', 'Female', 'auduolammy@gmail.com', '09056432563', 2, '2023-10-14', 6),
(4, 'Olabisi Mary', '3, Ruth Street', 'Female', 'olabisimary@gmail.com', '08134546565', 2, '2023-10-15', 8),
(5, 'Josh Avatar', '32, avatar street', 'Male', 'avatar@gmail.com', '08034567832', 3, '2023-10-15', 9),
(6, 'Bola Jummy', '34, bolasile street', 'Female', 'jummy@gmail.com', '07045654321', 1, '2023-10-15', 10),
(7, 'Goodness Wisdom', '7, wisdom street', 'Male', 'wisdom@gmail.com', '09020103454', 1, '2023-10-16', 11),
(8, 'Mr. Olakunle Mercy', '30, Mercy Street, Oke-Ife', 'Male', 'mercy@gmail.com', '09056032031', 1, '2023-11-07', 12),
(9, 'Kelvin Benjamin', 'Enjoy Ondo Road', 'Male', 'kelvin@gmail.com', '09056325641', 1, '2024-01-31', 13),
(10, 'Olamide Flavour', '44, olamide street, lagos', 'Female', 'olammy@gmail.com', '09053298908', 1, '2024-02-06', 14);

-- --------------------------------------------------------

--
-- Table structure for table `evangelism`
--

CREATE TABLE `evangelism` (
  `ID` int(11) NOT NULL,
  `FNAME` varchar(100) NOT NULL,
  `PHONE` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `EVAN` varchar(200) NOT NULL,
  `LOCATION` varchar(200) NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evangelism`
--

INSERT INTO `evangelism` (`ID`, `FNAME`, `PHONE`, `EMAIL`, `ADDRESS`, `EVAN`, `LOCATION`, `DATE`) VALUES
(1, 'Wale Adewale', '08023415692', 'wale@gmail.com', '31, temi street, north gate', 'Mr. Ola', 'Male', '2023-11-15'),
(3, 'Olamide Johnson', '09034245190', 'olamide@gmail.com', '44, Ayegbami Stress, Ijebu - Ife', 'Mr. Femi', 'Female', '2023-11-12'),
(4, 'Temi Emmanuel', '09043211981', 'temi@gmail.com', '33, temi street, north gate', 'Mr. Ola', 'Female', '2023-11-12'),
(5, 'Ruth Gift', '08134229383', 'gift@gmail.com', '1, akinwale street, ijebu ife', 'Yetunde', 'Female', '2023-11-11'),
(6, 'Mr. Tolani Jacob', '09045236510', 'jacob@gmail.com', 'Olatunde Street, Ijebu-ife Ogun State ', 'Mr. Happiness', 'Male', '2023-11-17'),
(7, 'Mr. Holar', '0904532123', 'holar@gmail.com', '21, holar street, Akure', 'Mrs. Olatunji', 'Female', '2023-11-25'),
(8, 'Bro. Olamilekan', '07056050429', 'lekan@gmail.com', '29, Olamilekan Street, Oke-Ife', 'Mr. Goodluck', 'Male', '2023-11-27'),
(9, 'Olatunde Ruth', '09067864321', 'ruth@gmail.com', 'Winner Street FUTA northgate ', 'Mr. Joseph', 'Female', '2023-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(200) NOT NULL,
  `DAY` varchar(200) NOT NULL,
  `TIME` varchar(100) NOT NULL,
  `VENUE` varchar(200) NOT NULL,
  `CLASS` varchar(200) NOT NULL,
  `MODE` int(100) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `NAMES`, `DAY`, `TIME`, `VENUE`, `CLASS`, `MODE`, `DATES`) VALUES
(1, 'Bible Study with God', 'Every Tuesday', '17:30', 'Church Auditorium', 'fixed', 0, '2023-11-10'),
(2, 'Women Deliverance Program', '15-11-2023', '10:00', 'Regional Headquarter', 'upcoming', 0, '2023-11-10'),
(3, 'One minute with God', 'Every Thursday', '10:00', 'Church Auditorium', 'fixed', 0, '2023-11-10'),
(4, 'The power of God is here', '20-11-2023', '10:00', 'Church Auditorium', 'upcoming', 0, '2023-11-10'),
(5, 'Sunday Service', 'Every Sunday', '08:00', 'Church Auditorium', 'fixed', 0, '2023-11-10'),
(6, 'Anointing and Deliverance Service', '16-11-2023', '08:30', 'Church Auditorium', 'upcoming', 1, '2023-11-10'),
(7, 'The God of 24hrs Miracle', '22-11-2023', '15:00', 'Church Auditorium', 'upcoming', 0, '2023-11-10'),
(8, 'Hour of Favour', '02-02-2024', '13:12', 'Church Auditorium', 'upcoming', 0, '2024-01-31'),
(9, 'Goodness and Mercy', '20-02-2024', '23:23', 'Church Building', 'upcoming', 1, '2024-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(200) NOT NULL,
  `PRICE` int(200) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expenditure`
--

INSERT INTO `expenditure` (`ID`, `NAMES`, `PRICE`, `DATES`) VALUES
(1, 'Electricity', 500, '2022-08-25'),
(2, 'Transport', 300, '2022-08-25'),
(3, 'Electricity', 500, '2022-08-24'),
(4, 'Banner', 2000, '2023-10-22'),
(5, 'Speaker', 460, '2023-12-15'),
(6, 'Books', 7000, '2024-02-02'),
(7, 'Books', 1200, '2024-02-02'),
(8, 'Error Correction', 2000, '2024-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `ID` int(11) NOT NULL,
  `TYPE` varchar(200) NOT NULL,
  `SERIES` varchar(200) NOT NULL,
  `PICTURE` varchar(200) NOT NULL,
  `DATES` date NOT NULL,
  `RDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`ID`, `TYPE`, `SERIES`, `PICTURE`, `DATES`, `RDATE`) VALUES
(145, 'Sunday Service - Every Sunday - 08:00', 'gallery706-2024-02-13nosleepforthewickedooohttps://www.facebook.com/', 'gal7544505blog-1.jpg', '2024-02-13', '2024-02-13'),
(146, 'The God of 24hrs Miracle - 22-11-2023 - 15:00', 'gallery1818-2024-02-15nosleepforthewickedooohttps://www.like4like.org', 'gal5530617blog-3.jpg', '2024-02-15', '2024-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(200) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`ID`, `NAMES`, `DATES`) VALUES
(1, 'Choir', '2023-10-13'),
(2, 'Prayer Unit', '2023-10-14'),
(3, 'Welfare Unit', '2023-10-16'),
(8, 'Evangelism Unit', '2023-10-19'),
(9, 'Ushering Unit', '2023-11-02'),
(10, 'Beautification Unit', '2023-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Adult Church'),
(2, 'Youth Church'),
(3, 'Children Church'),
(5, 'Teen Church');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) NOT NULL,
  `CITY` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(1, 'Ijebu Ife', 'Ogun'),
(2, 'Ogun State', 'Ijebu - Ife'),
(3, 'Aklan', 'Ibajay'),
(4, 'Ogun', 'Ijebu-East'),
(5, 'Abia', 'Aba North'),
(6, 'Lagos', 'Agege'),
(7, '', ''),
(8, 'Ogun', 'Ijebu-Ode'),
(9, 'Bauchi', 'Bauchi'),
(10, 'Bauchi', 'Bogoro'),
(11, 'Oyo', 'Akinyele'),
(12, 'Federal Capital Territory', 'Abuja'),
(13, 'Bayelsa', 'Ogbia'),
(14, 'Lagos', 'Epe');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Binoculars', 'Lite', 1, 'PC@00', '2147483647');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) NOT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  `SUPPLIER_ID` int(11) NOT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`) VALUES
(3, '846369', 'Yeast', 'For eye infection', 33, 300, 250, 1, 1, '2022-07-30'),
(4, '163146', 'Vitamin C', 'For vitamic ', 55, 200, 150, 1, 1, '2022-08-05'),
(5, '168615', 'Ibrofen', 'For pain relief', 49, 400, 300, 1, 1, '2022-08-05'),
(6, '232725', 'Paracetamol', 'For Headache and pain', 10, 150, 100, 1, 1, '2022-08-09'),
(46, '219462', 'Amala', 'For malaria and fever', 28, 500, 400, 1, 1, '2022-08-09'),
(47, '388893', 'Malarone', 'A drug to prevent malaria', 87, 300, 200, 1, 1, '2022-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `sale_entry`
--

CREATE TABLE `sale_entry` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `QUANTITY` int(50) NOT NULL,
  `PRICE` int(50) NOT NULL,
  `PROFIT` int(50) NOT NULL,
  `OPENING_STOCK` int(50) NOT NULL,
  `RQUANTITY` int(50) NOT NULL,
  `NET_INCOME` int(100) NOT NULL,
  `NET_PROFIT` int(100) NOT NULL,
  `SALE_DATE` date NOT NULL,
  `CID` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sale_entry`
--

INSERT INTO `sale_entry` (`ID`, `NAME`, `QUANTITY`, `PRICE`, `PROFIT`, `OPENING_STOCK`, `RQUANTITY`, `NET_INCOME`, `NET_PROFIT`, `SALE_DATE`, `CID`) VALUES
(36, 'Amala', 2, 1000, 200, 40, 38, 1000, 200, '2022-08-07', 'A69613'),
(37, 'Vitamin C', 2, 400, 100, 67, 65, 1400, 300, '2022-08-07', 'A69613'),
(38, 'Paracetamol', 1, 200, 100, 20, 19, 1600, 400, '2022-08-07', 'A58214'),
(39, 'Malarone', 1, 250, 50, 94, 93, 1850, 450, '2022-08-07', 'A58214'),
(40, 'Paracetamol', 2, 400, 200, 19, 17, 2250, 650, '2022-08-10', 'A19681'),
(41, 'Amala', 1, 500, 100, 38, 37, 2750, 750, '2022-08-10', 'A84274'),
(42, 'Yeast', 2, 600, 100, 42, 40, 3350, 850, '2022-08-14', 'A6377'),
(43, 'Malarone', 2, 500, 100, 93, 91, 3850, 950, '2022-08-14', 'A6377'),
(44, 'Paracetamol', 2, 400, 200, 17, 15, 4250, 1150, '2022-08-20', 'A93332'),
(45, 'Amala', 1, 500, 100, 37, 36, 4750, 1250, '2022-08-20', 'A93332'),
(46, 'Yeast', 3, 900, 150, 40, 37, 5650, 1400, '2022-08-20', 'A15407'),
(47, 'Malarone', 1, 250, 50, 91, 90, 5900, 1450, '2022-08-20', 'A15407'),
(48, 'Vitamin C', 1, 250, 100, 65, 64, 6150, 1550, '2022-08-20', 'A39934'),
(49, 'Vitamin C', 2, 500, 200, 64, 62, 6650, 1750, '2022-08-23', 'A75079'),
(50, 'Malarone', 2, 500, 100, 90, 88, 7150, 1850, '2022-08-23', 'A15620'),
(51, 'Amala', 1, 500, 100, 36, 35, 7650, 1950, '2022-08-25', 'A93350'),
(52, 'Ibrofen', 1, 400, 100, 50, 49, 8050, 2050, '2022-08-25', 'A64000'),
(53, 'Malarone', 1, 250, 50, 88, 87, 8300, 2100, '2022-08-25', 'A64000'),
(54, 'Yeast', 3, 900, 150, 37, 34, 9200, 2250, '2022-08-28', 'A59882'),
(55, 'Paracetamol', 3, 600, 300, 15, 12, 9800, 2550, '2022-08-28', 'A83896'),
(56, 'Amala', 2, 1000, 200, 35, 33, 10800, 2750, '2022-08-28', 'A8877'),
(57, 'Vitamin C', 2, 400, 100, 62, 60, 11200, 2850, '2022-08-28', 'A7587'),
(58, 'Amala', 2, 1000, 200, 33, 31, 12200, 3050, '2022-08-28', 'A7587'),
(59, 'Vitamin C', 2, 500, 200, 60, 58, 12700, 3250, '2022-08-28', 'A7587'),
(60, 'Paracetamol', 2, 400, 200, 12, 10, 13100, 3450, '2022-08-28', 'A17224'),
(61, 'Vitamin C', 3, 750, 300, 58, 55, 13850, 3750, '2022-08-28', 'A17224'),
(62, 'Amala', 1, 500, 100, 31, 30, 14350, 3850, '2022-08-28', 'A32812'),
(63, 'Yeast', 1, 250, 0, 34, 33, 14600, 3850, '2022-08-29', 'A92067'),
(64, 'Amala', 2, 1000, 200, 30, 28, 15600, 4050, '2022-08-29', 'A92067');

-- --------------------------------------------------------

--
-- Table structure for table `sermon`
--

CREATE TABLE `sermon` (
  `ID` int(11) NOT NULL,
  `TYPE` varchar(200) NOT NULL,
  `PASTOR` varchar(200) NOT NULL,
  `BIBLE` varchar(200) NOT NULL,
  `PICTURE` varchar(200) NOT NULL,
  `AUDIO` text NOT NULL,
  `MESSAGE` text NOT NULL,
  `DATES` date NOT NULL,
  `RDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sermon`
--

INSERT INTO `sermon` (`ID`, `TYPE`, `PASTOR`, `BIBLE`, `PICTURE`, `AUDIO`, `MESSAGE`, `DATES`, `RDATE`) VALUES
(14, 'Women Deliverance Program - Saturday - 10:00', 'Honouring your husband by Pastor Mrs. Okere', 'James 5 vs 3', 'px5255690test.jpg', 'aud5959666mixkit-dry-pop-up-notification-alert-2356.wav', '<h2><a href=\"http://binoculars.epizy.com\"><strong>The word of God is powerful</strong></a></h2>\n\n<p><code><big>PCRE2 is a library of functions to support regular expressions whose syntax and semantics are as close as possible to those of the Perl 5 language.</big></code></p>\n\n<p><code><big>Releases 10.00 and above of PCRE2 are distributed under the terms of the &quot;BSD&quot; licence, as specified below, with one exemption for certain binary redistributions. The documentation for PCRE2, supplied in the &quot;doc&quot; directory, is distributed under the same terms as the software itself. The data in the testdata directory is not copyrighted and is in the public domain.</big></code></p>\n\n<p><code><big>The basic library functions are written in C and are freestanding. Also included in the distribution is a just-in-time compiler that can be used to optimize pattern matching. This is an optional feature that can be omitted when the library is built.</big></code></p>\n\n<p><code><big>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</big></code></p>\n\n<ol>\n	<li>\n	<p><code><big>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</big></code></p>\n	</li>\n	<li>\n	<p><code><big>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</big></code></p>\n	</li>\n	<li>\n	<p><code><big>The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.</big></code></p>\n	</li>\n</ol>\n\n<p><code><big>Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.</big></code></p>\n\n<p><code><big>This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. &quot;Derived works&quot; includes all programs that utilize the library. Credit must be given in user accessible documentation.</big></code></p>\n\n<p><code><big>This software is provided &quot;AS IS.&quot; The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.</big></code></p>\n\n<p><code><big>Although their code does not appear in the current release, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.</big></code></p>\n\n<p><a href=\"http://binoculars.epizy.com\">Watch our video</a></p>\n', '2023-10-19', '2023-10-20'),
(15, 'Bible Study with God - Monday - 17:30', 'The word of God is powerful by Pastor J.B. Ola', 'John 3 vs 16', 'px4427470into.jpg', 'aud5959666mixkit-dry-pop-up-notification-alert-2356.wav', '<h3><small>In this series we are studying the Bible&#39;s declarations about the supernatural character of the Word of God. We are focusing on Hebrews 4:12-13 as our anchor passage. Let us briefly review what we have seen thus far.</small></h3>\r\n\r\n<h3><small>First of all, we focused on the question, &quot;What exactly is the Word of God?&quot; We saw that it is God&#39;s revelation, given by inspiration. The inspiration of Scripture is not on a human, naturalistic plane. It is supernatural. The Bible is not the record of man&#39;s views, perspectives, or interpretation of events. Man did not&nbsp;<em>decide</em>&nbsp;what is true and what is not true. God has&nbsp;<em>revealed</em>&nbsp;what is true. What God has communicated in written form on Earth is His Word forever settled in Heaven (Psalm 119:89).</small></h3>\r\n\r\n<h3><small>Secondly, we focused on the question, &quot;What does Hebrews 4:12 mean when it says that &#39;the Word of God is alive&#39; &quot;? The word in the original language that is translated &quot;living&quot; or &quot;alive&quot; in this verse has to do with the manifestation of Divine power in support of Divine authority. It speaks of the fact that Scripture is worthy of the name &quot;the Word of God&quot; for the very reason that it is alive. The word also signifies that this is the ever-continuing condition of the Word of God. It is never dead, never without authority, never anything less than the Word of God, and never anything less than supernatural in its power. It is ever worthy of the name, &quot;the Word of God&quot;. It is never less than, or anything other than, the expression of God&#39;s actual thoughts.</small></h3>\r\n\r\n<h3><small><strong>The Definition of &quot;Powerful&quot;</strong></small></h3>\r\n\r\n<h3><small>Today we come to a third question: What does Hebrews 4:12 mean when it declares that the Word of God is &quot;powerful&quot;?</small></h3>\r\n\r\n<h3><small>The word in the original language is the root word from which we derive our English words &quot;energy&quot; and &quot;energetic&quot;. It speaks of the fact that the Word of God has&nbsp;<em>active</em>&nbsp;power. It speaks of the fact that the Word of God has&nbsp;<em>effectual</em>&nbsp;power - power that produces results, power that is capable of causing something to happen. It is Divine power, and therefore&nbsp;<em>living</em>&nbsp;power. The Word of God has that kind of power because it is the only supernatural Book.</small></h3>\r\n\r\n<h3><small>The Word that endures forever, the powerful Word, is the Gospel that is preached to mankind. That is the theme of Scripture from beginning to end. It is by the power of the Word of God, by the work of the Holy Spirit, that souls are saved. It is by the power of the Word of God that minds and hearts are changed,</small></h3>\r\n\r\n<h3><small>having been born again, not of corruptible seed but incorruptible, through the Word of God which lives and abides forever, because &quot;all flesh is as grass, and all the glory of man as the flower of the grass. The grass withers, and its flower falls away, but the Word of the Lord endures forever.&quot; Now this is the Word which by the Gospel was preached to you. (1 Peter 1:23-25)</small></h3>\r\n\r\n<h3><small>It is by the active, effectual power of the Word of God that the saved are sanctified. It is by this power of the Word of God that the external reality of our justification by faith - being clothed with the imputed righteousness of Christ even though we are undeserving sinners - is made an inward reality as we are, as 2 Timothy 3:17 tells us, &quot;thoroughly equipped&quot; [literally, thoroughly outfitted] for every good work.&quot;</small></h3>\r\n\r\n<h2><a href=\"http://youtu.be/0B_IHmSm7tw\" target=\"_blank\"><code>Watch Sermon Video</code></a></h2>\r\n', '2023-10-30', '2023-11-02'),
(16, 'Bible Study with God - Monday - 17:30', 'God is great by Mr. Akinwale O.S', 'James 1 vs 3', 'px1548320signup.jpg', 'aud5959666mixkit-dry-pop-up-notification-alert-2356.wav', '<h2><a href=\"http://binoculars.epizy.com\"><strong>The word of God is powerful</strong></a></h2>\n\n<p><code><big>PCRE2 is a library of functions to support regular expressions whose syntax and semantics are as close as possible to those of the Perl 5 language.</big></code></p>\n\n<p><code><big>Releases 10.00 and above of PCRE2 are distributed under the terms of the &quot;BSD&quot; licence, as specified below, with one exemption for certain binary redistributions. The documentation for PCRE2, supplied in the &quot;doc&quot; directory, is distributed under the same terms as the software itself. The data in the testdata directory is not copyrighted and is in the public domain.</big></code></p>\n\n<p><code><big>The basic library functions are written in C and are freestanding. Also included in the distribution is a just-in-time compiler that can be used to optimize pattern matching. This is an optional feature that can be omitted when the library is built.</big></code></p>\n\n<p><code><big>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</big></code></p>\n\n<ol>\n	<li>\n	<p><code><big>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</big></code></p>\n	</li>\n	<li>\n	<p><code><big>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</big></code></p>\n	</li>\n	<li>\n	<p><code><big>The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.</big></code></p>\n	</li>\n</ol>\n\n<p><code><big>Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.</big></code></p>\n\n<p><code><big>This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. &quot;Derived works&quot; includes all programs that utilize the library. Credit must be given in user accessible documentation.</big></code></p>\n\n<p><code><big>This software is provided &quot;AS IS.&quot; The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.</big></code></p>\n\n<p><code><big>Although their code does not appear in the current release, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.</big></code></p>\n\n<p><a href=\"http://binoculars.epizy.com\">Watch our video</a></p>\n', '2023-11-07', '2023-11-07'),
(17, 'Hour of Favour - 02-02-2024 - 13:12', 'The Miracle Working God by Pastor O.R. Peters', 'Matthew 5 vs 23', 'px2076892haircut_030841.jpg', 'aud5959666mixkit-dry-pop-up-notification-alert-2356.wav', '<p>The Miracle Working God&nbsp;</p>\r\n', '2024-01-31', '2024-01-31'),
(19, 'Sunday Service - Every Sunday - 08:00', 'Winners not losers by Pastor Emmanuel P', 'Romans 3 vs 5', 'px59596662007bdfc-b224-485c-8961-00845225c10d.jpg', 'aud5959666mixkit-dry-pop-up-notification-alert-2356.wav', '<h2>&nbsp;</h2>\r\n\r\n<p><code><big>PCRE2 is a library of functions to support regular expressions whose syntax and semantics are as close as possible to those of the Perl 5 language.</big></code></p>\r\n\r\n<p><code><big>Releases 10.00 and above of PCRE2 are distributed under the terms of the &quot;BSD&quot; licence, as specified below, with one exemption for certain binary redistributions. The documentation for PCRE2, supplied in the &quot;doc&quot; directory, is distributed under the same terms as the software itself. The data in the testdata directory is not copyrighted and is in the public domain.</big></code></p>\r\n\r\n<p><code><big>The basic library functions are written in C and are freestanding. Also included in the distribution is a just-in-time compiler that can be used to optimize pattern matching. This is an optional feature that can be omitted when the library is built.</big></code></p>\r\n\r\n<p><code><big>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</big></code></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><code><big>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</big></code></p>\r\n	</li>\r\n	<li>\r\n	<p><code><big>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</big></code></p>\r\n	</li>\r\n	<li>\r\n	<p><code><big>The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.</big></code></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><code><big>Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.</big></code></p>\r\n\r\n<p><code><big>This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. &quot;Derived works&quot; includes all programs that utilize the library. Credit must be given in user accessible documentation.</big></code></p>\r\n\r\n<p><code><big>This software is provided &quot;AS IS.&quot; The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.</big></code></p>\r\n\r\n<p><code><big>Although their code does not appear in the current release, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.</big></code></p>\r\n\r\n<p><a href=\"http://binoculars.epizy.com\">Watch our video</a></p>\r\n', '2024-02-15', '2024-02-15'),
(21, 'The God of 24hrs Miracle - 22-11-2023 - 15:00', 'The power of the cross by Pastor Olubanjo Onita', 'Peters 3 vs 2', 'px6147419istockphoto-1185943155-612x612.jpg', 'aud6147419', '<h2>&nbsp;</h2>\r\n\r\n<p><code><big>PCRE2 is a library of functions to support regular expressions whose syntax and semantics are as close as possible to those of the Perl 5 language.</big></code></p>\r\n\r\n<p><code><big>Releases 10.00 and above of PCRE2 are distributed under the terms of the &quot;BSD&quot; licence, as specified below, with one exemption for certain binary redistributions. The documentation for PCRE2, supplied in the &quot;doc&quot; directory, is distributed under the same terms as the software itself. The data in the testdata directory is not copyrighted and is in the public domain.</big></code></p>\r\n\r\n<p><code><big>The basic library functions are written in C and are freestanding. Also included in the distribution is a just-in-time compiler that can be used to optimize pattern matching. This is an optional feature that can be omitted when the library is built.</big></code></p>\r\n\r\n<p><code><big>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</big></code></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><code><big>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</big></code></p>\r\n	</li>\r\n	<li>\r\n	<p><code><big>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</big></code></p>\r\n	</li>\r\n	<li>\r\n	<p><code><big>The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.</big></code></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><code><big>Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.</big></code></p>\r\n\r\n<p><code><big>This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. &quot;Derived works&quot; includes all programs that utilize the library. Credit must be given in user accessible documentation.</big></code></p>\r\n\r\n<p><code><big>This software is provided &quot;AS IS.&quot; The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.</big></code></p>\r\n\r\n<p><code><big>Although their code does not appear in the current release, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.</big></code></p>\r\n\r\n<p><a href=\"http://binoculars.epizy.com\">Watch our video</a></p>\r\n', '2024-02-15', '2024-02-15'),
(22, 'Sunday Service - Every Sunday - 08:00', 'Help me Jesus Christ by Pastor E.O. Emmanuel', 'Romans 3 vs 2', 'px3721890indybest online shopping.jpg', 'aud3721890', '<h2>&nbsp;</h2>\r\n\r\n<p><code><big>PCRE2 is a library of functions to support regular expressions whose syntax and semantics are as close as possible to those of the Perl 5 language.</big></code></p>\r\n\r\n<p><code><big>Releases 10.00 and above of PCRE2 are distributed under the terms of the &quot;BSD&quot; licence, as specified below, with one exemption for certain binary redistributions. The documentation for PCRE2, supplied in the &quot;doc&quot; directory, is distributed under the same terms as the software itself. The data in the testdata directory is not copyrighted and is in the public domain.</big></code></p>\r\n\r\n<p><code><big>The basic library functions are written in C and are freestanding. Also included in the distribution is a just-in-time compiler that can be used to optimize pattern matching. This is an optional feature that can be omitted when the library is built.</big></code></p>\r\n\r\n<p><code><big>Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:</big></code></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><code><big>Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.</big></code></p>\r\n	</li>\r\n	<li>\r\n	<p><code><big>Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.</big></code></p>\r\n	</li>\r\n	<li>\r\n	<p><code><big>The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.</big></code></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><code><big>Permission has been granted to copy, distribute and modify gd in any context without fee, including a commercial application, provided that this notice is present in user-accessible supporting documentation.</big></code></p>\r\n\r\n<p><code><big>This does not affect your ownership of the derived work itself, and the intent is to assure proper credit for the authors of gd, not to interfere with your productive use of gd. If you have questions, ask. &quot;Derived works&quot; includes all programs that utilize the library. Credit must be given in user accessible documentation.</big></code></p>\r\n\r\n<p><code><big>This software is provided &quot;AS IS.&quot; The copyright holders disclaim all warranties, either express or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose, with respect to this code and accompanying documentation.</big></code></p>\r\n\r\n<p><code><big>Although their code does not appear in the current release, the authors wish to thank David Koblas, David Rowley, and Hutchison Avenue Software Corporation for their prior contributions.</big></code></p>\r\n\r\n<p><a href=\"http://binoculars.epizy.com\">Watch our video</a></p>\r\n', '2024-02-15', '2024-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(100) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(2, 'Green Drug', 4, '09056070710');

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE `testimony` (
  `ID` int(11) NOT NULL,
  `FNAME` varchar(200) NOT NULL,
  `TESTIMONY` text NOT NULL,
  `DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`ID`, `FNAME`, `TESTIMONY`, `DATE`) VALUES
(3, 'Dr. John', 'I want to take the name of the lord for his mercy upon my live and my family. God has been so faithful to us', '2023-11-12'),
(4, 'Chief Kuku', 'I want to take the name of the lord for his mercy upon my live and my family. God has been so faithful to us', '2023-11-12'),
(5, 'Prof. Akinwale', 'I want to thank God for his favor over my life and my family. He has been our protection since day 1 till this moment.', '2023-11-17'),
(6, 'Mr. Isaac', 'Gods faithful over my life and my family/.', '2023-11-27'),
(7, 'Mrs. Mercy Glory', 'God is really good', '2023-11-27'),
(8, 'Yemisi Favour', 'I want to thank the Lord for all he has done for me and my family. God has been so faithful to us.', '2023-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) NOT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL,
  `PRIVILEGE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`, `PRIVILEGE`) VALUES
(1, 2, 'Elify', '8cb2237d0679ca88db6464eac60da96345513964', 1, 'all'),
(15, 3, 'Ola', '8cb2237d0679ca88db6464eac60da96345513964', 2, 'event'),
(16, 5, 'Josh', '8cb2237d0679ca88db6464eac60da96345513964', 2, 'mini'),
(17, 6, 'Jummy', '8cb2237d0679ca88db6464eac60da96345513964', 2, 'attendance');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `groups` varchar(200) NOT NULL,
  `jyear` varchar(100) NOT NULL,
  `rdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`id`, `name`, `groups`, `jyear`, `rdate`) VALUES
(4, 'Tolani John (00939330304)', 'Choir', '2022', '2023-03-01'),
(6, 'Seadad Lite (09056070710)', 'Choir', '2019', '2023-10-15'),
(10, 'Audu Olamide (09056432563)', 'Choir', '2019', '2023-10-15'),
(11, 'Josh Avatar (08034567832)', 'Prayer Unit', '2018', '2023-10-15'),
(12, 'Olabisi Mary (08134546565)', 'Prayer Unit', '2023', '2023-10-16'),
(14, 'Bola Jummy (07045654321)', 'Prayer Unit', '2021', '2023-10-16'),
(15, 'Goodness Wisdom (09020103454)', 'Prayer Unit', '2020', '2023-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `workforce`
--

CREATE TABLE `workforce` (
  `ID` int(11) NOT NULL,
  `NAMES` varchar(100) NOT NULL,
  `DATES` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addqs`
--
ALTER TABLE `addqs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `cust_id`
--
ALTER TABLE `cust_id`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `donation_type`
--
ALTER TABLE `donation_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

--
-- Indexes for table `evangelism`
--
ALTER TABLE `evangelism`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `expenditure`
--
ALTER TABLE `expenditure`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `sale_entry`
--
ALTER TABLE `sale_entry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sermon`
--
ALTER TABLE `sermon`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workforce`
--
ALTER TABLE `workforce`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addqs`
--
ALTER TABLE `addqs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cust_id`
--
ALTER TABLE `cust_id`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `donation_type`
--
ALTER TABLE `donation_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `evangelism`
--
ALTER TABLE `evangelism`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenditure`
--
ALTER TABLE `expenditure`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `JOB_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sale_entry`
--
ALTER TABLE `sale_entry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `sermon`
--
ALTER TABLE `sermon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `workforce`
--
ALTER TABLE `workforce`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
