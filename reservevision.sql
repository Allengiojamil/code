-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2021 at 12:09 AM
-- Server version: 10.5.13-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17863233_reservevision`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_order` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_order`) VALUES
(5, 'Announcement', '1'),
(6, 'Emergency', '2');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `h_id` int(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `dated_in` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `old_img` varchar(255) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `img`, `old_img`, `cat_id`, `date`, `view`) VALUES
(34, 'Stranded Boarders/Dormers', 'It has reached our attention that there are students who are stranded in dormitories/boarding houses, and could not go back to their homes outside Batangas City because of the enhanced community quarantine. We are coordinating with school and city authorities to address your concern for possible arrangements/ options.', '1929281112images.png', '740673076images.png', '6', '06 Nov, 2021', 16),
(35, 'WE ACCEPT LADY BEDSPACERS! ', 'Three-bedroom apartment in Hilltop Kumintang Ibaba Batangas City (Near UB and LPU) available for rent, 1,500 monthly advance payment only no deposit. Contact + +63 917 434 7327 / +63 920 132 4900 / +63 939 497 9532 if interested.\r\nhttps://www.facebook.com/batangascityapartments/', '1933079244FB_IMG_1637453840355.jpg', '1759649105FB_IMG_1637453840355.jpg', '5', '06 Nov, 2021', 9),
(37, 'Apartment for Rent! ', 'For Rent Apartment in Alangilan near BSU and Westmead, studio-type unit with own kitchen and toilet, Genesis Residences Building, Galaxy Street, Batangas City. Accommodates 3 persons. Call +63 920 132 4900 or +63 939 497 9532. 4,500 monthly advance payment only, no deposit.\r\nhttps://www.facebook.com/batangascityapartments/', '1340615485FB_IMG_1637453666585.jpg', '21506310011.jpg', '5', '07 Nov, 2021', 7),
(39, 'PROMO!!! 1 MONTH FREE FOR IYEAR RENT!!! FREE ELECTRIC AND WATER BILL!!!', 'Newly constructed ladies boarding house for students and professionals  walking distance to Lyceum of the Philippines\r\nUniversity, City Engineers Office and TESDA Batangas\r\nRegional Hospital each unit has a concrete very well ventilated bedroom. ', '323208335FB_IMG_1637453059828.jpg', '1664632854FB_IMG_1637453252536.jpg', '5', '07 Nov, 2021', 33);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `id` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `increment` int(11) NOT NULL,
  `desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`id`, `start`, `end`, `increment`, `desc`) VALUES
