-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 02:40 AM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `License` varchar(255) NOT NULL,
  `TravelPlan` varchar(120) DEFAULT NULL,
  `TotalCost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `License`, `TravelPlan`, `TotalCost`) VALUES
(30, 'leketa@gmauil.com', 11, '2023-12-29', '2023-12-30', 'zxcv', 0, '2023-12-22 12:22:05', 'Screenshot (3).png', NULL, 650),
(33, 'leketa@gmauil.com', 7, '2023-12-23', '2023-12-27', 'paris', 1, '2023-12-23 13:29:19', 'Screenshot (3).png', NULL, 3250),
(34, 'tolo@gmail.com', 12, '2023-12-24', '2024-01-05', 'Trip to Maseru', 0, '2023-12-24 08:20:12', 'Display.png', NULL, 12050);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'TOYOTA', '2023-12-10 08:04:46', NULL),
(9, 'VOLKSWAGEN', '2023-12-10 08:05:10', NULL),
(10, 'MAZDA', '2023-12-10 08:05:20', NULL),
(11, 'HONDA', '2023-12-10 08:05:30', NULL),
(12, 'HAVAL', '2023-12-11 16:04:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b>TERMS OF USE<o:p></o:p></b></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>1. Acceptance of Terms:<o:p></o:p></b></p><p class=\"MsoNormal\">By accessing or using the services provided by Tranzify Car\r\nRentals (\"Tranzify\"), you agree to be bound by the following terms\r\nand conditions. If you do not agree to these terms, please refrain from using\r\nour services.<o:p></o:p></p><p class=\"MsoNormal\"><b>2. Eligibility:<o:p></o:p></b></p><p class=\"MsoNormal\">You must be at least 18 years old to use Tranzify\'s\r\nservices. By using our services, you affirm that you are over 18 years of age\r\nand capable of entering into a legally binding agreement.<o:p></o:p></p><p class=\"MsoNormal\"><b>3. Vehicle Rental:<o:p></o:p></b></p><p class=\"MsoNormal\">Tranzify provides vehicle rental services subject to\r\navailability and applicable terms. Renters must comply with all local laws and\r\nregulations while using Tranzify vehicles.<o:p></o:p></p><p class=\"MsoNormal\"><b>4. Booking and Payments:<o:p></o:p></b></p><p class=\"MsoNormal\">Booking confirmation is subject to vehicle availability.\r\nPayments are processed securely, and any additional fees or charges will be\r\nclearly communicated before confirmation. Cancellations and refunds are subject\r\nto our cancellation policy.<o:p></o:p></p><p class=\"MsoNormal\"><b>5. User Responsibilities:<o:p></o:p></b></p><p class=\"MsoNormal\">Users are responsible for providing accurate and up-to-date\r\ninformation during the booking process. You agree not to misuse or interfere\r\nwith Tranzify\'s services, including attempting to access unauthorized areas.<o:p></o:p></p><p class=\"MsoNormal\"><b>6. Vehicle Usage:<o:p></o:p></b></p><p class=\"MsoNormal\">Renters agree to use Tranzify vehicles responsibly,\r\nfollowing all traffic laws and regulations. Any damage caused due to misuse or\r\nnegligence will be the responsibility of the renter.<o:p></o:p></p><p class=\"MsoNormal\"><b>7. Privacy Policy:<o:p></o:p></b></p><p class=\"MsoNormal\">Tranzify respects your privacy. Our Privacy Policy outlines\r\nhow we collect, use, and safeguard your personal information. By using our\r\nservices, you consent to the terms of our Privacy Policy.<o:p></o:p></p><p class=\"MsoNormal\"><b>8. Termination of Services:<o:p></o:p></b></p><p class=\"MsoNormal\">Tranzify reserves the right to terminate or suspend services\r\nto any user for violation of these terms or for any other reason deemed\r\nnecessary by Tranzify.<o:p></o:p></p><p class=\"MsoNormal\"><b>9. Limitation of Liability:<o:p></o:p></b></p><p class=\"MsoNormal\">Tranzify is not liable for any direct, indirect, incidental,\r\nspecial, or consequential damages arising from the use of our services,\r\nincluding but not limited to vehicle rental.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b>10. Changes to Terms:<o:p></o:p></b></p><p class=\"MsoNormal\">Tranzify reserves the right to modify these terms at any\r\ntime. Users will be notified of significant changes, and continued use of our\r\nservices constitutes acceptance of the modified terms.<o:p></o:p></p><p class=\"MsoNormal\"><b>11. Governing Law:<o:p></o:p></b></p><p class=\"MsoNormal\">These terms are governed by and construed in accordance with\r\nthe laws of Lesotho. Any disputes arising under or in connection with these\r\nterms shall be subject to the exclusive jurisdiction of the courts in Lesotho.<o:p></o:p></p><p align=\"justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\">By using Tranzify Car Rentals, you acknowledge that you have\r\nread, understood, and agree to abide by these Terms of Use.<o:p></o:p></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><span style=\"font-size:14.0pt;line-height:107%\">Privacy Policy<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>&nbsp;</b></p>\r\n\r\n<p class=\"MsoNormal\"><b>This Privacy Policy outlines how Tranzify Car Rentals\r\n(\"Tranzify\") collects, uses, and safeguards your personal information\r\nwhen you use our services.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Information We Collect:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Tranzify collects personal information such as your name,\r\ncontact details, and payment information when you make a reservation. We may\r\nalso collect information about your device, location, and usage patterns on our\r\nwebsite for analytical purposes.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>How We Use Your Information:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>We use the collected information to process your\r\nbookings, provide customer support, and improve our services. Your data may\r\nalso be used for communication regarding your reservations, promotional offers,\r\nand important updates related to our services.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Sharing of Information:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Tranzify may share your information with trusted third\r\nparties, such as payment processors and service providers, to facilitate our\r\nservices. We do not sell or lease your personal information to third parties\r\nfor marketing purposes.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Your Choices:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>You have the right to access, correct, or delete your\r\npersonal information. You can update your preferences or request assistance by\r\ncontacting our customer support.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Children\'s Privacy:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Tranzify does not knowingly collect personal information\r\nfrom individuals under the age of 18. If we become aware that we have\r\ninadvertently collected such information, we will take steps to delete it.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Changes to the Privacy Policy:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Tranzify reserves the right to update this Privacy\r\nPolicy. Any changes will be posted on our website, and your continued use of\r\nour services constitutes acceptance of the updated policy.<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>Contact Us:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>If you have any questions or concerns about this Privacy\r\nPolicy or the handling of your personal information, please contact our Data\r\nProtection Officer at group06@gmail.com.<o:p></o:p></b></p>'),
(3, 'About Us ', 'aboutus', '										<div><p class=\"MsoNormal\">Welcome to Tranzify Car Rentals, your premier choice for\r\ntop-quality car rental services in Lesotho. At Tranzify, we are dedicated to\r\ndelivering an unparalleled travel experience, combining reliability,\r\nconvenience, and exceptional customer service.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Our Mission:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Tranzify Car Rentals is on a mission to redefine your travel\r\nexperience. Whether you\'re exploring the picturesque landscapes of Lesotho or\r\nnavigating the bustling city streets, we are committed to making your journey\r\nseamless, enjoyable, and stress-free.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Unmatched Fleet:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Discover the Tranzify difference with our meticulously\r\nmaintained fleet of vehicles. From sleek and efficient compact cars to spacious\r\nand comfortable SUVs, our diverse range of vehicles caters to all your travel\r\nneeds. Each vehicle undergoes regular inspections, ensuring your safety and\r\ncomfort on every adventure.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Local Expertise:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">As a Lesotho-based company, Tranzify Car Rentals takes pride\r\nin our intimate knowledge of the local terrain and culture. Our team of\r\npassionate professionals not only excels in car rentals but also serves as your\r\nlocal travel ambassadors. Count on us for insider tips, personalized\r\nrecommendations, and a genuine understanding of your travel requirements.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Customer-Centric Approach:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Your satisfaction is at the heart of what we do. Tranzify\r\nCar Rentals is committed to providing transparent pricing, flexible rental\r\noptions, and prompt, reliable service. Whether you\'re a seasoned traveler or a\r\nfirst-time renter, our dedicated team is here to guide you through the process,\r\nensuring a smooth and enjoyable experience.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Environmental Responsibility:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Tranzify Car Rentals is dedicated to sustainable and\r\nresponsible practices. From fuel-efficient vehicles to waste reduction\r\ninitiatives, we prioritize environmentally friendly operations. Join us in our\r\ncommitment to preserving the natural beauty of Lesotho for generations to come.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>Easy Booking Process:<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Experience the convenience of reserving your vehicle online\r\nthrough our user-friendly website. Tranzify Car Rentals offers a streamlined\r\nbooking process, allowing you to secure the perfect vehicle for your journey\r\nwith just a few clicks. Your time is valuable, and we strive to make your car\r\nrental experience as straightforward as possible.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Choose Tranzify Car Rentals for a journey beyond\r\ntransportation – it\'s about creating lasting memories and embracing the joy of\r\nexploration. Thank you for considering Tranzify as your trusted travel partner\r\nin Lesotho. We look forward to welcoming you aboard.<o:p></o:p></p></div>\r\n										'),
(11, 'FAQs', 'faqs', '<p class=\"MsoNormal\"><b>1. How do I book a vehicle with Tranzify Car Rentals?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">To book a vehicle with Tranzify, simply visit our website\r\nand follow the easy steps on our booking platform. Enter your rental details,\r\nchoose the vehicle that suits your needs, and complete the reservation process.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>2. What documents do I need to rent a car?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">To rent a car with Tranzify, you will need a valid driver\'s\r\nlicense, a credit card for payment, and an identification document (such as a\r\npassport or national ID). International renters may need additional\r\ndocumentation; please check our terms for details.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>3. Can I modify or cancel my reservation?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Yes, you can modify or cancel your reservation. Log in to\r\nyour account on our website, go to the \"My Reservations\" section, and\r\nfollow the instructions. Please note that cancellation policies and fees may\r\napply.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>4. What types of vehicles does Tranzify offer?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Tranzify offers a diverse fleet of vehicles, including\r\ncompact cars, SUVs, and more. Visit our website to explore our range and choose\r\nthe vehicle that best fits your travel needs.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>5. How does Tranzify ensure the safety and cleanliness of\r\nits vehicles?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">At Tranzify, we prioritize the safety and cleanliness of our\r\nvehicles. Each vehicle undergoes regular maintenance and thorough cleaning\r\nbetween rentals. We follow industry standards to ensure your safety and\r\ncomfort.<b><o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\"><b>6. What is the minimum age requirement to rent a car?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">The minimum age to rent a car with Tranzify is 18 years old.\r\nRenters must hold a valid driver\'s license and meet other eligibility criteria\r\noutlined in our terms of use.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>7. Can I rent a car for someone else?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Yes, you can rent a car for someone else. However, the\r\nperson driving the vehicle must meet our eligibility criteria, including age\r\nrequirements and possession of a valid driver\'s license.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>8. Are there any additional fees or charges not included\r\nin the rental price?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">Additional fees, such as fuel, mileage, and optional\r\nadd-ons, may apply. These will be clearly communicated during the booking\r\nprocess. Be sure to review the total cost before confirming your reservation.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>9. What do I do in case of an emergency or breakdown?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">In the event of an emergency or vehicle breakdown, contact\r\nour 24/7 customer support hotline. We will assist you promptly and guide you\r\nthrough the necessary steps.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><b>10. How can I provide feedback or share my experience\r\nwith Tranzify Car Rentals?<o:p></o:p></b></p>\r\n\r\n<p class=\"MsoNormal\">We value your feedback! You can share your experience by\r\ncontacting our customer support or leaving a review on our website. Your input\r\nhelps us continually improve our services.<o:p></o:p></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`, `Age`) VALUES
(13, 'Keketso Justice Tolo', 'tolo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '50785049', NULL, NULL, NULL, NULL, '2023-12-18 11:29:29', NULL, NULL),
(14, 'Thabiso Leketa', 'leketa@gmauil.com', 'e10adc3949ba59abbe56e057f20f883e', '64942108', NULL, NULL, NULL, NULL, '2023-12-18 14:30:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(6, 'Polo GTI', 9, 'Five seater car with a 2.5L engine. Great for travel small to mid distances. ', 1000, 'Petrol', 2014, 5, 'VOLKSWAGEN-Polo-GTI-5316_51.jpg', 'VW-Polo-GTI-interior.jpg', 'Volkswagen-Gear-Polo-GTI-2014-24.jpg', '2014-Volkswagen-Polo-cargo-dimensions.jpg', '', 1, NULL, 1, 1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, '2023-12-10 08:13:37', NULL),
(7, 'Fit', 11, 'Honda Fit is a subcompact car, popular for its practicality, fuel efficiency, and versatile interior space.', 800, 'Petrol', 2014, 5, 'Honda Fit Grey.jpg', 'Honda-fit-interior.jpg', 'Honda-fit-shifter.jpg', 'honda-fit-boot.jpg', '', 1, NULL, NULL, 1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, '2023-12-10 08:46:52', NULL),
(8, 'Demio 2', 10, 'This is a subcompact car that combines stylish design with agile performance.', 900, 'Petrol', 2008, 5, 'Mazda Demio Green.jpg', 'Demio2-interior.jpg', 'Demio-Stick.jpg', 'Demio-boot.jpg', '', 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, 1, NULL, '2023-12-10 09:04:49', NULL),
(9, 'Fit', 11, 'Great Car Indeed', 1000, 'Diesel', 2002, 5, 'Honda Fit blue.jpg', 'Honda-fit-interior.jpg', 'Honda-fit-shifter.jpg', 'honda-fit-boot.jpg', '', 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, '2023-12-10 13:08:11', NULL),
(10, 'Demio 2', 10, 'This is a subcompact car that combines stylish design with agile performance.', 800, 'Petrol', 2014, 5, 'Mazda Demio Blue.jpg', 'Demio2-interior.jpg', 'Demio-Stick.jpg', 'Demio-boot.jpg', '', 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, '2023-12-11 15:48:12', NULL),
(11, 'Vitz', 8, 'Discover the Toyota Vitz – compact, efficient, and stylish. Perfect for city living with nimble handling and a fuel-efficient engine. Modern tech, spacious interior – it\'s not just a car, it\'s a lifestyle. Test drive the Vitz today for the perfect blend of innovation and reliability.', 600, 'Petrol', 2002, 5, 'Toyota-Vitz.jpg', 'Vitz-Interior.jpg', 'Toyota_Vitz_facelift_JDM_007.jpg', 'Honda-fit-shifter.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, NULL, '2023-12-11 15:51:03', NULL),
(12, 'Corolla', 8, 'Experience the Toyota Corolla – timeless elegance, enduring performance. Effortlessly navigate city roads with its smooth handling and fuel efficiency. Inside, enjoy a refined interior, loaded with modern tech and safety features. The Corolla isn\'t just a car; it\'s a statement of reliability and sophistication. Elevate your drive – test drive the Corolla today.', 1000, 'Petrol', 2018, 5, 'Corolla outside.jpg', 'Corolla inside.jpg', 'toyota dash.jpg', 'Toyota Key.jpg', '', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, '2023-12-11 16:07:27', NULL),
(13, 'H6 GT', 12, 'Unleash the power of sophistication with the Haval H6 GT. Elevate your journey with a blend of style and performance. This SUV boasts dynamic handling, cutting-edge features, and a sleek design that turns heads. Step into a refined interior, equipped with modern technology and safety innovations. The Haval H6 GT – where luxury meets capability. Command the road with confidence. Test drive the future of driving today.', 2500, 'Diesel', 2020, 6, 'Haval H6 GT.jpg', 'Haval Gear Nob.jpg', 'Haval Inside.jpg', 'Steering wheel Haval.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-12-11 16:10:48', NULL),
(14, 'GD6 SINGLE CAB', 8, 'Meet the Toyota GD6 Single Cab – a workhorse redefined. Engineered for durability and performance, this pickup is your reliable partner on every job. With a robust design, fuel efficiency, and Toyota\'s legendary reliability, it\'s more than a truck; it\'s your tool for success. Whether at the worksite or on the road, the GD6 Single Cab delivers power, practicality, and the trusted Toyota quality. Elevate your work game – test drive the GD6 Single Cab today.', 2500, 'Petrol', 2022, 2, '6638113_right.jpg', 'Hilux-Interior.jpg', 'Toyota Key.jpg', '12.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2023-12-11 16:13:27', NULL),
(15, 'GOLF 7 GTI', 9, 'Unleash the thrill of driving with the Golf 7 GTI – where performance meets style. This iconic hot hatch delivers exhilarating power, sharp handling, and a sleek design that commands attention. Step into a driver-centric interior loaded with advanced tech and premium features. The Golf 7 GTI is not just a car; it\'s a statement of precision engineering and driving pleasure. Elevate your driving experience – test drive the legend today', 1500, 'Petrol', 2020, 5, 'golf 7 car.jpg', 'Golf 7 interior.jpg', 'Golf 7 rear.jpg', 'Volkswagen-Gear-Polo-GTI-2014-24.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-12-12 06:46:44', NULL),
(16, 'GOLF 7 GTI', 9, 'Unleash the thrill of driving with the Golf 7 GTI – where performance meets style. This iconic hot hatch delivers exhilarating power, sharp handling, and a sleek design that commands attention. Step into a driver-centric interior loaded with advanced tech and premium features. The Golf 7 GTI is not just a car; it\'s a statement of precision engineering and driving pleasure. Elevate your driving experience – test drive the legend today', 2300, 'Diesel', 2020, 5, 'GTI-Black.jpg', 'Volkswagen-Gear-Polo-GTI-2014-24.jpg', 'Golf 7 interior.jpg', '20170523_145633.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-12-12 06:49:52', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
