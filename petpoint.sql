-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 04:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petpoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendanceid` int(11) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `attendance_type` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `categorytype` varchar(50) NOT NULL,
  `categoryimg` text NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  `posteddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `emptype` varchar(20) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `adharno` varchar(20) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `joindate` date NOT NULL,
  `basicsalary` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `empname`, `emptype`, `emailid`, `address`, `pincode`, `city`, `state`, `adharno`, `contactno`, `loginid`, `password`, `status`, `joindate`, `basicsalary`) VALUES
(47, 'Anwar Ali', 'Admin', 'anwarali@gmail.com', '\"Sun Shine Cottage\" Near Bharath nagar', '574106', 'Kaup', 'Karnataka', '857547584355', '9972483866', 'anwarali', 'password', 'Active', '2020-09-14', 15000.00),
(48, 'dummy', 'Employee', 'd@gmail.com', 'adddddddd', '574106', 'Kaup', 'Karnataka', '878966544766', '8664667653', 'dd', 'password', 'Active', '2020-09-14', 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `comp_id` int(11) DEFAULT NULL,
  `title` varchar(70) NOT NULL,
  `description` text NOT NULL,
  `costbeforetax` float(10,2) NOT NULL,
  `cgsttaxpercentage` int(11) NOT NULL,
  `sgsttaxpercentage` int(11) NOT NULL,
  `igsttaxpercentage` int(11) NOT NULL,
  `discount` float(10,2) NOT NULL,
  `costbd` float(10,2) NOT NULL,
  `costad` float(10,2) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `subcategoryid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `imgpath` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(25) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `cancellationreason` varchar(200) NOT NULL,
  `sellerpayment` varchar(20) NOT NULL,
  `purchasedate` date NOT NULL,
  `deliverystatus` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(11) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `basicsalary` int(11) NOT NULL,
  `salarymonth` int(11) NOT NULL,
  `noworkingdays` int(10) NOT NULL,
  `daysworked` float NOT NULL,
  `salary` float(10,2) NOT NULL,
  `date` date NOT NULL,
  `salyear` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `comp_id` int(11) NOT NULL,
  `compname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pancardno` varchar(20) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `companydetail` varchar(200) NOT NULL,
  `companylogo` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `contactno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sellerpayment`
--

CREATE TABLE `sellerpayment` (
  `payid` int(11) NOT NULL,
  `sellerid` int(11) DEFAULT NULL,
  `total_amt` float(10,2) NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `admin_per` int(11) NOT NULL,
  `paid_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockid` int(11) NOT NULL,
  `comp_id` int(11) DEFAULT NULL,
  `stockaddeddate` date NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `subcategoryid` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategorytype` varchar(50) NOT NULL,
  `subcategoryimg` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblselleraccount`
--

CREATE TABLE `tblselleraccount` (
  `actid` int(11) NOT NULL,
  `sellerid` int(11) DEFAULT NULL,
  `accountno` varchar(25) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `custid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendanceid`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `categoryid` (`categoryid`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `subcategoryid` (`subcategoryid`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `companyid` (`companyid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `sellerpayment`
--
ALTER TABLE `sellerpayment`
  ADD PRIMARY KEY (`payid`),
  ADD KEY `sellerid` (`sellerid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockid`),
  ADD KEY `comp_id` (`comp_id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `tblselleraccount`
--
ALTER TABLE `tblselleraccount`
  ADD PRIMARY KEY (`actid`),
  ADD KEY `sellerid` (`sellerid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_id`),
  ADD KEY `custid` (`custid`),
  ADD KEY `productid` (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendanceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sellerpayment`
--
ALTER TABLE `sellerpayment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `subcategoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblselleraccount`
--
ALTER TABLE `tblselleraccount`
  MODIFY `actid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `employee` (`employeeid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `seller` (`comp_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`subcategoryid`) REFERENCES `sub_category` (`subcategoryid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`companyid`) REFERENCES `seller` (`comp_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `employee` (`employeeid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `sellerpayment`
--
ALTER TABLE `sellerpayment`
  ADD CONSTRAINT `sellerpayment_ibfk_1` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`comp_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`comp_id`) REFERENCES `seller` (`comp_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `tblselleraccount`
--
ALTER TABLE `tblselleraccount`
  ADD CONSTRAINT `tblselleraccount_ibfk_1` FOREIGN KEY (`sellerid`) REFERENCES `seller` (`comp_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`customerid`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
