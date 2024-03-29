-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2019 at 10:33 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clubs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `staffID` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `suEmail` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `roleID` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `password` varchar(200) NOT NULL,
  `dateRegistered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`staffID`, `firstName`, `lastName`, `userName`, `phone`, `suEmail`, `gender`, `roleID`, `status`, `password`, `dateRegistered`, `updated`, `deleted`) VALUES
(1426, 'Michael', 'Owiti', 'mowiti', '', 'mowiti@strathmore.edu', 'Male', 2, 1, 'password', '2017-04-04 01:10:49', '2017-04-26 09:57:30', 0),
(2247, 'Richard', 'Omoka', 'romoka', '0703034111', 'romoka@strathmore.edu', 'Male', 2, 1, '', '2017-04-26 16:38:16', '2017-04-26 16:38:16', 0),
(100100, 'Alexis', 'Sofia', 'asofia', '0712345678', 'alexis.sofia@strathmore.edu', 'Female', 3, 1, 'password', '2019-10-06 07:24:52', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `adminroles`
--

CREATE TABLE `adminroles` (
  `roleID` int(5) NOT NULL,
  `roleName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminroles`
--

INSERT INTO `adminroles` (`roleID`, `roleName`) VALUES
(1, 'Dean of Students'),
(2, 'Administrative Assistant, DoS Office'),
(3, 'Deputy President, Students\' Council');

-- --------------------------------------------------------

--
-- Table structure for table `clubmembers`
--

CREATE TABLE `clubmembers` (
  `pID` int(20) NOT NULL,
  `suID` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `suEmail` varchar(100) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `courseID` varchar(10) NOT NULL,
  `telNo` varchar(30) NOT NULL,
  `dateRegistered` datetime NOT NULL,
  `payment` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated` datetime NOT NULL,
  `deletionStatus` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(200) NOT NULL,
  `leadership` tinyint(1) NOT NULL DEFAULT 0,
  `roleID` int(5) DEFAULT NULL,
  `nominated` tinyint(5) NOT NULL DEFAULT 0,
  `membership` tinyint(1) NOT NULL DEFAULT 1,
  `joinRequest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubmembers`
--