(1, 1000, 135, 1, 'PROD');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `category_id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`category_id`, `category`) VALUES
(1, 'Boarding House'),
(2, 'Apartment');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `C_ID` int(50) NOT NULL,
  `C_FNAME` varchar(50) NOT NULL,
  `C_LNAME` varchar(50) NOT NULL,
  `C_AGE` int(2) NOT NULL,
  `C_ADDRESS` text NOT NULL,
  `C_PNUMBER` varchar(50) NOT NULL,
  `C_GENDER` varchar(50) NOT NULL,
  `C_EMAILADD` varchar(50) NOT NULL,
  `ZIPCODE` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`C_ID`, `C_FNAME`, `C_LNAME`, `C_AGE`, `C_ADDRESS`, `C_PNUMBER`, `C_GENDER`, `C_EMAILADD`, `ZIPCODE`, `username`, `password`) VALUES
(6, 'john', 'howell', 22, 'phil', '09099818480', 'Male', 'jhowell@gmail.com', '4322', 'jwell', '$2y$10$6QTS3nb3kmh5E5MzsYaJqe1FZm9ZqNBywXcEAADMutPStUv1veO3q'),
(7, 'Jhanna', 'Atienza', 15, 'Sariaya, Quezon', '09090923871', 'Female', 'jhanna@gmail.com', '4322', 'Jhanna', '$2y$10$Nc.GHmrH0ReyOHDtbOZPyuoUAmsFuJKoTNXAVbUUOdraY1v1Amx/m'),
(9, 'John Paul', 'Atienza', 21, 'Bignay1 Sariaya, Quezon', '09200122047', 'Male', 'paul@gmail.com', '4322', 'paul', '$2y$10$TBEgq4XdeEDxdoRQfGZum..GFM5t1Dmfrm44rgAMnaGw3lUTr74M.'),
(10, 'Jhayneil', 'Villarama', 22, 'Cuta,Batangas City', '09294959821', 'Male', 'Jhayneil.villarama@gmail.com', '4200', 'Jhayneil', '$2y$10$yU0cUSCs0zraq0YQWrUUaukqrUDcrvbqbwp5w7Jm5W9JFeH5vOo6i'),
(11, 'Karen May', 'Papasin', 20, 'Sta. Rita Karsada Batangas City', '09513183719', 'Female', 'karenmaypapasin1@gmail.com', '4200', 'Renmay', '$2y$10$Uv8gCGTtZN/wW/HUOSqzhOl6zjSi36OVgGGQcIRL9TwPBZFznbVM.'),
(12, 'Kim Louie', 'Marana', 21, 'Bignay 1 Sariaya, Quezon', '09186220581', 'Male', 'kimlouie.marana@g.batstate-u.edu.ph', '4322', 'skirks', '$2y$10$UUbszP87KwTd0SqpMvm80eBr3h1dmIBdXIG.m3zCnSGgZwTy/xo.S'),
(13, 'shan', 'deguzman', 21, 'bignay 1 sariaya quez', '614970018', 'Male', 'dgsatienza@gmail.com', '262', 'xhan', '$2y$10$ov4iOyctlPgz5Q872v0pc.UpRTRpLgPodaE3XWR76HLwwTbxgxVtW'),
(14, 'Jona Grace', 'Pandan', 20, 'Lucena City', '09460354274', 'Female', 'jona.gpandan@gmail.com', '4301', 'jgrasyaaap', '$2y$10$euLiUGtU6lqeNjWDDhDA4eEhFZ5XK9tPPPQQZy0bMeUbKI//rBMeW'),
(15, 'Tsuna', 'Sawada', 21, 'Tokyo, Manila', '09224224321', 'Male', 'ikawlangboss@gmail.com', '4200', 'Tsuna', '$2y$10$Y4eyYJ7anVbc.qI8.aktVu6fOSvcfAH8Auc.w1MvDrJSb2u8rJ/be'),
(16, 'Ayce', 'De La Cruz', 21, 'Calicanto Batangas City', '09567934950', 'Female', 'shnlldlcrzmrqz@gmail.com', '4200', 'aycedlcrz', '$2y$10$CuC.4kkw9JGdTLHBxo0be.qXoR.vA9XhHPaznKN9Ejgzw786IV7/q'),
(17, 'Mary Joyce', 'Franco', 22, 'Rosario Batangas', '09074895564', 'Female', 'maryjoycefranco9@gmail.com', '4225', 'majoy', '$2y$10$VET/4GYU7HSnqUUknKbWhOEbMBa8oRK9YO3EOtfPdCB2ycmz9bjly'),
(18, 'Mary', 'Park', 22, 'Batangas', '09123456489', 'Female', 'maryrose.ilagan@g.batstate-u.edu.ph', '4225', 'Lalalala', '$2y$10$1xaViZ6aP/IdV2NoCWr/9O00gjQRE.ysIbVo7AdcVKpy08gV64K4S'),
(19, 'Gabriel Edrian', 'Alvaro', 20, 'Mapulo,Taysan,Batangas', '09551596029', 'Male', 'gabrieledrian.alvaro@g.batstate-u.edu.ph', '09-05-2001', 'Gabby', '$2y$10$l2a686b22gFpbtOrxA9eo.295J4Bl4wWOGTaaSmWpzOy2ecQGRsl2'),
(20, 'Shane', 'De Guzman', 25, 'Bignay I, Sariaya Quezon', '09099818480', 'Female', 'shane@gmail.com', '4322', 'shane', '$2y$10$5dNIfv0Z155EtQJOIc7wG.TQGHY/UuQWhPtcF07pSzhtMVHArg9JG'),
(21, 'Joshua', 'Bagat', 22, 'Brgy. Bignay I Sariaya, Quezon', '09099818480', 'Male', 'joshua@gmail.com', '4322', 'joshua', '$2y$10$247zuQmO2RFGZML7W8l9JustNnKpMo8W52O0vU2A2zuctk69HIBdi'),
(22, 'Jessa', 'Hernandez', 21, 'San Juan, Batangas', '09516296205', 'Female', 'jessamanalo.hernandez@g.bastate-u.edu.ph', '4226', 'jessa', '$2y$10$m/w0CLXe1OcOLcd1bkC1DeClHzviri/l3AXIM3/WakoZQf7TUah3e'),
(23, 'Mariel', 'Hawac', 19, 'Camarines Sur', '09632769629', 'Female', 'marielhawac@gmail.com', '4406', 'mariel', '$2y$10$C6boRrMSB.1lM10tOpIabeqsx4xksqeslKlcvahCA49ykaPCk2X9q'),
(24, 'Bogart', 'Antetokounmpo', 21, 'Bignay 1 Sariaya Quezon', '09090634546464', 'Male', 'bogartant@gmail.com', '7654', 'KingBogart', '$2y$10$D4H16rQTD3HWJsmfagDYoOKQ39ivIUbz5NKYG8kt68Ug6NlMraSdK'),
(25, 'Bryan', 'Paglinawan', 21, 'Calauag, Quezon', '09090909981', 'Male', 'bryan@gmail.com', '4354', 'bryan', '$2y$10$7coV72YLBZdEolJr2iY3POJVr/W0Z8r0fF0gZLN6QfRu09e8wBO7q'),
(26, 'Ariel', 'Anog', 24, 'Sariaya, Quezon', '09090998782', 'Male', 'ariel@gmail.com', '4322', 'ariel', '$2y$10$O1QLQ29vYBJYcKimUsZi3.ucuoGtHAr.AQVvK2BQFfrMQNVpZ/kWW'),
(27, 'Ariel', 'Heli', 22, 'Sariaya, Quezon', '09090998156', 'Male', 'heli@gmail.com', '4322', 'heli', '$2y$10$D7oBbgS3ghizce0zakifbeoERg3wU6u6t5eSDRq9J6HdTYDjGjDB2'),
(28, 'Jarrett', 'Leonardo', 21, 'Batangas City', '09123456789', 'Male', 'jarrettleon@gmail.com', '4200', 'jarett', '$2y$10$ElEPgnA/sQiU9KtFvyhP/OMKB63OXPafoG/jIVszyZyFwCNGr1xK2'),
(29, 'Christian', 'Atienza', 30, 'Bignay I, Sariaya Quezon', '09090807074', 'Male', 'tyanan@gmail.com', '4322', 'tian', '$2y$10$UedF.q6HsVQMPtcZZGbpquYrLY.RhsGt217SOH32DlpJFg7HbwSgy'),
(30, 'Bruno', 'Yuno', 2, 'Bignay I, Sariaya Quezon', '09010203045', 'Male', 'dg@gmail.com', '4322', 'bruno', '$2y$10$lhE9G8G7FuI0hLExxFo79.PkbVdIXCgJltOjP84t7p82o1g4BvuCa'),
(31, 'Cjay', 'Atienza', 9, 'Bignay1 Sariaya, Quezon', '09099818480', 'Male', 'cjatienza@gmail.com', '4322', 'cj', '$2y$10$jrWkgmEpnN6jvSbOO0tDuODAUKw/232mvRp1UtQJ/T6pp9P1H6ofO'),
(32, 'Bienvenido', 'Mendoza', 21, 'Batangas Philippines', '09566044079', 'Male', 'bienvenido.mendozajr@gmail.com', '4200', 'bien', '$2y$10$5jzFuhFnebZuKaVSQADZ6up2GDxZ644jvnqdOFJLc4/OclY9mJRxS');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `emp_id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `position` varchar(50) NOT NULL,
  `hire_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`emp_id`, `fname`, `lname`, `contact`, `email`, `address`, `gender`, `age`, `position`, `hire_date`) VALUES
(1, 'John Howell', 'Atienza', '09300122037', 'howell@gmail.com', 'Sariaya, Quezon', 'Male', 22, 'Admin', '1999-08-27'),
(2, 'Shanell', 'DeLa Cruz', '093001223211', 'shan@gmail.com', 'Batangas City, Batangas', 'Female', 21, 'Admin', '2021-11-05'),
(3, 'Lee Jarett', 'Leonardo', '09786534342', 'lee@gmail.com', 'Batangas City', 'Male', 21, 'Admin', '2019-12-02'),
(4, 'Bienvenido Jr.', 'Mendoza', '09786534342', 'bien@gmail.com', 'Batangas City', 'Male', 21, 'Admin', '2019-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory`
--

