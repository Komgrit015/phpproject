-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time:
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `666`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Sex` char(6) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNO` char(10) NOT NULL,
  `DateOfBirth` char(10) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- dump ตาราง `customer`
--

/**INSERT INTO `customer` (`CustomerID`, `Name`, `Sex`, `Address`, `PhoneNO`, `DateOfBirth`) VALUES
(1001, 'Suwan', 'MALE', 'Suratthani', '0952321151', '1-1-1990'),
(1002, 'Sompong', 'MALE', 'RAnong', '096595959', '2-10-1997'),
(1003, 'Haha ', 'MALE', 'JAPAN', '0515151512', '1-6-1996');**/

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Sex` char(6) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PhoneNO` varchar(10) NOT NULL,
  `DateOfBirth` char(10) NOT NULL,
  `Salary` varchar(6) NOT NULL,
  `User` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` char(5) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- dump ตาราง `employee`
--

INSERT INTO `employee` (`EmployeeID`, `Name`, `Sex`, `Address`, `PhoneNO`, `DateOfBirth`, `Salary`, `User`, `Password`, `Status`) VALUES
(1, 'Sittinon', 'MALE', 'Surtthani', '0810842457', '10-1-1995', '10000', 'toh', '888', 'Admin'),
(2, 'Parithat', 'MALE', 'PHUKET', '0827764904', '27-3-1996', '120001', 'nut', '999', 'Admin'),
(3, 'Komgrit', 'MALE', 'Phattalung', '0937542748', '23-12-1996', '10000000', 'doctor', '015', 'Admin');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `ShipID` int(11) NOT NULL,
  `ShipAddress` varchar(100) NOT NULL,
  `Orderdate` char(10) NOT NULL,
  `Status` char(9) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- dump ตาราง `orders`
--



-- --------------------------------------------------------

--
-- โครงสร้างตาราง `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`OrderID`,`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- dump ตาราง `order_detail`
--


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Price` int(6) NOT NULL,
  `Quantity` int(4) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- dump ตาราง `product`
--

INSERT INTO `product` (`ProductID`, `Name`, `Price`, `Quantity`) VALUES
(1, 'IPHONE7', 35000, 9900),
(2, 'NOTEBOOK ASUS', 26000, 9900),
(3, 'SAMSUNG NOTE7', 25000, 9950),
(4, 'IPAD MINI', 30000, 9980);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `shipper`
--

CREATE TABLE IF NOT EXISTS `shipper` (
  `ShipID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(60) NOT NULL,
  `PhoneNO` char(10) NOT NULL,
  PRIMARY KEY (`ShipID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- dump ตาราง `shipper`
--

INSERT INTO `shipper` (`ShipID`, `CompanyName`, `PhoneNO`) VALUES
(3, 'COMPANY', '096544541'),
(4, 'DOCTOR FORD COMPANY', '087575757');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `shipper_detail`
--

CREATE TABLE IF NOT EXISTS `shipper_detail` (
  `OrderID` int(11) NOT NULL,
  `ShipID` int(11) NOT NULL,
  `ShipDate` char(10) NOT NULL,
  `Status` char(4) NOT NULL,
  PRIMARY KEY (`OrderID`,`ShipID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- dump ตาราง `shipper_detail`
--



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
