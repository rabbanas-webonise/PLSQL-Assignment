-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 08:40 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webonise`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `quantity`, `price`, `user_id`, `product_id`, `variant_id`) VALUES
(100011, 3, 3000, 1, 1001, 1111),
(100012, 1, 1500, 1, 1002, 3333),
(100013, 1, 1000, 2, 1002, 4444);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `budget` double NOT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `budget`, `manager_id`) VALUES
(1001, 'hardware', 2004568, 1),
(1002, 'software', 20000055, 2),
(1003, 'hardwar', 200045, 1),
(1004, 'developement', 1000000, 3),
(1005, 'testing', 20000458, 5),
(1006, 'testing', 1000000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount_type`, `amount`) VALUES
(12121212, 'flat', 25),
(13131313, 'flat', 30),
(14141414, 'MOONSOON', 50);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `age`, `salary`) VALUES
(1, 'samina', 25, 20000),
(2, 'saba', 25, 28000),
(3, 'kadir', 25, 450000),
(4, 'shan', 23, 15000),
(5, 'shaikh', 28, 200000.5),
(6, 'khan', 30, 20000000000000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total` double DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total` double DEFAULT NULL,order_date date,
  `discount_id` int(11) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
)


--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`,`order_date`, `discount_id`, `pay_id`, `user_id`) VALUES
(2147483647, 1500,'2018-02-01', 12121212, 102222222, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `orders_detail`
--
CREATE TABLE `orders_detail` (
`id` int(11)
,`total` double
,`discount_id` int(11)
,`pay_id` int(11)
,`transatction_status` varchar(100)
,`payment_method` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `orders_details`
--
CREATE TABLE `orders_details` (
`id` int(11)
,`total` double
,`discount_id` int(11)
,`pay_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `o_details`
--
CREATE TABLE `o_details` (
`id` int(11)
,`total` double
,`discount_id` int(11)
,`pay_id` int(11)
,`transatction_status` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `transatction_status` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`id`, `payment_method`, `transatction_status`, `user_id`) VALUES
(101111111, 'credit card', 'pending', 1),
(102222222, 'payU', 'Successful', 2);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `ID` int(11) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_description`, `product_type`) VALUES
(0, '', '', 'a'),
(1, 'null', 'null', 'a'),
(1001, 'mobile', 'smart phone', 'gadgets'),
(1002, 'shirt', 'maleshirt', 'cloth'),
(1003, 'tshirt', 'maleshirt', 'cloth'),
(1004, 'lipstick', 'red color', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'rabbi 123', '111111111111111111111111'),
(2, 'rabbi12123', '12');

-- --------------------------------------------------------

--
-- Table structure for table `varients`
--

CREATE TABLE `varients` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `varients`
--

INSERT INTO `varients` (`id`, `name`, `color`, `size`, `price`, `product_id`) VALUES
(1111, 'mobile', 'red', 'slim', 200000, 1001),
(2222, 'MI mobile', 'Black', 'slim', 150000, 1001),
(3333, 'Male shirt', 'white', 'XL', 1500, 1002),
(4444, 'Male shirt', 'yellow', 'S', 1000, 1002);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `pct_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `employee_id`, `department_id`, `pct_time`) VALUES
(2001, 1, 1002, 50),
(2002, 1, 1001, 86);

-- --------------------------------------------------------

--
-- Structure for view `orders_detail`
--
DROP TABLE IF EXISTS `orders_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_detail`  AS  select `o`.`id` AS `id`,`o`.`total` AS `total`,`o`.`discount_id` AS `discount_id`,`o`.`pay_id` AS `pay_id`,`p`.`transatction_status` AS `transatction_status`,`p`.`payment_method` AS `payment_method` from ((`orders` `o` join `payment_mode` `p`) join `discounts` `d`) where ((`d`.`id` = `o`.`discount_id`) and (`p`.`id` = `o`.`pay_id`) and (`p`.`transatction_status` = 'successful')) ;

-- --------------------------------------------------------

--
-- Structure for view `orders_details`
--
DROP TABLE IF EXISTS `orders_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orders_details`  AS  select `orders`.`id` AS `id`,`orders`.`total` AS `total`,`orders`.`discount_id` AS `discount_id`,`orders`.`pay_id` AS `pay_id` from ((`orders` join `payment_mode`) join `discounts`) where (`discounts`.`id` = `orders`.`discount_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `o_details`
--
DROP TABLE IF EXISTS `o_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `o_details`  AS  select `o`.`id` AS `id`,`o`.`total` AS `total`,`o`.`discount_id` AS `discount_id`,`o`.`pay_id` AS `pay_id`,`p`.`transatction_status` AS `transatction_status` from ((`orders` `o` join `payment_mode` `p`) join `discounts` `d`) where ((`d`.`id` = `o`.`discount_id`) and (`p`.`id` = `o`.`pay_id`) and (`p`.`transatction_status` = 'successful')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `varients`
--
ALTER TABLE `varients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2003;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `works_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



--------------------


/*DELIMITER $$
CREATE
PROCEDURE `Orderstransction`(IN id int, IN product_id INT , IN varients_id INT ,IN quantity INT,IN price DOUBLE, OUT total DOUBLE)
BEGIN
select * from cart,payment_mode where quantity*price >1000 and transatction_status="successful"  ;
SET total=(quantity*price);
INSERT INTO orders(`total`) VALUES(total);
END$$
DELIMITER ;*/


---------------------------------








