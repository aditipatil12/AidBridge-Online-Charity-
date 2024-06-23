-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 04:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aidbridge_online_charity_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(100) NOT NULL,
  `donorId` int(100) NOT NULL,
  `projectId` int(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `donorId`, `projectId`, `date`, `time`, `amount`) VALUES
(1, 1, 2, '2024-02-09', '20:39:41', 200),
(2, 1, 2, '2024-02-09', '20:39:57', 600),
(3, 1, 2, '2024-02-09', '20:42:42', 200),
(4, 1, 2, '2024-02-10', '07:16:25', 10000),
(5, 1, 6, '2024-02-10', '11:20:28', 2000),
(6, 1, 3, '2024-02-10', '11:20:49', 9200),
(7, 1, 4, '2024-02-10', '11:21:05', 10050),
(8, 0, 5, '2024-02-10', '11:24:06', 87000),
(9, 1, 2, '2024-02-11', '10:41:56', 30000),
(10, 1, 2, '2024-02-11', '10:42:10', 9200);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(10) NOT NULL,
  `donor_name` varchar(50) NOT NULL,
  `donor_address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `donor_name`, `donor_address`, `city`, `pincode`, `contact`, `email`, `password`) VALUES
(1, 'Aditi Patil', '50, Gayatri Colony, Shirpur', 'Shirpur', 425405, '9372814488', 'aditi@gmail.com', '123'),
(2, 'Priya Patil', '50, Gayatri Colony, Shirpur', 'Shirpur', 425405, '9876543210', 'priya@gmail.com', '123'),
(3, 'Prathamesh Mali', 'Ajande', 'Shirpur', 425405, '9876543210', 'prathamesh@gmail.com', '123'),
(4, 'Mansi Marathe', 'Mahesh nagar', 'Nandurbar', 420452, '9876543210', 'mansi@gmail.com', '123'),
(5, 'Sakshi Chaudhari', 'Big house', 'Nandurbar', 450452, '9876543210', 'sakshi@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_information`
--

CREATE TABLE `ngo_information` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo_information`
--

INSERT INTO `ngo_information` (`id`, `name`, `email`, `password`) VALUES
(1, 'God NGO', 'god@gmail.com', '321'),
(2, 'PM NGO', 'pm@gmail.com', '123'),
(3, 'Peace NGO', 'peace@gmail.com', '123'),
(4, 'Goodwill NGO', 'goodwill@gmail.com', '123'),
(5, 'Best NGO', 'best@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `projectlog`
--

CREATE TABLE `projectlog` (
  `id` int(100) NOT NULL,
  `pId` int(100) NOT NULL,
  `image` mediumblob NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectlog`
--

INSERT INTO `projectlog` (`id`, `pId`, `image`, `title`, `description`) VALUES
(1, 1, '', 'Aditi', 'Aditi'),
(2, 0, '', 'Aditi', 'Aditi'),
(3, 0, '', 'Aditi', 'Aditi');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) NOT NULL,
  `ngoId` int(50) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_details` varchar(10000) NOT NULL,
  `project_address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `project_cost` int(100) NOT NULL,
  `status` text NOT NULL,
  `requiredDonation` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `ngoId`, `project_name`, `project_details`, `project_address`, `city`, `pincode`, `state`, `latitude`, `longitude`, `project_cost`, `status`, `requiredDonation`) VALUES
(1, 1, 'Beti Bachao Beti Padhao', 'Beti Bachao Beti Padhao:In 2015, the Indian government introduced the Beti Bachao, Beti Padhao (BBBP) scheme to address concerns about gender discrimination and women empowerment in the country. The name Beti Bachao, Beti Padhao translates to ‘Save the girl child, educate the girl child’. The scheme aims to educate citizens against gender bias and improve the efficacy of welfare services for girls. It was launched with initial funding of Rs. 100 crore (US$ 13.5 million).', 'Nashik', 'Nashik', 123456, 'Maharashtra', 21.35495376586914, 23.649999618530273, 1000000, 'Completed', 1000000),
(2, 2, 'Light bulb project', 'Light bulb project for students. The main objective of this scheme is to promote energy efficiency and conservation in rural areas of the country. In order to avail the benefits of this scheme, interested individuals can register themselves on the official website of the scheme. Once registered, they will be required to provide their contact details and address. After successful registration, beneficiaries will be able to purchase LED bulbs from designated outlets.', 'Shirpur', 'Shirpur', 425405, 'Maharashtra', 90.76000213623047, 74.87850189208984, 50000, 'Completed', 0),
(3, 4, 'Apna Jahan Hai Sabse Pyara', 'Developing course curriculum for children from Class I to Class X aiming at instilling the element of pride and honour among the tender age children. SANKALP believes a nation can only grow when the children feels a sense of pride being a member of Great India. The courses are being developed to introduce them with great Indian history, values, and sacrifices which have this led our India to stand high against all odds. The volunteers of SANKALP shall be attached with SANKALP centers for delivering /executing the designed objective from next academic session. The courses are designed at different layers in order to ensure they are introduced with many facets of national heroism.', 'Delhi', 'Delhi', 100000, 'Delhi', 325.1, 78, 120000, 'Ongoing', 110800),
(4, 3, 'National Institute of Open Schooling (NIOS) and Open Basic Education (OBE):', 'The programme shall focus to provide alternate means of schooling – open schooling- to Street and Working Children (SWC), who are not privileged enough to receive education through formal schools. The programme project aims to extend education to the ones who on account of poverty and destitution cannot finish their schooling and drop out in the middle. The project of NIOS/OBE aims to reach the unreached, comprising of school drop-outs, out-of-school SWC, poor youth and all those who are left out of the mainstream formal education system on account of poverty and lack of opportunity.', 'New Mumbai', 'Mumbai', 200000, 'Maharashtra', 98.12, 12.035, 90000, 'Ongoing', 79950),
(5, 3, 'The Library Program', 'SANKALP intends to operate libraries through its educational centres. The children shall be encouraged to adopt the habit of learning and sharing. The regular home visits to encourage parents to send their children to the libraries shall be done. Parent teacher meetings would also conducted to ensure regular involvement of children.', 'Karve Road', 'Pune', 509054, 'Maharashtra', 89.2468, 34.1289, 87000, 'Completed', 0),
(6, 5, 'UDDAN', 'Computer training programme “UDDAN” which has covered 490 children till date. This project covers Certified Computer Training Module. The children from Class IV to IX are covered in the programme. The main objective of the project is to provide basic computer training to the underprivileged with focus on computer literacy required at their age.', 'Dwarka', 'Nashik', 235078, 'Maharashtra', 12.35, 34.1289, 120000, 'Ongoing', 118000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngo_information`
--
ALTER TABLE `ngo_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectlog`
--
ALTER TABLE `projectlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ngo_information`
--
ALTER TABLE `ngo_information`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projectlog`
--
ALTER TABLE `projectlog`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
