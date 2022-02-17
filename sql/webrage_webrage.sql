-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2021 at 01:11 PM
-- Server version: 5.7.33
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webrage_webrage`
--

-- --------------------------------------------------------

--
-- Table structure for table `auditLog`
--

CREATE TABLE `auditLog` (
  `id` int(11) NOT NULL,
  `mutationDateTime` datetime NOT NULL,
  `jobId` int(10) DEFAULT NULL,
  `mutationType` varchar(100) NOT NULL,
  `BOID` int(11) DEFAULT NULL,
  `brickowlColorId` int(10) DEFAULT NULL,
  `brickowlCondition` varchar(25) DEFAULT NULL,
  `price` double(10,4) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `brickowlLotId` int(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `resultString` json DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auditLogJobs`
--

CREATE TABLE `auditLogJobs` (
  `jobId` int(10) NOT NULL,
  `startDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endDateTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bricklinkInventory`
--

CREATE TABLE `bricklinkInventory` (
  `inventoryId` int(20) NOT NULL,
  `itemNo` varchar(50) NOT NULL,
  `itemType` varchar(25) NOT NULL,
  `colorId` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `condition` varchar(2) NOT NULL,
  `pricePerPiece` decimal(8,2) NOT NULL,
  `personalRemark` varchar(255) NOT NULL,
  `publicRemark` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brickowlInventory`
--

CREATE TABLE `brickowlInventory` (
  `inventoryId` int(20) NOT NULL,
  `itemNo` int(20) NOT NULL,
  `itemType` varchar(100) NOT NULL,
  `colorId` int(5) NULL,
  `quantity` int(5) DEFAULT NULL,
  `condition` varchar(20) NOT NULL,
  `pricePerPiece` double(10,4) NOT NULL,
  `personalRemark` varchar(255) NULL,
  `publicRemark` varchar(255) NULL,
  `externalLotId` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `colorMapping`
--

CREATE TABLE `colorMapping` (
  `brickowlColorId` int(5) NOT NULL,
  `brickowlColorName` varchar(255) NOT NULL,
  `bricklinkColorId` int(5) DEFAULT NULL,
  `bricklinkColorName` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `colorMapping` (`brickowlColorId`, `brickowlColorName`, `bricklinkColorId`, `bricklinkColorName`) VALUES
(0, 'Not Applicable', NULL, 'N/A'),
(2, 'Chrome Gold', 21, 'Chrome Gold'),
(3, 'Pink', 23, 'Pink'),
(4, 'Purple', 24, 'Purple'),
(5, 'Light Salmon', 26, 'Light Salmon'),
(6, 'Flesh', 28, 'Nougat'),
(7, 'Medium Orange', 31, 'Medium Orange'),
(8, 'Light Orange', 32, 'Light Orange'),
(9, 'Light Yellow', 33, 'Light Yellow'),
(10, 'Medium Green', 37, 'Medium Green'),
(11, 'Light Green', 38, 'Light Green'),
(12, 'Light Turquoise', 40, 'Light Turquoise'),
(13, 'Aqua', 41, 'Aqua'),
(14, 'Medium Blue', 42, 'Medium Blue'),
(15, 'Violet', 43, 'Violet'),
(16, 'Light Violet', 44, 'Light Violet'),
(17, 'Dark Pink', 47, 'Dark Pink'),
(18, 'Sand Green', 48, 'Sand Green'),
(19, 'Very Light Gray', 49, 'Very Light Gray'),
(20, 'Dark Green', 80, 'Dark Green'),
(21, 'Flat Dark Gold', 81, 'Flat Dark Gold'),
(22, 'Transparent Purple Glitter', 102, 'Glitter Trans-Purple'),
(23, 'Fabuland Brown', 106, 'Fabuland Brown'),
(24, 'Speckle Black', 111, 'Speckle Black-Silver'),
(25, 'Transparent Very Light Blue', 113, 'Trans-Very Lt Blue'),
(26, 'Transparent Light Purple', 114, 'Trans-Light Purple'),
(27, 'Pearl Very Light Gray', 119, 'Pearl Very Light Gray'),
(28, 'Modulex Medium Stone Gray', 124, 'Mx Light Bluish Gray'),
(29, 'Modulex Charcoal Gray', 126, 'Mx Charcoal Gray'),
(30, 'Modulex Orange', 135, 'Mx Orange'),
(31, 'Modulex Ochre Yellow', 138, 'Mx Ochre Yellow'),
(32, 'Modulex Olive Green', 140, 'Mx Olive Green'),
(33, 'Modulex Pastel Green', 141, 'Mx Pastel Green'),
(34, 'Modulex Tile Blue', 143, 'Mx Tile Blue'),
(35, 'Speckle Black Gold', 151, 'Speckle Black-Gold'),
(36, 'Lavender', 154, 'Lavender'),
(38, 'Black', 11, 'Black'),
(39, 'Blue', 7, 'Blue'),
(40, 'Royal Blue', 97, 'Blue-Violet'),
(41, 'Bright Green', 36, 'Bright Green'),
(42, 'Bright Light Blue', 105, 'Bright Light Blue'),
(43, 'Bright Light Orange', 110, 'Bright Light Orange'),
(44, 'Bright Light Yellow', 103, 'Bright Light Yellow'),
(45, 'Bright Pink', 104, 'Bright Pink'),
(46, 'Brown', 8, 'Brown'),
(47, 'Dark Azure', 153, 'Dark Azure'),
(48, 'Dark Blue', 63, 'Dark Blue'),
(49, 'Dark Royal Blue', 109, 'Dark Blue-Violet'),
(50, 'Dark Stone Gray', 85, 'Dark Bluish Gray'),
(51, 'Dark Brown', 120, 'Dark Brown'),
(52, 'Dark Flesh', 91, 'Medium Brown'),
(53, 'Dark Gray', 10, 'Dark Gray'),
(54, 'Dark Orange', 68, 'Dark Orange'),
(55, 'Dark Purple', 89, 'Dark Purple'),
(56, 'Dark Red', 59, 'Dark Red'),
(57, 'Dark Tan', 69, 'Dark Tan'),
(58, 'Dark Turquoise', 39, 'Dark Turquoise'),
(59, 'Earth Orange', 29, 'Earth Orange'),
(60, 'Fabuland Orange', 160, 'Fabuland Orange'),
(61, 'Green', 6, 'Green'),
(62, 'Light Aqua', 152, 'Light Aqua'),
(63, 'Light Blue', 62, 'Light Blue'),
(64, 'Medium Stone Gray', 86, 'Light Bluish Gray'),
(65, 'Light Flesh', 90, 'Light Nougat'),
(66, 'Light Gray', 9, 'Light Gray'),
(67, 'Light Lime', 35, 'Light Lime'),
(68, 'Light Pink', 56, 'Light Pink'),
(69, 'Light Purple', 93, 'Light Purple'),
(70, 'Lime', 34, 'Lime'),
(71, 'Maersk Blue', 72, 'Maersk Blue'),
(72, 'Magenta', 71, 'Magenta'),
(73, 'Medium Azure', 156, 'Medium Azure'),
(74, 'Medium Dark Flesh', 150, 'Medium Nougat'),
(75, 'Medium Dark Pink', 94, 'Medium Dark Pink'),
(76, 'Medium Lavender', 157, 'Medium Lavender'),
(77, 'Medium Lime', 76, 'Medium Lime'),
(78, 'Medium Violet', 73, 'Medium Violet'),
(79, 'Olive Green', 155, 'Olive Green'),
(80, 'Orange', 4, 'Orange'),
(81, 'Red', 5, 'Red'),
(82, 'Reddish Brown', 88, 'Reddish Brown'),
(83, 'Rust', 27, 'Rust'),
(84, 'Salmon', 25, 'Salmon'),
(85, 'Sand Blue', 55, 'Sand Blue'),
(86, 'Sand Purple', 54, 'Sand Purple'),
(87, 'Sand Red', 58, 'Sand Red'),
(88, 'Sky Blue', 87, 'Sky Blue'),
(89, 'Tan', 2, 'Tan'),
(90, 'Light Stone Gray', 99, 'Very Light Bluish Gray'),
(91, 'Very Light Orange', 96, 'Very Light Orange'),
(92, 'White', 1, 'White'),
(93, 'Yellow', 3, 'Yellow'),
(94, 'Yellowish Green', 158, 'Yellowish Green'),
(95, 'Transparent Black', 13, 'Trans-Black'),
(96, 'Transparent Bright Green', 108, 'Trans-Bright Green'),
(97, 'Transparent', 12, 'Trans-Clear'),
(98, 'Transparent Dark Blue', 14, 'Trans-Dark Blue'),
(99, 'Transparent Dark Pink', 50, 'Trans-Dark Pink'),
(100, 'Transparent Green', 20, 'Trans-Green'),
(101, 'Transparent Light Blue', 15, 'Trans-Light Blue'),
(102, 'Transparent Medium Blue', 74, 'Trans-Medium Blue'),
(103, 'Transparent Neon Green', 16, 'Trans-Neon Green'),
(104, 'Transparent Neon Yellow', 121, 'Trans-Neon Yellow'),
(105, 'Transparent Orange', 98, 'Trans-Orange'),
(106, 'Transparent Pink', 107, 'Trans-Pink'),
(107, 'Transparent Purple', 51, 'Trans-Purple'),
(108, 'Transparent Red', 17, 'Trans-Red'),
(109, 'Transparent Yellow', 19, 'Trans-Yellow'),
(110, 'Chrome Brass', 57, 'Chrome Antique Brass'),
(111, 'Chrome Black', 122, 'Chrome Black'),
(112, 'Chrome Blue', 52, 'Chrome Blue'),
(113, 'Chrome Green', 64, 'Chrome Green'),
(114, 'Chrome Pink', 82, 'Chrome Pink'),
(115, 'Chrome Silver', 22, 'Chrome Silver'),
(116, 'Copper', 84, 'Copper'),
(117, 'Flat Silver', 95, 'Flat Silver'),
(118, 'Metallic Blue', 78, 'Metal Blue'),
(119, 'Pearl Dark Gray', 77, 'Pearl Dark Gray'),
(120, 'Pearl Gold', 115, 'Pearl Gold'),
(121, 'Pearl Light Gold', 61, 'Pearl Light Gold'),
(122, 'Pearl Light Gray', 66, 'Pearl Light Gray'),
(123, 'Pearl White', 83, 'Pearl White'),
(124, 'Metallic Gold', 65, 'Metallic Gold'),
(125, 'Metallic Green', 70, 'Metallic Green'),
(126, 'Metallic Silver', 67, 'Metallic Silver'),
(127, 'Glow in the Dark Transparent White', 46, 'Glow In Dark Opaque'),
(128, 'Glow in the Dark Transparent Green', 118, 'Glow In Dark Trans'),
(129, 'Glow in the Dark Solid White', 159, 'Glow in Dark White'),
(130, 'Translucent White', 60, 'Milky White'),
(131, 'Transparent Glitter', 101, 'Glitter Trans-Clear'),
(132, 'Transparent Pink Glitter', 100, 'Glitter Trans-Dark Pink'),
(133, 'Speckle Black Copper', 116, 'Speckle Black-Copper'),
(134, 'Speckle Gray', 117, 'Speckle DBGray-Silver'),
(135, 'Modulex Aqua Green', 142, 'Mx Aqua Green'),
(136, 'Modulex Black', 128, 'Mx Black'),
(137, 'Modulex Brown', 132, 'Mx Brown'),
(138, 'Modulex Buff', 133, 'Mx Buff'),
(139, 'Modulex Clear', 149, 'Mx Clear'),
(140, 'Modulex Lemon', 139, 'Mx Lemon'),
(141, 'Modulex Light Gray', 125, 'Mx Light Gray'),
(142, 'Modulex Light Orange', 136, 'Mx Light Orange'),
(143, 'Modulex Light Yellow', 137, 'Mx Light Yellow'),
(144, 'Modulex Medium Blue', 144, 'Mx Medium Blue'),
(145, 'Modulex Pastel Blue', 145, 'Mx Pastel Blue'),
(146, 'Modulex Pink', 148, 'Mx Pink'),
(147, 'Modulex Pink Red', 130, 'Mx Pink Red'),
(148, 'Modulex Red', 129, 'Mx Red'),
(149, 'Modulex Teal Blue', 146, 'Mx Teal Blue'),
(150, 'Modulex Terracotta', 134, 'Mx Terracotta'),
(151, 'Modulex Tile Brown', 131, 'Mx Tile Brown'),
(152, 'Modulex Tile Gray', 127, 'Mx Tile Gray'),
(153, 'Modulex Violet', 147, 'Mx Violet'),
(154, 'Modulex White', 123, 'Mx White'),
(156, 'Warm Yellowish Orange', -5, NULL),
(157, 'Medium Yellowish Orange', -6, NULL),
(158, 'Reddish Orange', -7, NULL),
(160, 'Dark Nougat', 225, 'Dark Nougat'),
(161, 'Transparent Neon Reddish Orange', 18, 'Trans-Neon Orange'),
(162, 'Transparent Fire Yellow', -9, NULL),
(163, 'Transparent Light Royal Blue', -10, NULL),
(165, 'Transparent Light Blue Glitter', 162, 'Glitter Trans-Light Blue'),
(167, 'Transparent Neon Green Glitter', 163, 'Glitter Trans-Neon Green'),
(169, 'Curry', 161, 'Dark Yellow'),
(171, 'Transparent Light Orange', 164, 'Trans-Light Orange'),
(173, 'Coral', 220, 'Coral'),
(175, 'Transparent Blue Opal', 223, 'Satin Trans-Light Blue'),
(179, 'Transparent Orange with Glitter', 222, 'Glitter Trans-Orange'),
(181, 'Pearl Red', -13, NULL),
(183, 'Pearl Green', -14, NULL),
(185, 'Pearl Black', -15, NULL),
(189, 'Pearl Blue', -17, NULL),
(191, 'Transparent Light Green', 221, 'Trans-Light Green '),
(193, 'Transparent Opal', 228, 'Satin White'),
(199, 'Transparent Dark Pink Opal', 224, 'Satin Trans-Dark Pink'),
(201, 'Transparent Black Opal', 229, 'Satin Transparent Black'),
(203, 'Transparent Purple Opal', 230, 'Satin Trans-Purple'),
(205, 'Transparent Light Bright Green', 226, 'Trans-Light Bright Green');

-- --------------------------------------------------------

--
-- Table structure for table `designIdMapping`
--

CREATE TABLE `designIdMappingBase` (
  `bricklinkId` varchar(255) NOT NULL,
  `brickowlId` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designIdMappingManual`
--

CREATE TABLE `designIdMappingManual` (
  `id` int(20) NOT NULL,
  `bricklinkId` varchar(255) NOT NULL,
  `brickowlId` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Structure for view `designIdMapping`
--

CREATE VIEW `designIdMapping`  AS SELECT "Base" as sourceTable, bricklinkid, brickowlId FROM `designIdMappingBase` UNION ALL SELECT "Manual", bricklinkid, brickowlId FROM `designIdMappingManual`;

--
-- Structure for view `orders`
--
CREATE TABLE `orders` ( 
  `id` INT(10) NOT NULL, 
  `source` VARCHAR(25) NOT NULL , 
  `orderid` INT(15) NOT NULL , 
  `dateOrdered` DATETIME NOT NULL , 
  `sellerName` VARCHAR(100) NOT NULL , 
  `storeName` VARCHAR(100) NOT NULL , 
  `buyerName` VARCHAR(100) NOT NULL , 
  `status` VARCHAR(50) NOT NULL , 
  `totalCount` INT(10) NOT NULL , 
  `uniqueCount` INT(10) NOT NULL , 
  `isFiled` BOOLEAN NOT NULL , 
  `currencycode` VARCHAR(10) NOT NULL , 
  `subTotal` FLOAT(15,4) NOT NULL , 
  `grandtotal` FLOAT(15,4) NOT NULL , 
  `finalTotal` FLOAT(15,4) NOT NULL
) ENGINE = MyISAM DEFAULT CHARSET=latin1;

-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `source` (`source`,`orderid`);

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Indexes for table `auditLog`
--
ALTER TABLE `auditLog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auditLogJobs`
--
ALTER TABLE `auditLogJobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Indexes for table `brickowlInventory`
--
ALTER TABLE `brickowlInventory`
  ADD PRIMARY KEY (`inventoryId`),
  ADD KEY `BOID` (`itemNo`);

--
-- Indexes for table `bricklinkInventory`
--
ALTER TABLE `bricklinkInventory`
  ADD PRIMARY KEY (`inventoryId`);

--
-- Indexes for table `colorMapping`
--
ALTER TABLE `colorMapping`
  ADD PRIMARY KEY (`brickowlColorId`) USING BTREE,
  ADD KEY `brickowlColorId` (`brickowlColorId`);

--
-- Indexes for table `designIdMapping`
--
ALTER TABLE `designIdMappingBase`
  ADD PRIMARY KEY (`bricklinkId`),
  ADD KEY `bricklinkId` (`bricklinkId`,`brickowlId`);

--
-- Indexes for table `designIdMappingManual`
--
ALTER TABLE `designIdMappingManual`
  ADD PRIMARY KEY (`bricklinkId`),
  ADD KEY `bricklinkId` (`bricklinkId`,`brickowlId`);

--
-- AUTO_INCREMENT for table `auditLog`
--
ALTER TABLE `auditLog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auditLogJobs`
--
ALTER TABLE `auditLogJobs`
  MODIFY `jobId` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
