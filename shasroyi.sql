-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 10:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shasroyi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminName` varchar(200) NOT NULL,
  `AdminPass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminName`, `AdminPass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Name` varchar(200) NOT NULL,
  `Price` int(200) NOT NULL,
  `Details` varchar(200) NOT NULL,
  `ShopName` varchar(200) NOT NULL,
  `Distance` int(200) NOT NULL,
  `ShopAddress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Name`, `Price`, `Details`, `ShopName`, `Distance`, `ShopAddress`) VALUES
('Samsung S8', 50000, 'Camera Shei', 'North Tower', 1, 'Uttara'),
('Samsung S8', 40000, 'Camera Nice, Curved Display', 'Rajuk Commercial ', 1, 'Uttara, sector 7'),
('iphone 11', 80000, 'Pro Phone', 'Bashundhara City Complex', 15, 'Panthapath'),
('iphone 11', 70000, 'Joss Phone', 'Jamuna Future park', 10, 'Bashundhara'),
('iphone 11', 70000, 'Great Phone', 'North Tower', 1, 'Uttara, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserName` varchar(200) NOT NULL,
  `UserNumber` varchar(200) NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `UserPassword` varchar(200) NOT NULL,
  `UserAddress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserName`, `UserNumber`, `UserEmail`, `UserPassword`, `UserAddress`) VALUES
('sakibkhan', '01918779365', 'hrk.sakib@gmail.com', '1234', 'uttara, dhaka'),
('hrksakib', '01918779365', 'hrk.sakib@gmail.com', '1234', 'Sector 7');

-- --------------------------------------------------------

--
-- Table structure for table `userpurchaselist`
--

CREATE TABLE `userpurchaselist` (
  `UserName` varchar(200) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `ProductPrice` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userpurchaselist`
--

INSERT INTO `userpurchaselist` (`UserName`, `ProductName`, `ProductPrice`) VALUES
('hrksakib', 'iphone 11', 70000),
('hrksakib', 'Samsung S8', 40000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
