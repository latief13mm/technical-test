-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 04:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technical-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginattempts`
--

CREATE TABLE `loginattempts` (
  `IP` varchar(20) NOT NULL,
  `Attempts` int(11) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Username` varchar(65) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loginattempts`
--

INSERT INTO `loginattempts` (`IP`, `Attempts`, `LastLogin`, `Username`, `ID`) VALUES
('::1', 1, '2021-11-02 08:25:46', 'latief', 1),
('::1', 1, '2021-11-02 08:26:23', 'coba', 2),
('::1', 1, '2021-11-02 16:11:49', 'admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` char(23) NOT NULL,
  `username` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `mod_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `email`, `verified`, `mod_timestamp`, `content`) VALUES
('12176662806181552d1b6cb', 'admin', '$2y$10$ghRa475AdIuUqrVa6yubJuMNIh0WmuN6wZ6jlPLi2nL4DYn5i0BT6', 'admin@admin.com', 1, '2021-11-02 15:17:29', '<div class=\"row\">\n            <div class=\"col-sm-12 ui-resizable\" data-type=\"container-content\"><div class=\"jumbotron\" data-type=\"component-text\">\n<h1>Hello, welcome to My Website</h1>\n\n<p>This is website drag and drop, please <strong>login&nbsp;</strong>start website, or if you don\'t have account you can also Sign Up</p>\n\n<p><a class=\"btn btn-primary btn-lg\" href=\"#\" role=\"button\">Learn more</a></p>\n</div>\n</div>\n        </div>'),
('3872099546180e7a73a204', 'coba', '$2y$10$osx2pquZaW.0NDhxuhl5xuHEcU5lF/oMynoyfMi8FYVOvSjv6HnFe', 'coba@coba.com', 1, '2021-11-02 07:24:23', ''),
('4603810126180e6a866679', 'latief', '$2y$10$sFede2qnCeL16Tb3107xj.AgjuuvJRGzoc6VUVxMzmzqcpOXeH4H.', 'latief@latief.com', 1, '2021-11-02 13:57:26', '<div class=\"row\">\n        <div class=\"col-sm-6 ui-resizable\" data-type=\"container-content\"><div class=\"row\">\n        <div class=\"col-sm-12 ui-resizable\">\n            <div class=\"thumbnail\" data-type=\"container-content\"><div data-type=\"component-photo\">\n                    <div class=\"photo-panel\">\n                        <img src=\"snippets/img/somewhere_bangladesh.jpg\" width=\"100%\" height=\"\" class=\"img-responsive\" style=\"display: inline-block;\">\n                    </div>\n                </div><div data-type=\"component-text\">\n<h3>Thumbnail label</h3>\n\n<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n\n<p><a class=\"btn btn-primary\" href=\"#\" role=\"button\">Button</a> <a class=\"btn btn-default\" href=\"#\" role=\"button\">Button</a></p>\n</div>\n</div>\n        <div class=\"ui-resizable-handle ui-resizable-resizer\" style=\"z-index: 90; display: block;\"></div><div class=\"ui-resizable-handle ui-resizable-none\" style=\"z-index: 90;\"></div></div>\n    </div></div>\n        <div class=\"col-sm-6 ui-resizable\" data-type=\"container-content\"><div class=\"row\">\n        <div class=\"col-sm-12 ui-resizable\">\n            <div class=\"thumbnail\" data-type=\"container-content\"><div data-type=\"component-photo\">\n                    <div class=\"photo-panel\">\n                        <img src=\"snippets/img/somewhere_bangladesh.jpg\" width=\"100%\" height=\"\" class=\"img-responsive\" style=\"display: inline-block;\">\n                    </div>\n                </div><div data-type=\"component-text\">\n<h3>Thumbnail label</h3>\n\n<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n\n<p><a class=\"btn btn-primary\" href=\"#\" role=\"button\">Button</a> <a class=\"btn btn-default\" href=\"#\" role=\"button\">Button</a></p>\n</div>\n</div>\n        <div class=\"ui-resizable-handle ui-resizable-resizer\" style=\"z-index: 90; display: block;\"></div><div class=\"ui-resizable-handle ui-resizable-none\" style=\"z-index: 90;\"></div></div>\n    </div></div>\n    </div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginattempts`
--
ALTER TABLE `loginattempts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