CREATE TABLE `tblinventory` (
  `transac_id` int(50) NOT NULL,
  `product_id` int(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `date_in` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

CREATE TABLE `tblowner` (
  `owner_id` int(11) NOT NULL,
  `owner_name` varchar(30) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(222) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`owner_id`, `owner_name`, `contact`, `email`, `address`) VALUES
(14, 'Ben Bautista', '09786534213', 'ben@gmail.com', 'Brgy. Alangilan, Batangas City'),
(18, 'Suzette Briones', '09266148224', 'fellanica21@gmail.com', 'Calicanto Batangas City'),
(19, 'Jocelyn Espina', '09437848670', 'N/A', 'Calicanto Batangas City'),
(20, 'Julian Untalan', '09274527567', 'N/A', 'Kumintang Ibaba Batangas City'),
(21, 'Crystel Millen Patrocencio', '09753543058', 'crystel014@gmail.com', 'Cuta, Batangas City'),
(22, 'Shela Marie Magsino', '09182641276', 'shelamariee@yahoo.com', 'B1 L2 Betzaida Village Dumantay, Batangas City'),
(24, 'Dummy Owner', '09099818480', 'johnhowellatienza@gmail.com', 'Alangilan, Batangas City'),
(25, 'BHAFR', '09286344137', 'mleimg@yahoo.com', 'Batangas City, Philippines'),
(26, 'SIR RYENDEL', '09786534213', 'wellho188@gmail.com', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(20) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `address` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `quantity`, `price`, `date_in`, `category_id`, `owner_id`, `user_id`, `product_code`, `status`, `description`, `address`, `name`, `email`, `contact`) VALUES
(109, 'Ben Boarding House', 34, 1500, '2021-11-17', 1, 14, 1, '1111', 'Available', 'Six (6) rooms. Six (6) beds per rooms. ', 'House No. 4 Neptune Street Alangilan Batangas City', 'Ben Bautista', 'benbautista61@yahoo.com', '09282734125'),
(110, 'Suzette Boarding House', 1, 2000, '2021-11-17', 2, 18, 1, '1112', 'Unavailable', 'Three (3) rooms. One (1) bed per rooms. ', 'Calicanto Batangas City', 'Suzette Briones', 'fellanica21@gmail.com', '09266148224'),
(111, 'Jocelyn Boarding House', 3, 3000, '2021-11-17', 2, 19, 1, '1113', 'Available', 'Two (2) rooms. Two (2) beds per rooms. ', 'Calicanto Batangas City', 'Jocelyn Espina', 'N/A', '0437848670'),
(112, 'Julian Boarding House', 12, 2500, '2021-11-17', 2, 20, 1, '1114', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Kumintang Ibaba Batangas City', 'Julian Untalan', 'N/A', '09274527567'),
(113, 'Crystel Boarding House', 4, 6000, '2021-11-17', 2, 21, 1, '1115', 'Available', 'Two (2) rooms. Two (2) beds per rooms. ', 'Cuta, Batangas City', 'Crystel Patrocenio', 'crystel014@gmail.com', '09753543058'),
(116, 'Shela Boarding House', 2, 5000, '2021-11-18', 2, 22, 1, '1118', 'Available', 'Three (3) rooms. One (1) bed per rooms. ', 'B1 L2 Betzaida Village Dumantay, Batangas City', 'Shela Marie Magsino', 'shelamariee@yahoo.com', '09182641276'),
(117, 'Genesis Boarding House', 2, 1500, '2021-11-21', 1, 23, 1, '1119', 'Available', 'BEDSPACES available in Alangilan near BSU and Westmead, with 2 bedrooms, comfort rooms, wide living rooms, kitchen and laundry area. ', 'Genesis Residences, Galaxy Street, Golden Country Homes, Alangilan, Batangas City', 'Genesis Residences', 'N/A', '09201324900'),
(118, 'Bien Boarding House', 12, 1500, '2021-11-21', 1, 24, 1, '1120', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Kumintang Ilaya, Batangas City', 'Bienvenido Mendoza', 'bienvenido.mendozajr@g.batstate-u.edu.ph', '09566044079'),
(119, 'John Boarding House', 12, 1300, '2021-11-21', 1, 24, 1, '1121', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Alangilan, Batangas City', 'John Atienza', 'johnhowellatienza@gmail.com', '09099818480'),
(120, 'Ayce Boarding House', 4, 1600, '2021-11-21', 1, 24, 1, '1122', 'Available', 'Two (2) rooms. Two (2) beds per rooms. ', 'Calicanto Batangas City', 'Shanel Dela Cruz', 'shanell.delacruz@g.batstate-u.edu.ph', '09567934950'),
(121, 'Jarrett Boarding House', 12, 2000, '2021-11-21', 1, 24, 1, '1123', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Bolbok, Batangas City', 'Jarett Leonardo', 'leejarrett.leonardo@g.batstate-u.edu.ph', '09500403636'),
(122, 'BHAFR Boarding House', 20, 1250, '2021-11-21', 1, 25, 1, '1124', 'Available', 'Bedspace for ladies SPECIAL OFFER! 12th MONTH FREE! FREE ELECTRIC AND WATER BILL!', 'Batangas City, Philippines', 'BHAFR', 'mleimg@yahoo.com', '09286344137'),
(123, 'Paul Boarding House', 12, 1800, '2021-11-21', 1, 24, 1, '1125', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Batangas City, Philippines', 'Paul Atienza', 'paulatienza@gmail.com', '09099818480'),
(124, 'Jhanna Boarding House', 36, 1300, '2021-11-21', 1, 24, 1, '1126', 'Available', 'Four (6) rooms. Five (6) beds per rooms. ', 'Batangas City, Philippines', 'Jhanna Atienza', 'jhanna@gmail.com', '09099818480'),
(125, 'Shan Boarding House', 12, 2500, '2021-11-21', 1, 24, 1, '1127', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Batangas City, Philippines', 'Shandrick De Guzman', 'shan@gmail.com', '09099818480'),
(126, 'Shane Boarding House', 12, 3200, '2021-11-21', 1, 24, 1, '1128', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Batangas City, Philippines', 'Shane De Guzman', 'shane@gmail.com', '09099818480'),
(127, 'Kim Boarding House', 36, 1500, '2021-11-22', 1, 24, 1, '1129', 'Available', 'Four (6) rooms. Five (6) beds per rooms. ', 'Alangilan, Batangas City', 'Kim Louie', 'kim@gmail.com', '09099818480'),
(128, 'Giovannie Boarding House', 12, 1300, '2021-11-22', 1, 24, 1, '1130', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Alangilan, Batangas City', 'Giovannie Joshua', 'gio@gmail.com', '09099818480'),
(129, 'RC Boarding House', 34, 1500, '2021-11-22', 1, 24, 1, '1131', 'Available', 'Four (6) rooms. Five (6) beds per rooms. ', 'Tabangao, Batangas City', 'Reyven Castro', 'rc@gmail.com', '09099818480'),
(130, 'JV Boarding House', 12, 1700, '2021-11-22', 1, 24, 1, '1132', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Cuta, Batangas City', 'Jhayneil Villarama', 'jv@gmail.com', '09099818480'),
(131, 'JTA Boarding House', 12, 1600, '2021-11-22', 1, 24, 1, '1133', 'Available', 'Six (6) rooms. Two (2) beds per rooms. ', 'Bauan, Batangas Philippines', 'John Troy Asiado', 'jta@gmail.com', '09099818480'),
(132, 'RYNDELL BOARDING HOUSE', 25, 1300, '2021-11-23', 1, 26, 1, '1134', 'Available', 'Reis, et al. managed a research using machine learning including Kmeans clustering for identifying false information. They focused their analysis on models that rank a randomly chosen fake news story higher than a randomly chosen fact with more than 0.85 probability. As a result, they provide a lot of contribution that are relevant to the field. First, they survey a large number of previous and related works as an attempt to implement all potential features to detect fake news. Second, their framework reveals how hard is to detect fake news, as only a small fraction of the models (only2.2%) achieve a detection performance higher than 0.85 in terms of AUC. (Reis, 2017)', 'Philippines', 'Howell John', 'wellho188@gmail.com', '09099818480');

-- --------------------------------------------------------

--
-- Table structure for table `tblreqs`
--

CREATE TABLE `tblreqs` (
  `D_ID` int(50) NOT NULL,
  `C_ID` int(50) NOT NULL,
  `EMP_ID` int(50) NOT NULL,
  `C_ADDRESS` text NOT NULL,
  `C_PNUMBER` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltransac`
--

CREATE TABLE `tbltransac` (
  `transac_id` int(11) NOT NULL,
  `transac_code` int(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransac`
--

INSERT INTO `tbltransac` (`transac_id`, `transac_code`, `date`, `customer_id`, `product_code`, `qty`, `price`, `total`) VALUES
(131, 1636270192, '2021-11-06', 6, '1098', 1, 1200, 1200),
(132, 1636624450, '2021-11-11', 10, '1093', 1, 1500, 1500),
(133, 1636624553, '2021-11-11', 10, '1093', 1, 1500, 1500),
(134, 1636629939, '2021-11-11', 6, '1093', 1, 1500, 1500),
(135, 1636672924, '2021-11-11', 7, '1093', 1, 1500, 1500),
(136, 1636672989, '2021-11-11', 7, '1093', 1, 1500, 1500),
(137, 1636673045, '2021-11-11', 7, '1093', 1, 1500, 1500),
(138, 1636674566, '2021-11-11', 7, '1093', 1, 1500, 1500),
(139, 1636674696, '2021-11-11', 7, '1093', 1, 1500, 1500),
(140, 1636674825, '2021-11-11', 7, '1093', 1, 1500, 1500),
(141, 1636674994, '2021-11-11', 7, '1093', 1, 1500, 1500),
(142, 1636675004, '2021-11-11', 7, '1093', 1, 1500, 1500),
(143, 1636675026, '2021-11-11', 7, '1093', 1, 1500, 1500),
(144, 1636675777, '2021-11-12', 7, '1093', 1, 1500, 1500),
(145, 1636675958, '2021-11-12', 7, '1093', 1, 1500, 1500),
(146, 1636676184, '2021-11-12', 7, '1093', 1, 1500, 1500),
(147, 1636676376, '2021-11-12', 7, '1093', 1, 1500, 1500),
(148, 1636676430, '2021-11-12', 7, '1093', 1, 1500, 1500),
(149, 1636676499, '2021-11-12', 7, '1093', 1, 1500, 1500),
(150, 1636676501, '2021-11-12', 7, '1093', 1, 1500, 1500),
(151, 1636676541, '2021-11-12', 7, '1093', 1, 1500, 1500),
(152, 1636676982, '2021-11-12', 7, '1093', 1, 1500, 1500),
(153, 1636677454, '2021-11-12', 7, '1093', 1, 1500, 1500),
(154, 1636677480, '2021-11-12', 7, '1093', 1, 1500, 1500),
(155, 1636677483, '2021-11-12', 7, '1093', 1, 1500, 1500),
(156, 1636677655, '2021-11-12', 7, '1093', 1, 1500, 1500),
(157, 1636677995, '2021-11-12', 7, '1110', 1, 1500, 1500),
(158, 1636680559, '2021-11-12', 7, '1110', 1, 1500, 1500),
(159, 1636680646, '2021-11-12', 7, '1110', 1, 1500, 1500),
(160, 1636681121, '2021-11-12', 7, '1110', 1, 1500, 1500),
(161, 1636681633, '2021-11-12', 7, '1110', 1, 1500, 1500),
(162, 1636681637, '2021-11-12', 7, '1110', 1, 1500, 1500),
(163, 1636681814, '2021-11-12', 7, '1110', 1, 1500, 1500),
(164, 1636681857, '2021-11-12', 7, '1110', 1, 1500, 1500),
(165, 1636687958, '2021-11-12', 11, '1094', 1, 2000, 2000),
(166, 1636689184, '2021-11-12', 12, '1110', 1, 1500, 1500),
(167, 1636689184, '2021-11-12', 12, '1095', 1, 2300, 2300),
(168, 1636691295, '2021-11-12', 10, '1094', 1, 2000, 2000),
(169, 1636698491, '2021-11-12', 9, '1095', 1, 2300, 2300),
(170, 1636700930, '2021-11-12', 13, '1094', 1, 2000, 2000),
(171, 1636716183, '2021-11-12', 6, '1110', 1, 1500, 1500),
(172, 1636884609, '2021-11-14', 14, '1094', 1, 2000, 2000),
(173, 1636893672, '2021-11-14', 16, '1096', 1, 1300, 1300),
(174, 1636894205, '2021-11-14', 15, '1094', 1, 2000, 2000),
(175, 1636961191, '2021-11-15', 17, '1094', 1, 2000, 2000),
(176, 1637023375, '2021-11-16', 6, '1094', 1, 2000, 2000),
(177, 1637052574, '2021-11-16', 6, '1094', 1, 2000, 2000),
(178, 1637223532, '2021-11-18', 20, '1118', 1, 5000, 5000),
(179, 1637548105, '2021-11-22', 7, '1131', 1, 1500, 1500),
(180, 1637548360, '2021-11-22', 9, '1131', 1, 1500, 1500),
(181, 1637634859, '2021-11-23', 28, '1112', 1, 2000, 2000),
(182, 1637635724, '2021-11-23', 28, '1111', 1, 1500, 1500),
(183, 1637635724, '2021-11-23', 28, '1112', 1, 2000, 2000),
(184, 1637635724, '2021-11-23', 28, '1113', 1, 3000, 3000),
(185, 1639324756, '2021-12-12', 21, '1111', 1, 1500, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransacdetail`
--

CREATE TABLE `tbltransacdetail` (
  `detail_id` int(11) NOT NULL,
  `transac_code` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `add_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransacdetail`
--

INSERT INTO `tbltransacdetail` (`detail_id`, `transac_code`, `date`, `customer_id`, `totalprice`, `status`, `remarks`, `add_date`) VALUES
(56, 1636687958, '2021-11-12 00:00:00.000000', 11, 2000, 'Confirmed', 'Your request has been confirmed!', '2021-12-03 00:00:00.000000'),
(57, 1636689184, '2021-11-12 00:00:00.000000', 12, 3800, 'Confirmed', 'Your request has been confirmed!', '2021-11-12 00:00:00.000000'),
(58, 1636691295, '2021-11-12 00:00:00.000000', 10, 2000, 'Confirmed', 'Your request has been confirmed!', '2021-11-20 00:00:00.000000'),
(60, 1636700930, '2021-11-12 00:00:00.000000', 13, 2000, 'Confirmed', 'Your request has been confirmed!', '2021-11-28 00:00:00.000000'),
(61, 1636716183, '2021-11-12 00:00:00.000000', 6, 1500, 'Confirmed', 'Your request has been confirmed!', '2021-11-12 00:00:00.000000'),
(62, 1636884609, '2021-11-14 00:00:00.000000', 14, 2000, 'Confirmed', 'Your request has been confirmed!', '2021-11-14 00:00:00.000000'),
(64, 1636894205, '2021-11-14 00:00:00.000000', 15, 2000, 'Pending', 'N/A', '2021-11-16 00:00:00.000000'),
(65, 1636961191, '2021-11-15 00:00:00.000000', 17, 2000, 'Confirmed', 'Your request has been confirmed!', '2021-11-15 00:00:00.000000'),
(68, 1637223532, '2021-11-18 00:00:00.000000', 20, 5000, 'Confirmed', 'Your request has been confirmed!', '2021-11-18 00:00:00.000000'),
(69, 1637548105, '2021-11-22 00:00:00.000000', 7, 1500, 'Confirmed', 'Your request has been confirmed!', '2021-11-22 00:00:00.000000'),
(70, 1637548360, '2021-11-22 00:00:00.000000', 9, 1500, 'Confirmed', 'Your request has been confirmed!', '2021-11-22 00:00:00.000000'),
(71, 1637634859, '2021-11-23 00:00:00.000000', 28, 2000, 'Confirmed', 'Your request has been confirmed!', '2021-11-23 00:00:00.000000'),
(72, 1637635724, '2021-11-23 00:00:00.000000', 28, 6500, 'Pending', 'N/A', '2021-11-23 00:00:00.000000'),
(73, 1639324756, '2021-12-12 00:00:00.000000', 21, 1500, 'Confirmed', 'Your request has been confirmed!', '2021-12-12 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `fname`, `lname`, `email`, `contact`, `address`, `position`, `username`, `pass`) VALUES
(1, 'John Howell', 'Atienza', 'howell@gmail.com', '09099818480', 'Sariaya, Quezon', 'Admin', 'howell', '$2y$10$wFU5RcT2d6WvRiHU.t8uJepQ3D6nTRDTaFbJv774H9A86atBuKBk2'),
(2, 'Bienvenido Jr.', 'Mendoza', 'bien@gmail.com', '09300122037', 'Batangas City', 'Admin', 'bien', '$2y$10$ds1gqSSjIHq/I7c.Ly/w9eF.OPgcXyeG09wL71loBGy0qLkNzUZlS'),
(15, 'Ayce', 'Dela Cruz', 'ayce@gmail.com', '09999999999', 'Batangas City', 'Admin', 'ayce', '$2y$10$5P3JfdthLui0aPSG2cc7Du635c/6IC0UiaJ9fj8EKeYRFc8C2kkK.'),
(16, 'Lee', 'Leonardo', 'jarett@gmail.com', '09090909099', 'Batangas City', 'Admin', 'jarett', '$2y$10$arLgxg4hkxUxu0.n3.lSQOfpT3Ofbqv.TGiFyXqgplyWJKkQElaHu'),
(21, 'Shan', 'DeGuzman', 'dgsatienza@gmail.com', '09099818480', 'Bignay I, Sariaya Quezon', 'Owner', 'shanshan', '$2y$10$Uwe3.3nBUIsz4b8K2esl5uvhHUpZxitUpRTvt/j4.KtNZB/XWCEq6'),
(22, 'John', 'Howell', 'johnhowellatienza@gmail.com', '09099818480', 'Philippines', 'Owner', 'wellho', '$2y$10$nogWOHKtE/3Tyd2ukDzZSeAgtVj36Q8auocsxKqY6sd3fiELkl2m6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tblowner`
--
ALTER TABLE `tblowner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_tblproducts_tblsupplier` (`owner_id`,`user_id`);

--
-- Indexes for table `tblreqs`
--
ALTER TABLE `tblreqs`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `tbltransac`
--
ALTER TABLE `tbltransac`
  ADD PRIMARY KEY (`transac_id`),
  ADD KEY `FK_tbltransac_details_tblcustomer` (`customer_id`);

--
-- Indexes for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `h_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `C_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblemployee`
--
ALTER TABLE `tblemployee`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblowner`
--
ALTER TABLE `tblowner`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `tblreqs`
--
ALTER TABLE `tblreqs`
  MODIFY `D_ID` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltransac`
--
ALTER TABLE `tbltransac`
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
