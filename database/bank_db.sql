-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 10:34 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Rashid feroz', 34, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `bank_customers`
--

CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob DEFAULT NULL,
  `Photo_name` varchar(500) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Landline_no` varchar(10) NOT NULL,
  `Home_Addr` varchar(100) NOT NULL,
  `Office_Addr` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pin_code` varchar(255) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `IFSC_Code` varchar(50) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `AADHAR` varchar(50) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT 0,
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `Debit_Card_No` varchar(50) DEFAULT NULL,
  `Debit_Card_Pin` int(4) DEFAULT NULL,
  `CVV` int(3) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Last_Login` varchar(50) DEFAULT NULL,
  `Ac_Opening_Date` varchar(255) DEFAULT NULL,
  `Account_Status` varchar(10) NOT NULL,
  `Account_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_customers`
--

INSERT INTO `bank_customers` (`Id`, `Username`, `Password`, `Customer_Photo`, `Photo_name`, `Customer_ID`, `Gender`, `Landline_no`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `City`, `Pin_code`, `Account_no`, `Branch`, `IFSC_Code`, `PAN`, `AADHAR`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `Debit_Card_No`, `Debit_Card_Pin`, `CVV`, `DOB`, `Area_Loc`, `Nominee_name`, `Nominee_ac_no`, `Last_Login`, `Ac_Opening_Date`, `Account_Status`, `Account_type`) VALUES
(1, 'Junaid', 'junaid@123', NULL, NULL, '10111', 'Male', '', 'XXX', 'XXX', 'India', 'West Bengal', 'Kolkata', '700087', '10110528510111', 'New Market Kolkata ', '10110', 'XXX', 'XXX', 10000.00, 0, '7278523122', 'mail@junaidashraf.com', '421362466207', 7214, NULL, '1995-12-10', 'New Market', '', '', '26/12/20 02:54:19 PM', '26/12/20 02:50:47 PM', 'ACTIVE', 'Saving'),
(2, 'Ashraf', 'ashraf@123', NULL, NULL, '1011010112', 'Male', '', 'XXX', 'XXX', 'India', 'West Bengal', 'Kolkata', '700087', '101104441011010112', 'New Market Kolkata ', '10110', 'XXX', 'XXX', 45000.00, 0, '9831915575', 'ashraf@gmail.com', '421364603938', 2534, NULL, '1995-12-10', 'XXX', '', '', '26/12/20 03:02:10 PM', '26/12/20 02:55:43 PM', 'ACTIVE', 'Saving');

-- --------------------------------------------------------

--
-- Table structure for table `bank_staff`
--

CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `AADHAR` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_staff`
--

INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `AADHAR`, `PAN`, `Home_addr`, `Last_login`) VALUES
(1, 'Junaid Ashraf', '210001', 'junaid@123', '7278523122', 'Nill', 'Male', 'Revenue', '10121995', '3639256458', 'COWPA5468', '21, Market Street, 3rd Floor, Kolkata - 700087', '26/12/20 03:00:59 PM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_10111`
--

CREATE TABLE `beneficiary_10111` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1011010112`
--

CREATE TABLE `beneficiary_1011010112` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary_1011010112`
--

INSERT INTO `beneficiary_1011010112` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Junaid', '10110528510111', '10110', 'Saving', 'ACTIVE', '26/12/20 03:00:07 PM');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Rashid feroz', 34, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_10111`
--

CREATE TABLE `passbook_10111` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook_10111`
--

INSERT INTO `passbook_10111` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '842697598725', '26/12/20 02:50:47 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '861930485468', '26/12/20 03:03:19 PM', 'Ashraf/101104441011010112/10110', '10000', '0', '10000', '');

-- --------------------------------------------------------

--
-- Table structure for table `passbook_1011010112`
--

CREATE TABLE `passbook_1011010112` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook_1011010112`
--

INSERT INTO `passbook_1011010112` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '589306552829', '26/12/20 02:55:43 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '583402470572', '26/12/20 03:01:35 PM', 'Cash Deposit/583402470572', '55000', '0', '55000', 'Cash Deposit'),
(3, '861930485468', '26/12/20 03:03:19 PM', 'Junaid/10110528510111/10110', '0', '10000', '45000', '');

-- --------------------------------------------------------

--
-- Table structure for table `pending_accounts`
--

CREATE TABLE `pending_accounts` (
  `Application_no` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nil',
  `Landline_no` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `AADHAR` varchar(50) DEFAULT NULL,
  `Home_Addr` varchar(100) DEFAULT NULL,
  `Office_Addr` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Account_type` varchar(50) DEFAULT NULL,
  `Application_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(1, 'sunil', '1990-05-05', 'married', 'revenue', '1999-11-11', 'kestopur12', 'sunil@gmail', 'kul@gmail.com', 'wew', 'M', '2015-01-11 10:29:48'),
(2, 'akash', '1998-08-21', 'unmarried', 'revenue', '2013-08-03', 'kolkata', '9635722546', 'akash@gmail.com', '125', 'M', '2015-01-10 21:22:59'),
(4, 'pankaj', '1989-05-31', 'married', 'revenue', '2015-01-04', 'bhagalpur13', 'pankaj@gmai', 'pankaj@gmail.com', '789', 'M', '0000-00-00 00:00:00'),
(5, 'sharma', '1980-04-21', 'married', 'revenue', '1991-01-01', 'khidirpur', '9876543210', 'sharma@gmail.com', 'sharma', 'M', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_customers`
--
ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bank_staff`
--
ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `beneficiary_10111`
--
ALTER TABLE `beneficiary_10111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011010112`
--
ALTER TABLE `beneficiary_1011010112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_10111`
--
ALTER TABLE `passbook_10111`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011010112`
--
ALTER TABLE `passbook_1011010112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`Application_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bank_customers`
--
ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_staff`
--
ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary_10111`
--
ALTER TABLE `beneficiary_10111`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary_1011010112`
--
ALTER TABLE `beneficiary_1011010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `passbook_10111`
--
ALTER TABLE `passbook_10111`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook_1011010112`
--
ALTER TABLE `passbook_1011010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
