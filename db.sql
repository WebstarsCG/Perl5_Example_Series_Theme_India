-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2018 at 02:10 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: india_demo
--

-- --------------------------------------------------------

--
-- Table structure for table states
--

CREATE TABLE states (
  id tinyint(4) NOT NULL,
  code char(2) NOT NULL,
  name varchar(32) NOT NULL,
  timestamp_punch timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table states
--

INSERT INTO states (id, code, name, timestamp_punch) VALUES
(1, 'TN', 'Tamil Nadu', '2018-06-07 23:53:51'),
(2, 'AS', 'Assam', '2018-06-07 23:51:46'),
(17, 'MA', 'MANIPUR', '2018-08-05 12:08:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table states
--
ALTER TABLE states
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table states
--
ALTER TABLE states
  MODIFY id tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