INSERT INTO `clubmembers` (`pID`, `suID`, `firstName`, `lastName`, `gender`, `suEmail`, `clubID`, `courseID`, `telNo`, `dateRegistered`, `payment`, `status`, `updated`, `deletionStatus`, `password`, `leadership`, `roleID`, `nominated`, `membership`, `joinRequest`) VALUES
(1, 84907, 'Cynthia', 'Mutuku', 'Female', 'cynthia.mutuku@strathmore.edu', 'researchclub@strathmore.edu', 'BCOM', '0702037727', '2017-04-26 11:22:32', 1, 1, '2017-05-05 08:36:57', 0, '', 1, 0, 1, 1, 0),
(2, 83785, 'Arafa', 'Ndope', 'Female', 'arafa.ndope@strathmore.edu', 'aiesec@strathmore.edu', 'BTC', '0702866036', '2017-04-26 11:27:29', 1, 1, '2019-10-02 10:10:21', 0, '', 0, NULL, 0, 1, 0),
(3, 82922, 'Alex', 'Osunga', 'Male', 'alex.osunga@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0711416998', '2017-04-26 11:31:01', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(4, 94766, 'Angelica', 'Ogutu', 'Female', 'angelika.ogutu@strathmore.edu', 'spanishclub@strathmore.edu', 'BCOM', '0797379869', '2017-04-26 11:41:23', 0, 1, '2017-05-05 08:36:57', 0, '', 1, 13, 0, 1, 0),
(5, 8322, 'Jane Immaculate', 'Njoroge', 'Female', 'immaculate.njoroge@strathmore.edu', 'chineseclub@strathmore.edu', 'BBS-FE', '0739587097', '2017-04-26 11:44:04', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(6, 89125, 'Brian', 'Kimani', 'Male', 'brian.kimani@strathmore.edu', 'suitsa@strathmore.edu', 'BBIT', '0705243137', '2017-04-26 11:46:06', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(7, 78410, 'Anthony', 'Mwathi', 'Male', 'mwathiantonyit@gmail.com', 'japaneseclub@strathmore.edu', 'BBIT', '0771568843', '2017-04-26 11:49:00', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(8, 78269, 'Emilly', 'Gatobu', 'Female', 'emily.gatobu@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0703612289', '2017-04-26 11:51:56', 0, 1, '2017-05-05 08:36:57', 0, '', 1, 0, 0, 1, 0),
(9, 94919, 'Trevor', 'Mukwaya', 'Male', 'trevor.mukwaya@gmail.com', 'chorale@strathmore.edu', 'BIF', '0790543878', '2017-04-26 11:56:36', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(10, 72862, 'Michael', 'Omugah', 'Male', 'michael.omugah@strathmore.edu', 'strathmoredramasociety@strathmore.edu', 'BCOM', '0708001115', '2017-04-26 11:58:27', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(11, 83329, 'Sandra', 'Ngaire', 'Female', 'sandra.ngaire@strathmore.edu', 'readingclub@strathmore.edu', 'BCOM', '0716387013', '2017-04-26 12:01:24', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(12, 89257, 'Fred', 'Muthusi', 'Male', 'fred.muthusi@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0725931506', '2017-04-26 12:03:20', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(13, 83563, 'Sandra', 'Barasa', 'Female', 'sandra.akochi@strathmore.edu', 'suffesa@strathmore.edu', 'BBS-FIN', '0700283404', '2017-04-26 12:05:55', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(14, 88354, 'Brigid', 'Mose', 'Male', 'bridgid.gesare@strathmore.edu', 'frenchclub@strathmore.edu', 'LLB', '0719747486', '2017-04-26 12:08:12', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(15, 78581, 'Stephen', 'Mokoro', 'Male', 'stephen.mokoro@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0719508386', '2017-04-26 14:03:41', 0, 1, '2017-05-05 08:36:57', 0, '', 1, 1, 0, 1, 0),
(16, 83578, 'Karanja', 'Ng\'ang\'a', 'Male', 'wilfred.ng\'ang\'a715@strathmore.edu', 'toastmasters@strathmore.edu', 'BCOM', '0729665914', '2017-04-27 11:03:56', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(17, 75500, 'Lilian', 'Warutere', 'Female', 'lilywarutere@gmail.com', 'sumediagroup@strathmore.edu', 'BCOM', '0702200222', '2017-04-27 16:28:44', 0, 1, '2017-05-05 08:36:57', 0, '', 0, 0, 1, 1, 0),
(18, 82659, 'Cicily', 'Muriuki', 'Female', 'cicily.wangu@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0720354735', '2017-04-28 15:32:19', 1, 1, '2017-05-05 08:36:57', 0, '5d9521675536e816475162ee819b0a0c', 0, 0, 0, 1, 0),
(19, 84015, 'Arnold', 'Muchiri', 'Male', 'arnold.muchiri@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0700470979', '2016-11-20 12:06:44', 0, 1, '2017-04-01 05:29:13', 0, '1e3734a438ef7de3a0ade1c4c8add96a', 0, 0, 0, 1, 0),
(20, 90693, 'David', 'Kariuki', 'Male', 'david.kariuki@strathmore.edu', 'researchclub@strathmore.edu', 'BCOM', '0704911701', '2016-11-20 12:12:09', 1, 1, '2017-02-25 07:59:04', 0, 'ecabb4b6bfac6c3d46f407197125ec12', 0, 0, 0, 1, 0),
(21, 78900, 'Anthony', 'Mwathi', 'Male', 'anthony.mwathi@strathmore.edu', 'japaneseclub@strathmore.edu', 'BBIT', '0700470979', '2016-11-20 12:50:02', 0, 1, '2017-05-05 08:44:31', 0, 'df9c2db904fc261b28bc09244724b838', 0, 0, 0, 1, 0),
(22, 95310, 'Michael', 'Kiarie', 'Male', 'michael.kiarie@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0724234210', '2016-11-22 17:57:05', 1, 1, '2017-02-15 05:22:14', 0, '10e70b851de04ad89a1e38b85b717f54', 0, 0, 0, 1, 0),
(23, 95978, 'John', 'Ngugi', 'Male', 'john.ngugi716@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0773975744', '2016-11-22 17:57:57', 1, 1, '2017-02-07 05:45:09', 0, '91539f47c287458e1bb268147f3e82e8', 0, 0, 0, 1, 0),
(24, 78725, 'Emilly', 'Barongo', 'Female', 'emilly.barongo@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0723020280', '2016-11-22 18:38:47', 0, 1, '2016-11-22 12:38:47', 0, '09cf49ba8f4ac7f9b0ae11aaa6dfaaa9', 0, 0, 0, 1, 0),
(25, 78378, 'Michael', 'Shihusa', 'Male', 'michael.indasi@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '+254729309096', '2016-11-22 19:13:14', 1, 1, '2017-04-01 05:29:04', 0, '50f363b12e8aef876194c49ecd77b922', 0, 0, 0, 1, 0),
(26, 77600, 'Jessica', 'Marenge', 'Female', 'jessica.marenge@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0711300363', '2016-11-23 16:29:38', 0, 1, '2017-04-01 11:28:32', 0, '05812c08148820d1885079954dc54ea5', 0, 0, 0, 1, 0),
(27, 78776, 'Rita', 'Omondi', 'Female', 'rita.omondi@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0703109743', '2016-11-23 17:13:07', 0, 1, '2016-11-23 11:13:07', 0, '0fabe24f1851393b1900c2a0675369f6', 0, 0, 0, 1, 0),
(28, 78603, 'Annet', 'Ngumba', 'Female', 'annet.ngumba@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0700940480', '2016-11-23 17:15:38', 0, 1, '2016-11-23 11:15:38', 0, '166336c7c04c088ef064cb33661459ec', 0, 0, 0, 1, 0),
(29, 75494, 'Doris', 'Njihia', 'Female', 'dorisn172@gmail.com', 'chineseclub@strathmore.edu', 'BIF', '0719254239', '2017-02-07 17:32:34', 0, 1, '2017-05-05 08:32:10', 0, '', 0, 0, 0, 1, 0),
(30, 77790, 'Maureen', 'Gathua', 'Female', 'muguregathua@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0718924456', '2017-02-07 17:32:34', 0, 1, '2017-05-05 08:32:15', 0, '', 0, 0, 0, 1, 0),
(31, 77790, 'Maureen', 'Gathua', 'Female', 'muguregathua@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0718924456', '2017-02-07 18:03:01', 0, 1, '2017-05-05 08:44:31', 0, '', 0, 0, 0, 1, 0),
(32, 77942, 'Lorraine', 'Wanjao', 'Female', 'diananyambura7@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0706305245', '2017-02-07 18:03:01', 0, 1, '2017-05-05 08:33:03', 0, '', 0, 0, 0, 1, 0),
(33, 78110, 'Diana', 'Kabiru', 'Female', 'diananyambura7@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0725617627', '2017-02-07 18:03:01', 0, 1, '2017-05-05 08:31:54', 0, '', 0, 0, 0, 1, 0),
(34, 78217, 'Michael', 'Wanyoike', 'Male', 'michael.thungu@strathmore.edu', 'chineseclub@strathmore.edu', 'BBS-FE', '0718123163', '2017-02-07 18:03:01', 0, 1, '2017-05-05 08:32:36', 0, '', 0, 0, 0, 1, 0),
(35, 78459, 'Ochieng', 'Daniel', 'Male', 'daniel.ochieng713@strathmore.e', 'chineseclub@strathmore.edu', 'BCOM', '0701011030', '2017-02-07 18:03:01', 0, 1, '2017-05-05 08:32:53', 0, '', 0, 0, 0, 1, 0),
(36, 78459, 'Shirley', 'Omari', 'Female', 'somari@icdc.co.ke', 'chineseclub@strathmore.edu', 'BBS-FE', '0708199271', '2017-02-07 18:12:29', 0, 1, '2017-05-05 08:33:14', 0, '', 0, 0, 0, 1, 0),
(37, 80932, 'Elizabeth ', 'Thinwa', 'Female', 'mqlizzy@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0727170165', '2017-02-07 18:12:29', 0, 1, '2017-05-05 08:31:49', 0, '', 0, 0, 0, 1, 0),
(38, 81906, 'Susan', 'Nasirumbi', 'Female', 'usan.nasirumbi@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0717301184', '2017-02-07 18:12:29', 0, 1, '2017-05-05 08:34:04', 0, '', 0, 0, 0, 1, 0),
(39, 81945, 'Margaret', 'Ndungu', 'Female', 'margaret.njambi@strathmore.edu', 'chineseclub@strathmore.edu', 'BBS-FE', '0711139170', '2017-02-07 18:12:29', 0, 1, '2017-05-05 08:33:23', 0, '', 0, 0, 0, 1, 0),
(40, 82434, 'Anne ', 'Kabicho', 'Female', 'cirukabicho@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0723212907', '2017-02-07 18:17:21', 0, 1, '2017-05-05 08:32:05', 0, '', 0, 0, 0, 1, 0),
(41, 82679, 'Sheila', 'Nthenya', 'Female', 'nthenyasheila@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0711893354', '2017-02-07 18:17:21', 0, 1, '2017-05-05 08:33:33', 0, '', 0, 0, 0, 1, 0),
(42, 83326, 'Paul', 'Njenga', 'Male', 'pchegenjenga@gmail.com', 'chineseclub@strathmore.edu', 'BBS-FE', '0715987334', '2017-02-07 18:21:37', 0, 1, '2017-05-05 08:33:55', 0, '', 0, 0, 0, 1, 0),
(43, 78400, 'Rebecca', 'Eyanae', 'Female', 'rebecca.eyanae@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0718168567', '2016-11-23 17:17:03', 0, 1, '2017-04-01 05:29:07', 0, '8e73ac48e1fe9e9f1a2aab3b9baf32dc', 0, 0, 0, 1, 0),
(44, 78375, 'Billy', 'Otieno', 'Male', 'billy.otieno@strathmore', 'researchclub@strathmore.edu', 'BBIT', '0715805770', '2016-11-23 18:18:01', 0, 1, '2017-04-01 05:29:00', 0, 'c413279f42f9a24e1b65d2d161e6bc60', 0, 0, 0, 1, 0),
(45, 75379, 'Martin', 'Masese', 'Male', 'martin.masese@strathmore.edu', 'researchclub@strathmore.edu', 'LLB', '0729439728', '2016-11-23 18:54:44', 1, 1, '2017-05-05 08:36:57', 0, 'f1a224c1d757611ba191ee232a09ab54', 1, 0, 0, 1, 0),
(46, 73658, 'Rohni', 'Randiek', 'Male', 'rohni.randiek@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0706520581', '2017-01-16 14:45:22', 0, 1, '2017-05-05 08:44:31', 0, '4b23deea305f3c060c452b0795440ae0', 0, 0, 0, 1, 0),
(47, 83329, 'Sandra', 'Ngaire', 'Female', 'sandra.ngaire@strathmore.edu', 'researchclub@strathmore.edu', 'BCOM', '0716387013', '2017-01-17 19:18:18', 1, 1, '2017-02-06 12:13:53', 0, '662883725674549595476fa6f2d457e0', 0, 0, 0, 1, 0),
(48, 59821, 'George', 'Kagwe', 'Male', 'george.githiri@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0719717058', '2017-01-18 15:12:58', 0, 1, '2017-05-05 12:17:56', 0, 'a76a591b380a3be7b30b6dcacd6c4c5d', 0, 0, 0, 1, 0),
(49, 78602, 'Nelly', 'Naliaka', 'Female', 'nelly.namunyu@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '+254716289590', '2017-01-23 15:56:17', 0, 1, '2017-01-23 09:56:17', 0, 'b80f6c2f9d2941fff3873c8f220d2be0', 0, 0, 0, 1, 0),
(50, 84754, 'Vincent', 'Ojwang', 'Male', 'vincent.ojwang@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0707583847', '2017-01-24 12:03:54', 0, 1, '2017-01-24 06:03:54', 0, '6866dcc53b82f4d635e19f6d09a9a660', 0, 0, 0, 1, 0),
(51, 84595, 'Eunice', 'Githaiga', 'Female', 'eunice.githaiga@strathmore.edu', 'researchclub@strathmore.edu', 'BCOM', '0719697246', '2017-01-24 18:22:55', 0, 1, '2017-01-24 12:22:55', 0, 'f5a4405f9c4fd6618e548c36f7f468a1', 0, 0, 0, 1, 0),
(52, 78288, 'Joe', 'wachira', 'Male', 'joseph.wachira@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0729492126', '2017-01-26 10:37:44', 1, 1, '2017-05-05 08:36:57', 0, 'ef82112d781b720c41cb840514f4bdbe', 0, 0, 0, 1, 0),
(53, 94048, 'Philemon', 'Olang', 'Male', 'philemon.olang@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0737331531', '2017-01-31 05:39:04', 1, 1, '2017-02-09 10:37:54', 0, 'dbd9e1b29c0533962e774a1c6ffa0cb2', 0, 0, 0, 1, 0),
(54, 84067, 'Benjamin', 'Simiyu', 'Male', 'benjamin.simiyu@strathmore.edu', 'researchclub@strathmore.edu', 'CPA', '0707676528', '2017-02-02 02:33:45', 1, 1, '2017-05-05 08:36:57', 0, '61531b8779260103101bff0024e7be0e', 0, 0, 0, 1, 0),
(55, 78410, 'Antony', 'Mwathi', 'Male', 'amwathi@fluidtechglobal.com', 'researchclub@strathmore.edu', 'BBIT', '+254771568843', '2017-02-06 15:30:44', 0, 1, '2017-04-01 10:45:27', 0, '846feb08aa3fd3d1a0b1467b57c28566', 0, 0, 0, 1, 0),
(56, 77099, 'Jacquiline', 'Gitau', 'Female', 'jacquiline.gitau@strathmore.ed', 'researchclub@strathmore.edu', 'BBIT', '0718162362', '2017-02-06 16:09:29', 0, 1, '2017-05-05 08:36:57', 0, '7c01085f25855c8998f7a978e6185cac', 0, 0, 1, 1, 0),
(57, 91501, 'Audrey', 'Kisia', 'Female', 'audrey.kisia@strathmore.edu', 'chineseclub@strathmore.edu', 'BBS-FE', '0797561422', '2017-02-07 16:48:52', 0, 1, '2017-02-07 10:54:13', 0, '847a7c8fc199d335e5c50dcfdf4cff04', 0, 0, 0, 1, 0),
(58, 67943, 'David', 'Kaczeda', 'Male', 'david.kaczeda@strathmore.edu', 'chineseclub@strathmore.edu', 'LLB', '0715641530', '2017-02-07 17:20:56', 0, 1, '2017-05-05 08:33:50', 0, '', 0, 0, 0, 1, 0),
(59, 83338, 'Sylvie', 'Terer', 'Female', 'sylvie.terer@strathmore.edu', 'chineseclub@strathmore.edu', 'BBS-FE', '0718022508', '2017-02-07 18:21:37', 0, 1, '2017-05-05 08:34:17', 0, '', 0, 0, 0, 1, 0),
(60, 83469, 'Alice', 'Kuria', 'Female', 'wambuikuria7@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0712600809', '2017-02-09 17:47:00', 0, 1, '2017-05-05 08:33:38', 0, '130541e57fc459e62c09635617bcaf3b', 0, 0, 0, 1, 0),
(61, 95157, 'Frida', 'Odunga', 'Female', 'freidahadhiambo635@gmail.com', 'chineseclub@strathmore.edu', 'BBIT', '0790917184', '2017-02-09 17:48:19', 0, 1, '2017-05-05 08:31:27', 0, '04514466653e0a193e8ca7c4f93974e9', 0, 0, 0, 1, 0),
(62, 94895, 'Stephanie', 'Mailu', 'Female', 'stephanie52mylez@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0700837486', '2017-02-09 17:50:23', 0, 1, '2017-05-05 08:32:48', 0, 'ac1d0945d06800bcb6bf88098934b17e', 0, 0, 0, 1, 0),
(63, 90157, 'Boaz', 'Tanui', 'Male', 'boaztanui.bt@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0710908262', '2017-02-09 17:53:54', 0, 1, '2017-05-05 08:33:18', 0, '27b8693437c985fc396724e641927b02', 0, 0, 0, 1, 0),
(64, 89885, 'Kelvin', 'Gathoni', 'Male', 'gkelvinnjenga@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0717525145', '2017-02-09 17:55:59', 0, 1, '2017-05-05 08:34:09', 0, 'eba3105c4c5757419e3a33939b7f4994', 0, 0, 0, 1, 0),
(65, 87112, 'carol', 'songa', 'Female', 'carolsonga1@gmail.com', 'chineseclub@strathmore.edu', 'BTC', '0707040114', '2017-02-09 17:57:41', 0, 1, '2017-05-05 08:33:10', 0, '374daf030ee6b37bcc89b1b00fee76e9', 0, 0, 0, 1, 0),
(66, 84683, 'Mercy', 'King\'ori', 'Female', 'Mercy.king\'ori@strathmore.edu', 'chineseclub@strathmore.edu', 'LLB', '0711343222', '2017-02-09 17:59:56', 0, 1, '2017-05-05 08:33:28', 0, '0303b5c4ca47ce468791f60c278042d9', 0, 0, 0, 1, 0),
(67, 84407, 'Gathoni', 'Maryjory', 'Female', 'Marjory.Gathoni@strathmore.edu', 'chineseclub@strathmore.edu', 'LLB', '0725293575', '2017-02-09 18:01:23', 0, 1, '2017-05-05 08:31:59', 0, '37dc77830446676ba495546f7741ea8b', 0, 0, 0, 1, 0),
(68, 80404, 'Terence', 'Odomo', 'Male', 'terenceodumo12@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0714392629', '2017-02-09 18:02:40', 0, 1, '2017-05-05 08:33:46', 0, 'e7bee38dcf6234aeefa5d40abc4c5b4f', 0, 0, 0, 1, 0),
(69, 84399, 'Sanyu', 'Nantale', 'Female', 'nantalesanyu@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0701763689', '2017-02-09 18:04:03', 0, 1, '2017-05-05 08:32:58', 0, 'f336c18e189463480ded24051885aa27', 0, 0, 0, 1, 0),
(70, 84114, 'Doras', 'Kaguara', 'Female', 'doraskaguara100@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0729553727', '2017-02-09 18:05:27', 0, 1, '2017-05-05 08:31:39', 0, '4a5de368c33454754fb115213063f62c', 0, 0, 0, 1, 0),
(71, 84048, 'Doras', 'Kaguara', 'Female', 'doraskaguara100@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0729553727', '2017-02-09 18:08:08', 0, 1, '2017-05-05 08:44:31', 0, '6069a2d27588a0dc6ef768f12c8d94bd', 0, 0, 0, 1, 0),
(72, 72951, 'Brian', 'Mutwiri', 'Male', 'brian.nutwiri@strathmore.edu', 'strathmoredramasociety@strathmore.edu', 'LLB', '0715915980', '2017-02-09 18:23:09', 1, 1, '2017-02-09 12:23:09', 0, '384001e112a26683c40eca2a5042a10f', 0, 0, 0, 1, 0),
(73, 91515, 'Fiona', 'Wabwire', 'Female', 'fiona.wabwire@strathmore.edu', 'strathmoredramasociety@strathmore.edu', 'LLB', '0704730175', '2017-02-09 18:25:15', 1, 1, '2017-02-09 12:25:15', 0, '1eb1a64b577705ccc71904dae51b1e36', 0, 0, 0, 1, 0),
(74, 76923, 'Grace', 'Mwanzia', 'Female', 'gmwanziangaie@gmail.com', 'chineseclub@strathmore.edu', 'BCOM', '0718770825', '2017-02-09 18:34:23', 0, 1, '2017-05-05 08:32:26', 0, '3737cafeafc5be970db46cb7f2a2ef57', 0, 0, 0, 1, 0),
(75, 94899, 'Nicole', 'Moraa', 'Female', 'nicole.moraa@strathmore.edu', 'strathmoredramasociety@strathmore.edu', 'BCOM', '0718531500', '2017-02-10 12:35:06', 1, 1, '2017-02-10 06:35:06', 0, '74653998d77533c8588e5857508980b5', 0, 0, 0, 1, 0),
(76, 94899, 'Alice', 'Mugo', 'Female', 'alicemugo@strathmore.edu', 'spanishclub@strathmore.edu', 'BBS-FE', '0795673569', '2017-02-10 20:10:02', 0, 1, '2017-05-05 08:44:31', 0, '0fdf002de895cdd16514099cc423cd61', 0, 0, 0, 1, 0),
(77, 95723, 'Adrian', 'Shah', 'Male', 'adrianshah@strathmore.edu', 'spanishclub@strathmore.edu', 'BBIT', '0700234125', '2017-02-10 20:11:07', 0, 1, '2017-05-05 08:44:31', 0, '912b2beb09f2d18e6b8f8a8f1c182d7d', 0, 0, 0, 1, 0),
(78, 94764, 'Reggy', 'Akinyi', 'Female', 'akinyireggy@gmail.com', 'spanishclub@strathmore.edu', 'BCOM', '0717702348', '2017-02-10 20:13:16', 0, 1, '2017-05-05 08:44:31', 0, 'dcb38b410443a6246bb9aa90281acf2b', 0, 0, 0, 1, 0),
(79, 93456, 'Brayan', 'Gitau', 'Male', 'brayangitau@strathmore.edu', 'spanishclub@strathmore.edu', 'BHM', '0703456789', '2017-02-10 20:14:29', 0, 1, '2017-05-05 08:44:31', 0, 'e597178b21a2afeb7a86ccefcb53bbf4', 0, 0, 0, 1, 0),
(80, 78841, 'Olive', 'Mumbo', 'Female', 'olive.mumbo@strathmore.edu', 'spanishclub@strathmore.edu', 'LLB', '0703763374', '2017-02-10 20:21:50', 0, 1, '2017-02-10 14:21:50', 0, '4b20603e74e5ad0a02a5d8a0c6560ab8', 0, 0, 0, 1, 0),
(81, 94919, 'TREVOR', 'MUKWAYA', 'Male', 'trevor.mukwaya@gmail.com', 'chorale@strathmore.edu', 'BIF', '0790543878', '2017-02-13 07:53:22', 1, 1, '2017-02-13 01:53:22', 0, '46eedb05df70119921fe43e97d2af076', 0, 0, 0, 1, 0),
(82, 94591, 'HOPE VALENTINE', 'MIRITI', 'Female', 'hope.miriti@strathmore.edu', 'chorale@strathmore.edu', 'LLB', '0701358733', '2017-02-13 11:22:22', 1, 1, '2017-02-13 05:22:22', 0, '048107cdfffacc6bfde0fc868d1072ad', 0, 0, 0, 1, 0),
(83, 83742, 'ASSUMPTA ADHIAMBO', 'WANYAMA', 'Male', 'assumpta.wanyama@strathmore.ed', 'chorale@strathmore.edu', 'BBS-FE', '0736815546', '2017-02-13 11:23:57', 1, 1, '2017-02-13 05:23:57', 0, '8cdb0cf9f366fe8167b80fdda4457b05', 0, 0, 0, 1, 0),
(84, 94853, 'MARTIN', 'MUCHEMI', 'Male', 'muchemigits@gmail.com', 'chorale@strathmore.edu', 'CPA', '0717684094', '2017-02-13 11:31:02', 1, 1, '2017-02-13 05:34:52', 0, 'ab4ef9a356eef46b693befe1e6062a75', 0, 0, 0, 1, 0),
(85, 80621, 'SYLVIA', 'MUTHEMBA', 'Female', 'sylvia.muthemba@strathmore.edu', 'chorale@strathmore.edu', 'LLB', '0725202598', '2017-02-13 11:45:54', 1, 1, '2017-02-13 05:45:54', 0, 'd1bd8ee3094e2653f34a419739d6772f', 0, 0, 0, 1, 0),
(86, 80070, 'EDWIN KAHURA', 'NJAU', 'Male', 'edwin.njau@strathmore.edu', 'chorale@strathmore.edu', 'ACCA', '0706862153', '2017-02-13 15:43:36', 1, 1, '2017-02-13 09:43:36', 0, 'c1cb97d5ba1bc522befdd8c1c61c8bc6', 0, 0, 0, 1, 0),
(87, 95310, 'MICHAEL HOTANI', 'KIARIE', 'Male', 'michael.kiarie@strathmore.edu', 'chorale@strathmore.edu', 'BBIT', '0724234210', '2017-02-13 15:47:30', 1, 1, '2017-02-13 09:47:30', 0, 'd08b1a6b651ba0893abed40ddb38023b', 0, 0, 0, 1, 0),
(88, 90751, 'SAMUEL OUMA', 'OPONDO', 'Male', 'samuel.opondo@starthmore.edu', 'chorale@strathmore.edu', 'CPA', '0719199419', '2017-02-13 15:49:10', 1, 1, '2017-02-13 11:00:31', 0, 'd9b08ea3444bb1276a7fd0247ab8fd8a', 0, 0, 0, 1, 0),
(89, 89176, 'STEPHEN NDUNGU', 'KIHARA', 'Male', 'stephen.kihara@strathmore.edu', 'chorale@strathmore.edu', 'CPA', '0738891691', '2017-02-13 15:50:43', 1, 1, '2017-02-13 09:50:43', 0, '61f0f15017a7ff173923b328532abb67', 0, 0, 0, 1, 0),
(90, 83369, 'JOY MWAI', 'ACHIENG', 'Male', 'joy.achieng@strathmore.edu', 'chorale@strathmore.edu', 'BCOM', '0706527549', '2017-02-13 15:51:55', 1, 1, '2017-02-13 09:51:55', 0, 'd3d8ad16709c839b0c96ee4a5caa95e2', 0, 0, 0, 1, 0),
(91, 95405, 'SHAMMAH ODUOR', 'WEMA', 'Male', 'shammah.wema@strathmore.edu', 'chorale@strathmore.edu', 'BA-Int.St', '0796525552', '2017-02-13 15:53:16', 1, 1, '2017-02-13 09:53:16', 0, '61576d727fa5928a2883ce613ccd015e', 0, 0, 0, 1, 0),
(92, 89795, 'WENDY MUTILA', 'KYALO', 'Male', 'wendy.mutila@strathmore.edu', 'chorale@strathmore.edu', 'BHM', '0702706462', '2017-02-13 15:54:48', 1, 1, '2017-02-13 09:54:48', 0, '501441199e9b71b2ef37a700a411b341', 0, 0, 0, 1, 0),
(93, 84337, 'DAVID RUBASHA', 'MPANANO', 'Male', 'david.mpanano@starthmore.edu', 'chorale@strathmore.edu', 'BBS-FE', '0719529081', '2017-02-13 15:56:14', 1, 1, '2017-02-13 09:56:14', 0, 'a52e806823b7d21af18d372eacf0c15d', 0, 0, 0, 1, 0),
(94, 77021, 'TEDD MIANO', 'MURIMI', 'Male', 'tedd.murimi@strathmore.edu', 'chorale@strathmore.edu', 'LLB', '0712281009', '2017-02-13 15:57:16', 1, 1, '2017-02-13 09:57:16', 0, 'd8b271994fdabae722b7220db28ab647', 0, 0, 0, 1, 0),
(95, 83542, 'WINFRED JOSEPHINE', 'ANYONA ', 'Female', 'winfred.anyona@strathmore.edu', 'chorale@strathmore.edu', 'BCOM', '0712949753', '2017-02-13 15:58:44', 1, 1, '2017-02-13 09:58:44', 0, '8676f6fc66614e3f0952f537aef8695c', 0, 0, 0, 1, 0),
(96, 83525, 'LEONARD', 'GATHUYA', 'Male', 'leonard.gathuya@starthmore.edu', 'chorale@strathmore.edu', 'BHM', '0703861855', '2017-02-13 15:59:37', 1, 1, '2017-02-13 10:11:54', 0, '3147dafa6900a46e6ba21316371aa53a', 0, 0, 0, 1, 0),
(97, 92299, 'MUTHEU', 'NYAMAI', 'Female', 'nyamai.mutheu@strathmore.com', 'chorale@strathmore.edu', 'BCOM', '0718644881', '2017-02-13 16:02:37', 1, 1, '2017-02-13 10:30:34', 0, 'bf5ba31a5130fff2c65af3724662dac6', 0, 0, 0, 1, 0),
(98, 91620, 'CELINE', 'TANUI', 'Female', 'celine.tanui@starthmore.edu', 'chorale@strathmore.edu', 'BA-Int.St', '0700027166', '2017-02-13 16:03:46', 0, 1, '2017-02-13 10:03:46', 0, 'a0db3b5c92275fb63edb7ccc8920a546', 0, 0, 0, 1, 0),
(99, 8752, 'VICTOR', 'OCHIENG', 'Male', 'victor.ochieng@starthmore.edu', 'chorale@strathmore.edu', 'CPA', '0705252133', '2017-02-13 16:05:33', 0, 1, '2017-02-13 10:05:33', 0, '192a9ec9df46fdacf2d8a41e24c43324', 0, 0, 0, 1, 0),
(100, 95041, 'WHITNEY WAMBUI', 'MWANGI', 'Female', 'whitney.mwangi@strathmore.edu', 'chorale@strathmore.edu', 'BCOM', '0792660613', '2017-02-13 16:06:33', 1, 1, '2017-02-13 10:06:33', 0, 'afdb9b348895dd53b89b045db9a2a19e', 0, 0, 0, 1, 0),
(101, 95009, 'IAN MURIMI', 'NJOROGE ', 'Male', 'ian.njoroge@strathmore.edu', 'chorale@strathmore.edu', 'BIF', '0702024681', '2017-02-13 16:07:52', 1, 1, '2017-02-13 10:07:52', 0, '8f1163f2afd232998f6112177b77004a', 0, 0, 0, 1, 0),
(102, 100319, 'MOSES KOYO', 'ODALO', 'Male', 'moseodalo@gmail.com', 'chorale@strathmore.edu', 'CPA', '0796919703', '2017-02-13 16:10:20', 0, 1, '2017-02-13 10:13:27', 0, 'd7b19356e893c792e9d016e320d0ddb2', 0, 0, 0, 1, 0),
(103, 95107, 'ALAN NDORO', 'MRUTTU', 'Male', 'alan.mruttu@strathmore.edu', 'chorale@strathmore.edu', 'BBIT', '0702575803', '2017-02-13 16:16:32', 1, 1, '2017-02-13 10:16:32', 0, 'fd6e83047c1a3351d13015a0992390e9', 0, 0, 0, 1, 0),
(104, 89901, 'LISA', 'CHAO', 'Female', 'lisa.cho@strathmore.edu', 'chorale@strathmore.edu', 'BBS-FE', '0708762178', '2017-02-13 16:22:34', 1, 1, '2017-02-13 10:22:34', 0, '5a5f216f933fd455cb859cc6ffa9dff2', 0, 0, 0, 1, 0),
(105, 92941, 'Arsene', 'Akilimali', 'Male', 'arsene.akilimali@strathmore.ed', 'researchclub@strathmore.edu', 'BCOM', '0713758771', '2017-02-13 17:38:05', 1, 1, '2017-02-13 11:40:31', 0, '384a3e54b0329f2ffcc0d920ec5aab6c', 0, 0, 0, 1, 0),
(106, 90003, 'Anita', 'Kamau', 'Female', 'anita.kamau@strathmore.edu', 'spanishclub@strathmore.edu', 'LLB', '0717436003', '2017-02-14 09:32:25', 0, 1, '2017-02-14 03:32:25', 0, '182b23ef5402eee3016f18d1d17189b0', 0, 0, 0, 1, 0),
(107, 83380, 'Julien', 'Ngalo', 'Male', 'julien.ngalo@strathmore.edu', 'spanishclub@strathmore.edu', 'BBIT', '0724261008', '2017-02-14 09:34:20', 0, 1, '2017-02-14 03:34:20', 0, '94eb410b1e9d7eb7d2f7ff7b671dae8f', 0, 0, 0, 1, 0),
(108, 89423, 'Joan', 'Wairimu', 'Female', 'wairimu738@gmail.com', 'spanishclub@strathmore.edu', 'BCOM', '0708797451', '2017-02-14 09:35:43', 0, 1, '2017-02-14 03:35:43', 0, '089d8c1c5732194a16c9da3d0f4d7800', 0, 0, 0, 1, 0),
(109, 95854, 'Thomas', 'Obam', 'Male', 'obamtomas@gmail.com', 'spanishclub@strathmore.edu', 'BTC', '0786611454', '2017-02-14 09:39:14', 0, 1, '2017-02-14 03:39:14', 0, '3930b7b1f31c378bee6c79f9c53d1cb3', 0, 0, 0, 1, 0),
(110, 86575, 'Beth', 'Kyalo', 'Female', 'beth.kyalo@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BCOM', '0713096693', '2017-02-14 09:55:58', 0, 1, '2017-02-14 07:04:53', 0, '40b560efb1906e66dcb9b5959edc55c8', 0, 0, 0, 1, 0),
(111, 83474, 'Rashid ', 'Ingwela', 'Male', 'ianpeter.ingwela@strathmore.ed', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0700445886', '2017-02-14 09:58:39', 0, 1, '2017-02-14 07:05:15', 0, '4a4b3a24952304beb938eca65b48aded', 0, 0, 0, 1, 0),
(112, 83216, 'Jackson', 'Maloba', 'Male', 'juma.jackson@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0717930926', '2017-02-14 10:38:33', 0, 1, '2017-02-14 07:05:27', 0, 'e8771c950d74ad5eca90d2a4fdb943a9', 0, 0, 0, 1, 0),
(113, 88325, 'Christine ', 'Gitau', 'Female', 'christine.gitau115@strathmore.', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0712327098', '2017-02-14 11:47:37', 0, 1, '2017-02-14 11:31:41', 0, 'c6ae703abbc40883f32ad0d8dee73261', 0, 0, 0, 1, 0),
(114, 88181, 'Omar', 'zishan', 'Male', 'touin.zishan@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0710586786', '2017-02-14 11:50:13', 0, 1, '2017-02-14 05:50:13', 0, '38396388886aaa309d0bf65ffa2f2dd9', 0, 0, 0, 1, 0),
(115, 72617, 'Greg', 'Samuel', 'Male', 'samwel.ondunga@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0733442879', '2017-02-14 12:25:23', 0, 1, '2017-02-14 06:25:23', 0, '88a19a5602c80e5a23785d53bd2ccc4c', 0, 0, 0, 1, 0),
(116, 88068, 'Kenneth', 'Kirika', 'Male', 'kenneth.kirika@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0714608819', '2017-02-14 12:27:34', 0, 1, '2017-02-14 06:27:34', 0, 'c1207b45dd0134bff832d162fe35baa4', 0, 0, 0, 1, 0),
(117, 89121, 'Stephen', 'Kiema', 'Male', 'stephen.kiema@strathmore.edu', 'strathmoreenvironmentalclub@strathmore.edu', 'BBIT', '0702444220', '2017-02-14 12:39:59', 0, 1, '2017-02-14 06:39:59', 0, 'b89fa1a7ab54c232e1b8cc3f16c209ed', 0, 0, 0, 1, 0),
(118, 90169, 'Clifford', 'Aviha', 'Male', 'clifford.musimbi@strathmore.ed', 'strathmoreenvironmentalclub@strathmore.edu', 'BTC', '0707651348', '2017-02-14 17:33:24', 0, 1, '2017-02-14 11:33:24', 0, '2e3568d40384f7216308d4ff55b3c893', 0, 0, 0, 1, 0),
(119, 94531, 'Daphine', 'Lekipaika', 'Female', 'Lekipaikadaphine@gmail.com', 'spanishclub@strathmore.edu', 'LLB', '0712414880', '2017-02-15 09:29:25', 0, 1, '2017-02-15 03:29:25', 0, '0c57a5d570d888ba54d635fae810b18b', 0, 0, 0, 1, 0),
(120, 95855, 'Rodney ', 'Kariuki', 'Male', 'markrodney145@gmail.com', 'spanishclub@strathmore.edu', 'BA-Int.St', '0718121220', '2017-02-15 09:32:32', 0, 1, '2017-02-15 03:32:32', 0, 'b6828c56853859a006f002ebbab21bae', 0, 0, 0, 1, 0),
(121, 84477, ' Golda', 'Kisutsa ', 'Female', 'golda.kisutsa@strathmore.edu', 'aiesec@strathmore.edu', 'BTC', '0710847195', '2017-02-15 14:12:39', 0, 1, '2017-04-02 09:04:27', 0, '', 0, 0, 1, 1, 0),
(122, 86051, ' Christine ', 'Kahura ', 'Female', 'christine.kahura@strathmore.ed', 'aiesec@strathmore.edu', 'BCOM', '0713614781', '2017-02-15 14:12:39', 0, 1, '2017-04-02 08:57:37', 0, '', 0, 0, 0, 1, 0),
(123, 85463, 'Judy ', 'Muriuki ', 'Female', 'judy.muriuki715@strathmore.edu', 'aiesec@strathmore.edu', 'BBIT', '0707647531', '2017-02-15 14:12:39', 0, 1, '2017-04-02 08:57:34', 0, '', 0, 0, 0, 1, 0),
(124, 86536, 'Scaver', 'Saitaga', 'Male', 'scaver.saitaga@strathmore.edu ', 'aiesec@strathmore.edu', 'BCOM', '0707731126', '2017-02-15 14:12:39', 0, 1, '2017-02-15 13:48:51', 0, '', 0, 0, 0, 1, 0),
(125, 89433, 'Richard ', 'Mwiwa', 'Male', 'richard.mwiwa@strathmore.edu', 'aiesec@strathmore.edu', 'BCOM', '0707731126', '2017-02-15 14:12:39', 0, 1, '2017-02-15 13:48:49', 0, '', 0, 0, 0, 1, 0),
(126, 89205, 'Jacqueline', 'Mukira', 'Female', ' jacqueline.mukira@strathmore.', 'aiesec@strathmore.edu', 'BCOM', '0720279985 ', '2017-02-15 14:12:39', 0, 1, '2017-02-15 13:48:47', 0, '', 0, 0, 0, 1, 0),
(127, 88066, 'Keith ', 'Kahihu', 'Male', 'keith.kahihu@strathmore.edu ', 'aiesec@strathmore.edu', 'BCOM', '0724702376', '2017-02-15 14:12:39', 0, 1, '2017-02-15 13:48:44', 0, '', 0, 0, 0, 1, 0),
(128, 78009, 'Kimberly', ' Wanjohi Ngima', 'Female', 'kimberlywanjohi@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0726157759', '2017-02-15 15:18:41', 1, 1, '2017-02-15 09:18:41', 0, '71742e2a2d15e683438c2ddd80f2788f', 0, 0, 0, 1, 0),
(129, 78806, 'Lucy', 'Wambui Njoroje', 'Female', 'lucy.njoroge713@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0703629825', '2017-02-15 15:25:49', 1, 1, '2017-02-15 09:25:49', 0, '54231606e0eed0434a068901caaef168', 0, 0, 0, 1, 0),
(130, 78611, 'Sarah', 'Ranato Lunani', 'Female', 'ranato.lunani@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0735707007', '2017-02-15 15:27:20', 1, 1, '2017-02-15 09:27:20', 0, '59c06edcdf3ea6903a6763a3a6835de0', 0, 0, 0, 1, 0),
(131, 776663, 'Wilson', 'Gitimu Njathi', 'Male', 'wilson.njathi@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0720388055', '2017-02-15 15:29:25', 1, 1, '2017-02-15 09:29:25', 0, '559acb8a305811cb202f6461b8816148', 0, 0, 0, 1, 0),
(132, 78358, 'Keziah', 'Wanjiku Karanja', 'Female', 'Keziah.karanja@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0702840082', '2017-02-15 15:38:46', 1, 1, '2017-02-15 09:38:46', 0, '288a9f13fa3fed524b1c41419e15af5e', 0, 0, 0, 1, 0),
(133, 71939, 'Frankline ', 'Maina', 'Male', 'frankline.maina@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0773099921', '2017-02-15 15:43:47', 1, 1, '2017-02-15 09:45:09', 0, '0409a1f3f8bfaca05000cc96872613e0', 0, 0, 0, 1, 0),
(134, 78658, 'Dickson', 'Miring\'u Mungai', 'Male', 'Dickson.Mungai@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0715162606', '2017-02-15 15:48:34', 1, 1, '2017-02-15 09:48:34', 0, '48cef339862424f697955e96ded726df', 0, 0, 0, 1, 0),
(135, 78016, 'William', 'Kaleli Mutunga', 'Male', 'William.Mutunga@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0720622722', '2017-02-15 15:49:46', 1, 1, '2017-02-15 09:49:46', 0, '9fb124ca4063eed2bdba6d1d88708809', 0, 0, 0, 1, 0),
(136, 78693, 'Rachael', 'Mwihaki Kariuki', 'Female', 'Rachael.mwihaki@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0705681776', '2017-02-15 15:51:12', 1, 1, '2017-02-15 09:51:12', 0, 'eb3e7a3275e93e4bd8e2b5c317b85b63', 0, 0, 0, 1, 0),
(137, 78409, 'Sang', 'Kipkoech', 'Male', 'sang.kipkoech@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0727077574', '2017-02-15 15:52:31', 1, 1, '2017-02-15 09:52:31', 0, 'd1f2fd087c94a46af19ca5052793a281', 0, 0, 0, 1, 0),
(138, 76414, 'Grace', 'Kisa Jerotich', 'Female', 'grace.kisa@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0728237379', '2017-02-15 15:54:56', 1, 1, '2017-02-15 09:54:56', 0, '4f2e2ea09eb46f4dfbff53d0c60f3416', 0, 0, 0, 1, 0),
(139, 78028, 'Sheila', 'Muthoni Njoroge', 'Female', 'Sheila.Muthoni.strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0728805327', '2017-02-15 15:56:56', 1, 1, '2017-02-15 09:56:56', 0, 'ffdb674f51d22c9b10d01ff09098336d', 0, 0, 0, 1, 0),
(140, 78241, 'Charles', 'Mugo Kamande', 'Male', 'charles.mugo@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0737452197', '2017-02-15 15:58:37', 1, 1, '2017-02-15 09:58:37', 0, 'fad5abd7246e6e5dda0e469b3e95d028', 0, 0, 0, 1, 0),
(141, 77951, 'Joseph ', 'Thuo Maina', 'Male', 'Joseph.thuo@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0723212101', '2017-02-15 16:04:44', 1, 1, '2017-02-15 10:07:44', 0, 'd1ea1aa138e5cc07636b0f622ee99c6d', 0, 0, 0, 1, 0),
(142, 77358, 'Andrew ', 'Mutuku Muasa', 'Male', 'Andrew.mutuku@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '078269', '2017-02-15 16:09:26', 1, 1, '2017-02-15 10:09:26', 0, '7caa07882f57241e4b09b630d11bbe20', 0, 0, 0, 1, 0),
(143, 72307, 'Veronicah', 'Kimani', 'Female', 'Veronicah.kimani@strathmore.ed', 'businessclub@strathmore.edu', 'BCOM', '0700150779', '2017-02-15 16:12:08', 1, 1, '2017-02-15 10:12:08', 0, 'd632ff91d713b4ab6cc1a0718f2b307f', 0, 0, 0, 1, 0),
(144, 76500, 'Collins', 'Kiptoo Kiplagat', 'Male', 'Collins.kitoo@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0726829198', '2017-02-15 16:13:19', 1, 1, '2017-02-15 10:13:19', 0, 'e1f495bd950ae211a49bfd31448f8c52', 0, 0, 0, 1, 0),
(145, 77689, 'Samuel', 'Maigwa', 'Male', 'Samuel.maigwa@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0795508284', '2017-02-15 16:14:44', 1, 1, '2017-02-15 10:14:44', 0, 'd431c887b3fc1b383dfb13bed1636ef7', 0, 0, 0, 1, 0),
(146, 60648, 'Eva ', 'Njoki Machira', 'Female', 'eva.njoki@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0716045967', '2017-02-15 16:17:22', 1, 1, '2017-02-15 10:17:22', 0, 'e18af573333ae5c247db3b96d85cf620', 0, 0, 0, 1, 0),
(147, 95931, 'Denis', 'Gitau Kimani', 'Male', 'denis.kimani716@strathmore.edu', 'businessclub@strathmore.edu', 'CPA', '0708440459', '2017-02-15 16:20:53', 1, 1, '2017-02-15 10:26:38', 0, 'e052142a6f58e759b96f0f8cd6827236', 0, 0, 0, 1, 0),
(148, 72567, 'Martin', 'Wachira Mwangi', 'Male', 'martin.wachira@strathmore.edu', 'businessclub@strathmore.edu', 'BCOM', '0700304902', '2017-02-15 16:24:11', 1, 1, '2017-02-15 10:24:11', 0, '7cbbf820896a56895985b570d55c50fa', 0, 0, 0, 1, 0),
(149, 78418, 'Philip Ng\'ang\'a Kamau', 'Ng\'ang\'a Kamau', 'Male', 'Philipng\'ang\'a.kamau@strathmor', 'businessclub@strathmore.edu', 'BCOM', '0710190073', '2017-02-15 16:31:36', 1, 1, '2017-02-15 10:31:36', 0, '2956e87b08bbfae7337fad36eac5fb96', 0, 0, 0, 1, 0),
(150, 77777, 'Paul', 'Ngige', 'Male', 'paul.ngige@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0715804612', '2017-02-16 17:41:25', 1, 1, '2017-05-05 08:36:57', 0, 'd32dc137aa56ba3bfdba7690e62245f6', 0, 0, 1, 1, 0),
(151, 84626, 'Junior', 'Omollo', 'Male', 'junior.omollo@strathmore.edu', 'readingclub@strathmore.edu', 'BCOM', '0718676393', '2017-02-21 18:10:57', 1, 1, '2017-05-05 08:32:31', 0, '161dc947a3c121b9578c7d3262505bc6', 0, 0, 0, 1, 0),
(152, 84113, 'Maureen', ' Minda', 'Female', 'maureen.minda@strathmore.edu', 'readingclub@strathmore.edu', 'BCOM', '0717135537', '2017-02-21 18:42:24', 1, 1, '2017-05-05 08:34:00', 0, 'b3fdd02b62de16d70a1661e5288aae93', 0, 0, 0, 1, 0),
(153, 83329, 'Sandra', 'Barbara', 'Female', 'sandrabarbara71@gmail.com', 'readingclub@strathmore.edu', 'BCOM', '0716387013', '2017-02-21 18:44:29', 1, 1, '2017-02-21 12:44:29', 0, '2afd11c9763641838f38cbe47bc270fb', 0, 0, 0, 1, 0),
(154, 81359, 'Benedict', 'Lemayian', 'Male', 'bahati.benedict94@gmail.com', 'readingclub@strathmore.edu', 'LLB', '0718550278', '2017-02-21 18:46:14', 1, 1, '2017-02-21 12:46:14', 0, '8cb5e1beb5f370c11d3100a28dbffe7b', 0, 0, 0, 1, 0),
(155, 84598, 'Mitchelle', 'Morema', 'Female', 'mitchelle.morema@strathmore.ed', 'readingclub@strathmore.edu', 'BCOM', '0712238140', '2017-02-21 18:48:39', 0, 1, '2017-02-21 12:48:39', 0, '1c396967c533e99378e78550a7d36a9e', 0, 0, 0, 1, 0),
(156, 84754, 'Vincent', 'Ojwang\'', 'Male', 'vincent.ojwang@strathmore.edu', 'readingclub@strathmore.edu', 'BBIT', '0707583847', '2017-02-21 18:50:23', 0, 1, '2017-02-21 12:50:23', 0, '6866dcc53b82f4d635e19f6d09a9a660', 0, 0, 0, 1, 0),
(157, 84625, 'Robert', 'Mutanuh', 'Female', 'mutanuh@gmail.com', 'readingclub@strathmore.edu', 'BCOM', '0701190611', '2017-02-21 18:51:40', 0, 1, '2017-02-21 12:51:40', 0, '3d3df1f37ca5bfee4d8b33d503fd4734', 0, 0, 0, 1, 0),
(158, 84740, 'Marion', 'Minda', 'Female', 'marionminda0@gmail.com', 'readingclub@strathmore.edu', 'BBS-FE', '0707961331', '2017-02-21 18:56:30', 0, 1, '2017-02-21 12:56:30', 0, 'fd590f40075ea47c6fd34f2ddd8221f4', 0, 0, 0, 1, 0),
(159, 89344, 'Keega', 'Gakua', 'Male', 'keega.gachutha@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0713451503', '2017-02-23 08:32:39', 1, 1, '2017-02-23 02:32:39', 0, '3aabba5c3baa694d46ddc09c9826656a', 0, 0, 0, 1, 0),
(160, 94323, 'Stephanie', 'Wamalwa', 'Female', 'stephanie.wamalwa@strathmore.e', 'kmun@strathmore.edu', 'LLB', '0713678603', '2017-02-23 08:45:32', 1, 1, '2017-02-23 02:45:32', 0, 'bc52ee6105ee98d7707bcd21b7252787', 0, 0, 0, 1, 0),
(161, 90003, 'Anita', 'Kamau', 'Female', 'anita.kamau@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0717436003', '2017-02-23 08:47:48', 1, 1, '2017-02-23 02:47:48', 0, '182b23ef5402eee3016f18d1d17189b0', 0, 0, 0, 1, 0),
(162, 90178, 'Abdullahi', 'Abdirahman', 'Male', 'abdullahi.abdirahman@strathmor', 'kmun@strathmore.edu', 'LLB', '0701404508', '2017-02-23 08:49:16', 1, 1, '2017-02-23 02:49:16', 0, '20b030b937a2ba420b7922125041ad1d', 0, 0, 0, 1, 0),
(163, 84039, 'Vincent', 'Okoth', 'Male', 'vincent.ouma@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0700573422', '2017-02-23 08:50:15', 1, 1, '2017-02-23 02:50:15', 0, 'ca25d455e0e94ef7f1fbe9d50d3c63c8', 0, 0, 0, 1, 0),
(164, 96002, 'John', 'Gitonga', 'Male', 'john.gitonga716@strathmore.edu', 'kmun@strathmore.edu', 'BBS-FE', '0795565188', '2017-02-23 08:52:16', 1, 1, '2017-02-23 02:52:16', 0, '7cbf27350821a5ec19e88d238a6fba24', 0, 0, 0, 1, 0),
(165, 90355, 'Joy', 'Ngano', 'Female', 'joy.ngano@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0733673662', '2017-02-23 08:53:35', 1, 1, '2017-02-23 02:53:35', 0, 'a0dd9f93e9934f2a089d4ef94071d815', 0, 0, 0, 1, 0),
(166, 94671, 'Husna', 'Kipsoi', 'Female', 'kipsoi.chalang\'at@strathmore.e', 'kmun@strathmore.edu', 'LLB', '0729658380', '2017-02-23 08:54:54', 1, 1, '2017-02-23 02:54:54', 0, 'ab999811acedea4fa3cb8dc03ef4d12a', 0, 0, 0, 1, 0),
(167, 94553, 'Patsy', 'Mugabi', 'Female', 'mugabi.nakulenge@strathmore.ed', 'kmun@strathmore.edu', 'BBS-FE', '0790148821', '2017-02-23 08:57:40', 1, 1, '2017-02-23 02:57:40', 0, '42d98ee0914a3be5843fef9cb29e4510', 0, 0, 0, 1, 0),
(168, 91526, 'Antonia', 'Wangechi', 'Female', 'antonia.mbuthia@strathmore.edu', 'kmun@strathmore.edu', 'BCOM', '0791030078', '2017-02-23 09:01:57', 1, 1, '2017-02-23 03:01:57', 0, 'd1e60eb1a0f9e4cc015bc7c1ad50b85c', 0, 0, 0, 1, 0),
(169, 76345, 'Samuel', 'Muraga', 'Male', 'samuel.muraga@strathmore.edu', 'kmun@strathmore.edu', 'BCOM', '0724068806', '2017-02-23 09:03:07', 1, 1, '2017-02-23 03:03:07', 0, '477926228bf6e2983af048fbd189bb50', 0, 0, 0, 1, 0),
(170, 93215, 'Waya', 'Ndegwa', 'Male', 'waya.ndegwa@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0724534173', '2017-02-23 09:05:06', 1, 1, '2017-02-23 03:05:06', 0, 'b5b2c62efa652cd25340098625d6b547', 0, 0, 0, 1, 0),
(171, 84515, 'Christine', 'Agiso', 'Female', 'christine.agiso@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0729664546', '2017-02-23 09:06:35', 1, 1, '2017-02-23 03:06:35', 0, '37110bf6093b32d3a9ee9e590427c308', 0, 0, 0, 1, 0),
(172, 95504, 'Jessicah', 'Mbithi', 'Female', 'jessicah.mbithi@strathmore.edu', 'kmun@strathmore.edu', 'BIF', '0706915067', '2017-02-23 09:08:41', 1, 1, '2017-02-23 03:08:41', 0, '897703c3899e816efea18724aa4862b2', 0, 0, 0, 1, 0),
(173, 95113, 'Gloria', 'Arago', 'Female', 'gloria.arago@strathmore.edu', 'kmun@strathmore.edu', 'BCOM', '0795508284', '2017-02-23 09:09:57', 1, 1, '2017-02-23 03:09:57', 0, '5024de29f6506033b46008c0e0c4e8d1', 0, 0, 0, 1, 0),
(174, 86314, 'Amos', 'Wasike', 'Male', 'amos.odidi@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0714087833', '2017-02-23 09:10:45', 1, 1, '2017-02-23 03:10:45', 0, 'b241d8f82b4ce03ccd661e72e9ca4c5a', 0, 0, 0, 1, 0),
(175, 89343, 'Michelle', 'Kendi', 'Female', 'michelle.muhia@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0713186235', '2017-02-23 09:12:13', 1, 1, '2017-02-23 03:12:13', 0, 'dd75ee20348dbc749f65741801aaa903', 0, 0, 0, 1, 0),
(176, 89349, 'Cheptum', 'Toroitich', 'Female', 'cheptum.toroitich@strathmore.e', 'kmun@strathmore.edu', 'LLB', '0711100036', '2017-02-23 09:14:39', 1, 1, '2017-02-23 03:14:39', 0, 'a6fd8173a058ef61dd309617831960d5', 0, 0, 0, 1, 0),
(177, 94008, 'Vicky', 'Aridi', 'Female', 'vicky.aridi@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0706511741', '2017-02-23 09:15:49', 1, 1, '2017-02-23 03:15:49', 0, '287a7861995dbf42a766a49a38a31640', 0, 0, 0, 1, 0),
(178, 84410, 'Gloria', 'Kariro', 'Female', 'gloria.koe@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0710395350', '2017-02-23 09:17:28', 1, 1, '2017-02-23 03:17:28', 0, '95849651f1a9db2daf4c9ce93b91beb4', 0, 0, 0, 1, 0),
(179, 83669, 'Nirali', 'Patel', 'Female', 'nirali.patel@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0735742111', '2017-02-23 09:19:21', 1, 1, '2017-02-23 03:19:21', 0, 'e8c16b9563daecdf0ef2d399a9209301', 0, 0, 0, 1, 0),
(180, 82403, 'Joan', 'Kiama', 'Female', 'joan.kiama@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0721812677', '2017-02-23 10:20:39', 1, 1, '2017-02-23 04:20:39', 0, 'a246366f419283b88ac61913526be6a1', 0, 0, 0, 1, 0),
(181, 9274, 'Saleh', 'Swaleh', 'Male', 'nabhan.saleh@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0703453508', '2017-02-23 10:25:51', 1, 1, '2017-02-23 04:25:51', 0, '336e0f2c724c0302a0f596d4b53316aa', 0, 0, 0, 1, 0),
(182, 87664, 'Valerie', 'Kiplimo', 'Female', 'valerie.kiplimo@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0706659950', '2017-02-23 14:11:56', 1, 1, '2017-02-23 08:11:56', 0, '5f8c5b36d19574dc8b977bfe9697baf9', 0, 0, 0, 1, 0),
(183, 94136, 'Catherine', 'Mumo', 'Female', 'catherine.mumo@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0729621423', '2017-02-23 14:12:53', 1, 1, '2017-02-23 08:12:53', 0, '4bf37a1fe5e0ee20d6ea6747e7c07de8', 0, 0, 0, 1, 0),
(184, 95130, 'Simon', 'Tukahirwa', 'Male', 'simon.tukahirwa@strathmore.edu', 'kmun@strathmore.edu', 'BA-Int.St', '079550280', '2017-02-23 14:22:45', 1, 1, '2017-02-23 08:22:45', 0, '8d9d3d25a0afbb42fd662456dcab3530', 0, 0, 0, 1, 0),
(185, 89413, 'Teri Maya', 'Muchemi', 'Female', 'teri.muchemi@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0707182399', '2017-02-23 14:37:47', 1, 1, '2017-02-23 08:37:47', 0, 'ae2d70f34f1836441a960475549affe4', 0, 0, 0, 1, 0),
(186, 89255, 'Pascal', 'Musyoki', 'Male', 'pascal.musyoki@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0773504775', '2017-02-23 14:39:48', 1, 1, '2017-02-23 08:39:48', 0, 'ab417ff82aeee74c571d939263076127', 0, 0, 0, 1, 0),
(187, 88972, 'Maryjoy', 'Wairua', 'Female', 'maryjoy.wairua@strathmore.edu', 'kmun@strathmore.edu', 'BA-Int.St', '0707178817', '2017-02-23 14:44:14', 1, 1, '2017-02-23 08:44:14', 0, '33b4681319459f57824cdb15e0534afc', 0, 0, 0, 1, 0),
(188, 89483, 'Beatrice', 'Mungai', 'Female', 'beatrice.mungai@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0715960247', '2017-02-23 14:46:00', 1, 1, '2017-02-23 08:46:00', 0, '41f1ce0fca0ea46452542ffc66ff1d82', 0, 0, 0, 1, 0),
(189, 89922, 'Anjella', 'Omondi', 'Female', 'anjella.omondi@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0712311222', '2017-02-23 14:47:20', 1, 1, '2017-02-23 08:47:20', 0, 'f9923fa4fbaeec16b62eba832e541f30', 0, 0, 0, 1, 0),
(190, 93330, 'Kevin', 'Mwendwa', 'Male', 'kevin.mwendwa@strathmore.edu', 'kmun@strathmore.edu', 'BCOM', '0707492365', '2017-02-23 14:48:47', 1, 1, '2017-02-23 08:48:47', 0, '4ff1937cc779c91d53ddd444f5f62a02', 0, 0, 0, 1, 0),
(191, 89267, 'Phillis', 'Njoroge', 'Female', 'phillis.njoroge@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0710911199', '2017-02-23 14:50:19', 1, 1, '2017-02-23 08:50:19', 0, 'f6f022a1860bc522861b006b949fbd09', 0, 0, 0, 1, 0),
(192, 99407, ' Kenneth', 'Kirumba', 'Male', ' kenneth.kirumba@strathmore.ed', 'kmun@strathmore.edu', 'BBS-FE', ' 0719728954', '2017-02-23 15:40:25', 1, 1, '2017-02-23 09:40:25', 0, 'b4aa94b7886a5428902bbb8248fcc0bc', 0, 0, 0, 1, 0),
(193, 87838, 'Angela', 'Muriithi', 'Female', 'angela.nyaguthi@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0711985190', '2017-02-23 16:26:09', 1, 1, '2017-02-23 10:26:09', 0, 'e06d14cf6149e6d83edca8ec710df1d6', 0, 0, 0, 1, 0),
(194, 81991, 'Lawrence', 'Njoroge', 'Male', 'lawrence.njoroge@strathmore.ed', 'kmun@strathmore.edu', 'BA-Dev.S&P', '0717233086', '2017-02-23 16:27:23', 1, 1, '2017-02-23 10:27:23', 0, '76fd244b665aa8717ee6d2ff1396a261', 0, 0, 0, 1, 0),
(195, 94562, 'Kristy', 'Obuya', 'Female', 'kristy.obuya@strathmore.edu', 'kmun@strathmore.edu', 'BA-Dev.S&P', '0703333114', '2017-02-23 16:29:00', 1, 1, '2017-02-23 10:29:00', 0, '871def72ae55d633209eafbde4e22a29', 0, 0, 0, 1, 0),
(196, 68719, 'Lily', 'Kamau', 'Female', 'lily.kamau@strathmore.edu', 'kmun@strathmore.edu', 'BA-Dev.S&P', '0729429279', '2017-02-23 16:30:13', 1, 1, '2017-02-23 10:30:13', 0, '91b58ccf06f7ae9d1257631025f5f34f', 0, 0, 0, 1, 0),
(197, 90834, 'Sean', 'Otieno', 'Male', 'sean.otieno@strathmore.edu', 'kmun@strathmore.edu', 'BA-Comm', '071970728', '2017-02-23 16:32:22', 1, 1, '2017-02-23 10:32:22', 0, '149fcbb986fb3809a5611f09f59221e3', 0, 0, 0, 1, 0),
(198, 96113, 'Rupinder', 'Singh', 'Male', 's.rupinder1993@gmail.com', 'kmun@strathmore.edu', 'ACCA', '0715991722', '2017-02-23 16:33:45', 1, 1, '2017-02-23 10:33:45', 0, '614defd9cb8f46bb85e3b1fb3aebb3cd', 0, 0, 0, 1, 0),
(199, 94718, 'Wambui', 'Kang\'ara', 'Female', 'wambui.kangara@strathmore.edu', 'kmun@strathmore.edu', 'BA-Dev.S&P', '0728397854', '2017-02-23 16:35:13', 1, 1, '2017-02-23 10:35:13', 0, '2e6989d8ec243ec0085e63a9b7c4adbc', 0, 0, 0, 1, 0),
(200, 95887, 'Eunice', 'Njomo', 'Female', 'eunice.njomo@strathmore.edu', 'kmun@strathmore.edu', 'BA-Int.St', '07113371', '2017-02-23 16:51:57', 1, 1, '2017-02-23 10:51:57', 0, 'dc46032e202c90fa3ae4457fa3c9fd25', 0, 0, 0, 1, 0),
(201, 95824, 'Tabitha', 'Macharia', 'Female', 'tabitha.macharia716@strathmore', 'kmun@strathmore.edu', 'BCOM', '0716047518', '2017-02-23 17:16:44', 1, 1, '2017-02-23 11:16:44', 0, '1371b977447453e5ddf50a6fe128a73b', 0, 0, 0, 1, 0),
(202, 82192, 'Sandra', 'Bucha', 'Female', 'sandra.bucha@strathmore.edu', 'kmun@strathmore.edu', 'LLB', '0712778484', '2017-02-25 12:01:17', 1, 1, '2017-02-25 06:01:17', 0, '39ea4901ddd94e3a99dbe788c1bec417', 0, 0, 0, 1, 0),
(203, 89034, 'Cynthia', 'Muchiru', 'Female', 'cynthia.muchiru@strathmore.edu', 'researchclub@strathmore.edu', 'BBIT', '0714710296', '2017-02-25 14:03:07', 1, 1, '2017-02-25 08:03:07', 0, '64d9d43b56b300da20398d94fd1664b5', 0, 0, 0, 1, 0),
(204, 77792, 'Alfred', 'Lugwe', 'Male', 'alfredlugwe@gmail.com', 'researchclub@strathmore.edu', 'BCOM', '0729096784', '2017-02-25 14:42:48', 1, 1, '2017-04-01 05:47:38', 0, 'b33d0e672c0a13e2a2f5bd6b89a3d42c', 0, 0, 0, 1, 0),
(205, 89709, 'Nataly', 'Edebe', 'Female', 'nataly.edebe@strathmore.edu', 'presidentialawardclub@strathmore.edu', 'BHM', '0706513275', '2017-01-04 00:00:00', 0, 1, '0000-00-00 00:00:00', 0, '', 0, 0, 1, 1, 0),
(206, 110740, 'Dalton', 'Zai', 'Male', 'dalton.zai@strathmore.edu', 'aiesec@strathmore.edu', 'ICS', '0743413435', '2019-09-30 09:46:23', 0, 0, '0000-00-00 00:00:00', 0, '2076e1d29b9cc2886f68565db0609356', 0, NULL, 1, 0, 1),
(207, 111758, 'Asmaa', 'Hargura', 'Female', 'asmaa.hargura@strathmore.edu', 'aiesec@strathmore.edu', 'LLB', '0712345678', '2019-10-03 16:36:28', 0, 0, '0000-00-00 00:00:00', 0, '7893cffc62bf21ac4c59c0dab3482f4f', 0, NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clubofficials`
--

CREATE TABLE `clubofficials` (
  `autoID` int(20) NOT NULL,
  `studentID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubofficials`
--

INSERT INTO `clubofficials` (`autoID`, `studentID`, `clubID`, `password`) VALUES
(2, 78581, 'researchclub@strathmore.edu', 'password'),
(3, 83785, 'aiesec@strathmore.edu', 'password'),
(4, 94766, 'spanishclub@strathmore.edu', 'f8a9e09bb2f5fed81c37c5d06600f259');

-- --------------------------------------------------------

--
-- Table structure for table `clubroles`
--

CREATE TABLE `clubroles` (
  `roleID` int(5) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubroles`
--

INSERT INTO `clubroles` (`roleID`, `roleName`, `description`) VALUES
(1, 'Patron', 'Directs and advises the club'),
(2, 'President', 'In overall charge of the club'),
(3, 'Deputy President', 'Assists the club president'),
(4, 'Secretary', 'In charge of club records'),
(5, 'Treasurer', 'In charge of club funds'),
(6, 'Organizing Secretary', 'Organizing club events'),
(7, 'Assistant Organizing Secretary', 'Supports the Organizing Secretary in his/her duties'),
(8, 'Marketing Director ', 'In charge of all club marketing'),
(9, 'Assistant Marketing Director', 'Supports the marketing director'),
(10, 'Public Relations Officer', 'In charge of all public relations'),
(11, 'Human Resource Officer', 'Helps acquire best talent to join the club'),
(12, 'Special Projects Coordinator', 'Guides and directs club projects'),
(13, 'Club Activities Cordinator', 'Coordinate Club activities'),
(14, 'Research Representative', ''),
(15, 'VP Finance', ''),
(16, 'VP Performance Managment', ''),
(17, 'VP Brand and Customer Experience', ''),
(18, 'VP Partnership Development', ''),
(19, 'VP Incoming Global Enterprenuer', ''),
(20, 'VP Outgoing Exchange', ''),
(21, 'VP Incoming Global Volunteer', '');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `clubID` varchar(150) NOT NULL,
  `clubName` varchar(100) NOT NULL,
  `yearStarted` int(10) DEFAULT NULL,
  `yearRebranded` int(10) DEFAULT NULL,
  `registrationFee` decimal(10,0) NOT NULL DEFAULT 0,
  `registrationBasis` varchar(20) NOT NULL DEFAULT 'Per Year',
  `dateRegistered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`clubID`, `clubName`, `yearStarted`, `yearRebranded`, `registrationFee`, `registrationBasis`, `dateRegistered`, `status`, `updated`, `password`) VALUES
('actuarialclub@strathmore.edu', 'Strathmore Actuarial Students Society', NULL, NULL, '100', 'Per Year', '2017-01-27 23:21:59', 1, '2017-02-28 09:26:17', '69323bc65c7740947dea93e51b47f385'),
('aiesec@strathmore.edu', 'AIESEC Strathmore', NULL, NULL, '500', 'Per Year', '2017-01-27 16:23:02', 1, '2017-04-25 16:23:43', '92135c4a4e95363d1e0bb1f7359b4ff9'),
('artclub@strathmore.edu', 'QALIZASANAA', NULL, NULL, '100', 'Per Year', '2017-01-27 23:20:17', 1, '2017-03-06 14:51:20', 'c95f0d4dccd345f5fcaf175f0acc3ae1'),
('businessclub@strathmore.edu', 'Strathmore Business Club', NULL, NULL, '500', 'Per Year', '2017-01-27 23:23:14', 1, '2017-02-28 16:52:37', '54d9bff7f7c4109a2ad069763e73ef23'),
('chineseclub@strathmore.edu', 'Chinese Club', NULL, NULL, '100', 'Per Year', '2017-02-02 04:19:27', 1, '2017-04-25 09:32:08', '547fb8b9ff9a23eab4cf0938729d80d5'),
('chorale@strathmore.edu', 'Strathmore Chorale', NULL, NULL, '300', 'Per Semester', '2017-01-27 16:22:27', 1, '2017-01-27 16:22:27', '71ac79a21ccf24d0840e9dc333e0f4bf'),
('debateclub@strathmore.edu', 'Strathmore Debate Society', NULL, NULL, '100', 'Per Year', '2017-01-27 16:21:41', 1, '2017-01-27 23:06:59', 'df500c4eaaf6f4c8b8bfdaa93f5f68d9'),
('deutschklub@strathmore.edu', 'Deutschklub', NULL, NULL, '100', 'Per Year', '2017-01-27 23:00:30', 1, '2017-03-26 07:51:56', '5916550a0d72782f22161c0555af9ef1'),
('enactus@strathmore.edu', 'Enactus Strathmore', NULL, NULL, '100', 'Per Year', '2017-01-27 23:09:38', 1, '2017-03-06 14:54:30', '5f0ceed7276128e9b7a954b95eb276b6'),
('firstaidclub@strathmore.edu', 'First Aid Club', NULL, NULL, '100', 'Per Year', '2017-02-02 04:18:37', 1, '2017-03-06 16:17:11', '78d94bdc2f1cf4579a6d7e2e0e8badc0'),
('frenchclub@strathmore.edu', 'Les Francophones de Strathmore University', NULL, NULL, '100', 'Per Year', '2017-01-27 23:17:13', 1, '2017-04-07 15:21:55', 'f6925ffaa75290c5bf4ca933163033ef'),
('japaneseclub@strathmore.edu', 'Japanese Club', NULL, NULL, '100', 'Per Year', '2017-01-27 23:12:25', 1, '2017-03-06 14:54:33', 'f0da70c8d0346d6ee021ee795433c6b1'),
('kmun@strathmore.edu', 'Kenya Model United Nations', NULL, NULL, '100', 'Per Year', '2017-01-27 23:13:11', 1, '2017-03-06 14:51:49', '1394c1cdb0216a638dffc394672cfe03'),
('readingclub@strathmore.edu', 'Reading Club', NULL, NULL, '100', 'Per Year', '2017-01-31 05:11:50', 1, '2017-03-06 14:51:26', 'db7dce89e5b8ecd3e5691073cb89c024'),
('researchclub@strathmore.edu', 'Strathmore Research Club', NULL, 2014, '100', 'Per Year', '2017-04-05 15:00:41', 1, '2017-04-19 05:54:07', '348bcae8e7c659c9c5e5e54a4b02e27d'),
('sep@strathmore.edu', 'Student Enterprise Program', NULL, NULL, '100', 'Per Year', '2017-01-27 23:24:26', 1, '2017-03-20 10:10:23', '1b286d56116ffd32c7a2c0272e0b8c7e'),
('shrec@strathmore.edu', 'Strathmore University Human Resource Club', NULL, NULL, '100', 'Per Year', '2017-01-27 23:25:20', 1, '2017-04-19 10:37:39', '21207a884ca7c27e790f714422092e0a'),
('spanishclub@strathmore.edu', 'El Club', NULL, NULL, '100', 'Per Year', '2017-01-27 23:34:08', 1, '2017-03-06 14:54:25', '315387bcc5b55816504e9b62d1beb710'),
('strathmoredramasociety@strathmore.edu', 'DRAMSOC ', NULL, NULL, '100', 'Per Year', '2017-02-09 18:14:52', 1, '2017-03-06 14:54:19', '4505736f97f301f347a0c4db8714e815'),
('strathmoreenvironmentalclub@strathmore.edu', 'Strathmore Environmental Club', NULL, NULL, '100', 'Per Year', '2017-02-13 08:04:33', 1, '2017-02-13 08:04:33', 'e986d31f6ba5840f498d939e0697556b'),
('suffesa@strathmore.edu', 'SUFFESA', NULL, NULL, '100', 'Per Year', '2017-01-27 23:29:57', 1, '2017-04-07 15:46:45', 'e0b981527493b88a9b52ae72ddd95e48'),
('suitsa@strathmore.edu', 'Strathmore University Information Technology Students Association', NULL, NULL, '100', 'Per Year', '2017-01-27 17:13:01', 1, '2017-03-06 14:54:40', 'a3d71735c8a1acab75f998e67e611ba9'),
('sumediagroup@strathmore.edu', 'Strathmore University Media Group', NULL, NULL, '300', 'Per Year', '2017-01-27 23:39:25', 1, '2017-01-27 23:39:25', '887be8d0168db6cb7e2a9cd8f6de4acf'),
('tennis@strathmore.edu', 'Tennis', NULL, NULL, '1000', 'Per Year', '2019-10-03 12:47:00', 1, '0000-00-00 00:00:00', 'c76c4c116d60a88008d2d25eb2cc4cdb'),
('theband@strathmore.edu', 'Strathmore University Band', NULL, NULL, '100', 'Per Year', '2017-01-27 23:31:50', 1, '2017-03-01 18:13:40', '3a0c94aa2ad18ef75ea99f634be9010b'),
('toastmasters@strathmore.edu', 'Strathmore Toastmasters Gavel Club', 2016, NULL, '1500', 'Per Year', '2017-04-27 10:59:00', 1, '2017-04-27 10:59:00', '9af8f1e9bb54f3a281bc706854c30c3f');

-- --------------------------------------------------------

--
-- Table structure for table `club_constitutions`
--

CREATE TABLE `club_constitutions` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `full_path` varchar(150) NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `dateUploaded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `versionNo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_constitutions`
--

INSERT INTO `club_constitutions` (`autoID`, `clubID`, `file_name`, `client_name`, `full_path`, `file_ext`, `dateUploaded`, `dateUpdated`, `versionNo`) VALUES
(1, 'aiesec@strathmore.edu', 'Meeting1.docx', 'Meeting1.docx', 'C:/xampp/htdocs/cms/club_uploads/club_constitutions/Meeting1.docx', '.docx', '2019-10-05 07:52:57', '0000-00-00 00:00:00', 1),
(2, 'aiesec@strathmore.edu', 'Meeting2.docx', 'Meeting2.docx', 'C:/xampp/htdocs/cms/club_uploads/club_constitutions/Meeting2.docx', '.docx', '2019-10-10 09:31:35', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `club_expenditures`
--

CREATE TABLE `club_expenditures` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `dateSpent` date NOT NULL,
  `unitName` varchar(100) NOT NULL,
  `amountEach` decimal(10,2) NOT NULL,
  `unitsCount` int(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `studentPID` int(10) NOT NULL,
  `dateRecorded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_expenditures`
--

INSERT INTO `club_expenditures` (`autoID`, `clubID`, `dateSpent`, `unitName`, `amountEach`, `unitsCount`, `description`, `studentPID`, `dateRecorded`, `dateUpdated`, `deleted`) VALUES
(1, 'aiesec@strathmore.edu', '2019-10-02', 'Airtime', '100.00', 5, 'Organizing Team Building', 2, '2019-10-05 08:06:52', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `club_histories`
--

CREATE TABLE `club_histories` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `full_path` varchar(150) NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `dateUploaded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `versionNo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_histories`
--

INSERT INTO `club_histories` (`autoID`, `clubID`, `file_name`, `client_name`, `full_path`, `file_ext`, `dateUploaded`, `dateUpdated`, `versionNo`) VALUES
(1, 'aiesec@strathmore.edu', 'Meeting2.docx', 'Meeting2.docx', 'C:/xampp/htdocs/cms/club_uploads/club_histories/Meeting2.docx', '.docx', '2019-10-05 07:58:52', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `club_minutes`
--

CREATE TABLE `club_minutes` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `meetingID` int(10) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `full_path` varchar(150) NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `dateUploaded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `club_uploads`
--

CREATE TABLE `club_uploads` (
  `autoId` int(11) NOT NULL,
  `clubId` varchar(150) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `full_path` varchar(250) NOT NULL,
  `file_ext` varchar(20) NOT NULL,
  `date_uploaded` date NOT NULL,
  `date_updated` date NOT NULL,
  `uploading_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_uploads`
--

INSERT INTO `club_uploads` (`autoId`, `clubId`, `file_name`, `full_path`, `file_ext`, `date_uploaded`, `date_updated`, `uploading_user`) VALUES
(3, 'aiesec@strathmore.edu', 'Meeting2.docx', 'C:/xampp/htdocs/cms/club_uploads/club_uploads/Meeting2.docx', '.docx', '2019-10-05', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` varchar(20) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `faculty`) VALUES
('ACCA', 'Association of Chartered Certified Accountant', 'School of Accountancy'),
('BA-Comm', 'Bachelor of Arts in Communication', 'School of Humanities and Social Sciences'),
('BA-Dev.S&P', 'Bachelor of Arts in Development Studies and Philosophy', 'School of Humanities and Social Sciences'),
('BA-Int.St', 'Bachelor of Arts in International Studies', 'School of Humanities and Social Sciences'),
('BBIT', 'Bachelor of Business Information Technology', 'Faculty of Information Technology'),
('BBS-FE', 'Business Science in Financial Economics', 'Strathmore Institute of Mathematical Sciences'),
('BBS-FIN', 'Bachelor of Business Science in Finance', 'Strathmore Institute of Mathematical Sciences'),
('BCOM', 'Bachelor of Commerce', 'School of Management and Commerce'),
('BHM', 'Bachelor of Hospitality Management', 'School of Hospitality'),
('BIF', 'Bachelor of Science in  Informatics and Computer Science', 'Faculty of Information Technology'),
('BTC', 'Bachelor of Science in Telecommunications', 'Faculty of Information Technology'),
('CIM', 'Chartered Institute of Marketing', 'School of Management and Commerce'),
('CPA', 'Certified Public Accountants', 'School of Accountancy'),
('DBIT', 'Diploma in Information Technology', 'Faculty of Information Technology'),
('DBM', 'Diploma in Business Management', 'School of Management and Commerce'),
('ICS', 'ICS', 'FIT'),
('LLB', 'Bachelor of Laws', 'Law School'),
('MSc.IT', 'Master of Science in Information Technology', 'Faculty of Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `eventattendance`
--

CREATE TABLE `eventattendance` (
  `autoID` int(20) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `studentID` int(10) NOT NULL,
  `pID` int(10) NOT NULL,
  `eventID` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `inattendance` tinyint(1) NOT NULL DEFAULT 0,
  `dateRecorded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventattendance`
--

INSERT INTO `eventattendance` (`autoID`, `clubID`, `studentID`, `pID`, `eventID`, `status`, `inattendance`, `dateRecorded`, `dateUpdated`) VALUES
(1, 'aiesec@strathmore.edu', 110740, 206, 1, 'Attending', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'aiesec@strathmore.edu', 111758, 207, 1, 'Attending', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `eventinfo`
--

CREATE TABLE `eventinfo` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `eventDate` date NOT NULL,
  `eventVenue` varchar(100) NOT NULL,
  `startTime` time NOT NULL,
  `description` varchar(100) NOT NULL,
  `endTime` time NOT NULL,
  `dateRecorded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `file_name` text NOT NULL,
  `full_path` text NOT NULL,
  `file_ext` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventinfo`
--

INSERT INTO `eventinfo` (`autoID`, `clubID`, `eventDate`, `eventVenue`, `startTime`, `description`, `endTime`, `dateRecorded`, `dateUpdated`, `deleted`, `file_name`, `full_path`, `file_ext`) VALUES
(1, 'aiesec@strathmore.edu', '2019-10-19', 'STMB GF-02', '09:07:00', 'AISEC meets Global International Network. Come enjoy the international cultures.', '10:07:00', '2019-10-08 20:08:58', '2019-10-10 10:52:38', 0, 'studentcouncil.jpg', 'C:/xampp/htdocs/cms/club_uploads/event_images/studentcouncil.jpg', '.jpg'),
(10, 'aiesec@strathmore.edu', '2019-10-31', 'Main Auditorium', '15:55:00', 'Annual model united nations meeting', '16:54:00', '2019-10-10 11:58:34', '2019-10-10 13:45:12', 0, 'studentcouncil.jpg', 'C:/xampp/htdocs/cms/club_uploads/event_images/studentcouncil.jpg', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `event_reports`
--

CREATE TABLE `event_reports` (
  `autoID` int(10) NOT NULL,
  `eventID` int(10) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `full_path` varchar(150) NOT NULL,
  `dateUploaded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clubID` varchar(100) NOT NULL,
  `file_ext` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meetingattendance`
--

CREATE TABLE `meetingattendance` (
  `autoID` int(20) NOT NULL,
  `pID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `studentID` int(10) NOT NULL,
  `meetingID` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `dateRecorded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meetingattendance`
--

INSERT INTO `meetingattendance` (`autoID`, `pID`, `clubID`, `studentID`, `meetingID`, `status`, `dateRecorded`, `dateUpdated`, `deleted`) VALUES
(1, 2, 'aiesec@strathmore.edu', 83785, 1, 'Present', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(2, 121, 'aiesec@strathmore.edu', 84477, 1, 'Present', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(3, 123, 'aiesec@strathmore.edu', 85463, 1, 'Absent', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(4, 122, 'aiesec@strathmore.edu', 86051, 1, 'Present', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(5, 124, 'aiesec@strathmore.edu', 86536, 1, 'Present', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(6, 127, 'aiesec@strathmore.edu', 88066, 1, 'Absent', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(7, 126, 'aiesec@strathmore.edu', 89205, 1, 'Present', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0),
(8, 125, 'aiesec@strathmore.edu', 89433, 1, 'Absent', '2019-10-04 10:23:36', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `meetinginfo`
--

CREATE TABLE `meetinginfo` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `takingMinutes` int(10) NOT NULL,
  `meetingDate` date NOT NULL,
  `meetingVenue` varchar(100) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `dateRecorded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meetinginfo`
--

INSERT INTO `meetinginfo` (`autoID`, `clubID`, `takingMinutes`, `meetingDate`, `meetingVenue`, `startTime`, `endTime`, `dateRecorded`, `dateUpdated`, `deleted`) VALUES
(1, 'aiesec@strathmore.edu', 2, '2019-10-24', 'STMB F2-01', '17:50:00', '19:50:00', '2019-10-03 16:50:27', '2019-10-05 06:43:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `officialsroles`
--

CREATE TABLE `officialsroles` (
  `autoID` int(10) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `pID` int(10) NOT NULL,
  `studentID` int(10) NOT NULL,
  `roleID` int(5) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `dateRegistered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dateUpdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officialsroles`
--

INSERT INTO `officialsroles` (`autoID`, `clubID`, `pID`, `studentID`, `roleID`, `startDate`, `endDate`, `dateRegistered`, `dateUpdated`, `status`) VALUES
(2, 'aiesec@strathmore.edu', 2, 83785, 8, '2019-09-02', '2019-09-19', '2019-09-29 19:54:37', '2019-09-30 09:47:00', 1),
(3, 'spanishclub@strathmore.edu', 4, 94766, 13, '2019-10-08', '2019-10-26', '2019-10-08 19:20:53', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`staffID`),
  ADD UNIQUE KEY `suEmail` (`suEmail`),
  ADD UNIQUE KEY `telNo` (`phone`),
  ADD KEY `roleID` (`roleID`);

--
-- Indexes for table `adminroles`
--
ALTER TABLE `adminroles`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `clubmembers`
--
ALTER TABLE `clubmembers`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `clubofficials`
--
ALTER TABLE `clubofficials`
  ADD PRIMARY KEY (`autoID`),
  ADD UNIQUE KEY `studentID` (`studentID`);

--
-- Indexes for table `clubroles`
--
ALTER TABLE `clubroles`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`clubID`);

--
-- Indexes for table `club_constitutions`
--
ALTER TABLE `club_constitutions`
  ADD PRIMARY KEY (`autoID`),
  ADD UNIQUE KEY `full_path` (`full_path`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `club_expenditures`
--
ALTER TABLE `club_expenditures`
  ADD PRIMARY KEY (`autoID`),
  ADD KEY `studentPID` (`studentPID`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `club_histories`
--
ALTER TABLE `club_histories`
  ADD PRIMARY KEY (`autoID`),
  ADD UNIQUE KEY `full_path` (`full_path`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `club_minutes`
--
ALTER TABLE `club_minutes`
  ADD PRIMARY KEY (`autoID`),
  ADD UNIQUE KEY `full_path` (`full_path`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `meetingID` (`meetingID`);

--
-- Indexes for table `club_uploads`
--
ALTER TABLE `club_uploads`
  ADD PRIMARY KEY (`autoId`),
  ADD KEY `clubId` (`clubId`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`),
  ADD UNIQUE KEY `courseName` (`courseName`);

--
-- Indexes for table `eventattendance`
--
ALTER TABLE `eventattendance`
  ADD PRIMARY KEY (`autoID`),
  ADD KEY `eventID` (`eventID`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `pID` (`pID`);

--
-- Indexes for table `eventinfo`
--
ALTER TABLE `eventinfo`
  ADD PRIMARY KEY (`autoID`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `event_reports`
--
ALTER TABLE `event_reports`
  ADD PRIMARY KEY (`autoID`),
  ADD UNIQUE KEY `eventID` (`eventID`),
  ADD UNIQUE KEY `full_path` (`full_path`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `meetingattendance`
--
ALTER TABLE `meetingattendance`
  ADD PRIMARY KEY (`autoID`),
  ADD KEY `meetingID` (`meetingID`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `pID` (`pID`);

--
-- Indexes for table `meetinginfo`
--
ALTER TABLE `meetinginfo`
  ADD PRIMARY KEY (`autoID`);

--
-- Indexes for table `officialsroles`
--
ALTER TABLE `officialsroles`
  ADD PRIMARY KEY (`autoID`),
  ADD KEY `roleID` (`roleID`),
  ADD KEY `pID` (`pID`),
  ADD KEY `studentID` (`studentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubmembers`
--
ALTER TABLE `clubmembers`
  MODIFY `pID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `clubofficials`
--
ALTER TABLE `clubofficials`
  MODIFY `autoID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `club_constitutions`
--
ALTER TABLE `club_constitutions`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club_expenditures`
--
ALTER TABLE `club_expenditures`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `club_histories`
--
ALTER TABLE `club_histories`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `club_minutes`
--
ALTER TABLE `club_minutes`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `club_uploads`
--
ALTER TABLE `club_uploads`
  MODIFY `autoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eventattendance`
--
ALTER TABLE `eventattendance`
  MODIFY `autoID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eventinfo`
--
ALTER TABLE `eventinfo`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event_reports`
--
ALTER TABLE `event_reports`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetingattendance`
--
ALTER TABLE `meetingattendance`
  MODIFY `autoID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `meetinginfo`
--
ALTER TABLE `meetinginfo`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officialsroles`
--
ALTER TABLE `officialsroles`
  MODIFY `autoID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `club_constitutions`
--
ALTER TABLE `club_constitutions`
  ADD CONSTRAINT `club_constitutions_ibfk_1` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`);

--
-- Constraints for table `club_expenditures`
--
ALTER TABLE `club_expenditures`
  ADD CONSTRAINT `club_expenditures_ibfk_1` FOREIGN KEY (`studentPID`) REFERENCES `clubmembers` (`pID`),
  ADD CONSTRAINT `club_expenditures_ibfk_2` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `club_expenditures_ibfk_3` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`);

--
-- Constraints for table `club_histories`
--
ALTER TABLE `club_histories`
  ADD CONSTRAINT `club_histories_ibfk_1` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`);

--
-- Constraints for table `club_minutes`
--
ALTER TABLE `club_minutes`
  ADD CONSTRAINT `club_minutes_ibfk_1` FOREIGN KEY (`meetingID`) REFERENCES `meetinginfo` (`autoID`),
  ADD CONSTRAINT `club_minutes_ibfk_2` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `club_minutes_ibfk_3` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `club_minutes_ibfk_4` FOREIGN KEY (`meetingID`) REFERENCES `meetinginfo` (`autoID`);

--
-- Constraints for table `club_uploads`
--
ALTER TABLE `club_uploads`
  ADD CONSTRAINT `club_uploads_fk01` FOREIGN KEY (`clubId`) REFERENCES `clubs` (`clubID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eventattendance`
--
ALTER TABLE `eventattendance`
  ADD CONSTRAINT `eventattendance_ibfk_1` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `eventattendance_ibfk_2` FOREIGN KEY (`eventID`) REFERENCES `eventinfo` (`autoID`),
  ADD CONSTRAINT `eventattendance_ibfk_3` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `eventattendance_ibfk_4` FOREIGN KEY (`eventID`) REFERENCES `eventinfo` (`autoID`),
  ADD CONSTRAINT `eventattendance_ibfk_5` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `eventattendance_ibfk_6` FOREIGN KEY (`pID`) REFERENCES `clubmembers` (`pID`);

--
-- Constraints for table `eventinfo`
--
ALTER TABLE `eventinfo`
  ADD CONSTRAINT `eventinfo_ibfk_1` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`);

--
-- Constraints for table `event_reports`
--
ALTER TABLE `event_reports`
  ADD CONSTRAINT `event_reports_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `eventinfo` (`autoID`),
  ADD CONSTRAINT `event_reports_ibfk_2` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `event_reports_ibfk_3` FOREIGN KEY (`eventID`) REFERENCES `eventinfo` (`autoID`),
  ADD CONSTRAINT `event_reports_ibfk_4` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`);

--
-- Constraints for table `meetingattendance`
--
ALTER TABLE `meetingattendance`
  ADD CONSTRAINT `meetingattendance_ibfk_1` FOREIGN KEY (`meetingID`) REFERENCES `meetinginfo` (`autoID`),
  ADD CONSTRAINT `meetingattendance_ibfk_2` FOREIGN KEY (`meetingID`) REFERENCES `meetinginfo` (`autoID`),
  ADD CONSTRAINT `meetingattendance_ibfk_3` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `meetingattendance_ibfk_4` FOREIGN KEY (`clubID`) REFERENCES `clubs` (`clubID`),
  ADD CONSTRAINT `meetingattendance_ibfk_5` FOREIGN KEY (`pID`) REFERENCES `clubmembers` (`pID`);

--
-- Constraints for table `officialsroles`
--
ALTER TABLE `officialsroles`
  ADD CONSTRAINT `officialsroles_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `clubroles` (`roleID`),
  ADD CONSTRAINT `officialsroles_ibfk_2` FOREIGN KEY (`pID`) REFERENCES `clubmembers` (`pID`),
  ADD CONSTRAINT `officialsroles_ibfk_3` FOREIGN KEY (`studentID`) REFERENCES `clubofficials` (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
