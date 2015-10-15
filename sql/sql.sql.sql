-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2015 at 10:48 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

-- --------------------------------------------------------

--
-- Table structure for table `my_db`
--

CREATE TABLE IF NOT EXISTS `my_db` (
  `firstname` varchar(11) COLLATE latin1_general_ci NOT NULL,
  `lastname` varchar(10) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile` (
  `firstname` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `console` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE IF NOT EXISTS `db` (
  `email` varchar(50) DEFAULT NULL,
  `password` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`email`, `password`) VALUES
('aadhi narayanan', 12345),
('aa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `my_db`
--

CREATE TABLE IF NOT EXISTS `my_db` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `console` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_db`
--

INSERT INTO `my_db` (`firstname`, `lastname`, `gender`, `console`) VALUES
('\0', '\0', '\0', '\0');
--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `name`) VALUES
(1, 'Kanagaraj');
--
-- Database: `my_db`
--
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=52 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'example', 'table', 'id', '', '', '_', ''),
(2, 'example', 'table', 'name', '', '', '_', ''),
(3, 'DATABASE', 'DATABASE', 'email', '', '', '_', ''),
(4, 'DATABASE', 'DATABASE', 'password', '', '', '_', ''),
(6, 'database', 'db', 'email', '', '', '_', ''),
(7, 'database', 'db', 'pass', '', '', '_', ''),
(8, 'database', 'db', 'password', '', '', '_', ''),
(9, 'mysql', 'ddata', 'email', '', '', '_', ''),
(10, 'mysql', 'ddata', 'password', '', '', '_', ''),
(11, 'cdcol', 'userProfile', 'firstname', '', '', '_', ''),
(12, 'cdcol', 'userProfile', 'lastname', '', '', '_', ''),
(13, 'cdcol', 'userProfile', 'gender', '', '', '_', ''),
(14, 'cdcol', 'userProfile', 'console', '', '', '_', ''),
(15, 'cdcol', 'my_db', 'first', '', '', '_', ''),
(16, 'database', 'my_db', 'firstname', '', '', '_', ''),
(17, 'database', 'my_db', 'lastname', '', '', '_', ''),
(18, 'database', 'my_db', 'gender', '', '', '_', ''),
(19, 'database', 'my_db', 'console', '', '', '_', ''),
(20, 'cdcol', 'my_db', 'firstname', '', '', '_', ''),
(21, 'cdcol', 'my_db', 'lastname', '', '', '_', ''),
(22, 'user_management', 'registration', 's.no', '', '', '_', ''),
(23, 'user_management', 'registration', 'email', '', '', '_', ''),
(24, 'user_management', 'registration', 'password', '', '', '_', ''),
(25, 'user_management', 'registration', 'c_password', '', '', '_', ''),
(26, 'user_management', 'registration', 'user_status', '', '', '_', ''),
(27, 'user_management', 'registration', 'id', '', '', '_', ''),
(28, 'registration', 'details', 'id', '', '', '_', ''),
(29, 'registration', 'details', 'name', '', '', '_', ''),
(30, 'registration', 'details', 'email', '', '', '_', ''),
(31, 'registration', 'details', 'username', '', '', '_', ''),
(32, 'registration', 'details', 'password', '', '', '_', ''),
(33, 'registration', 'details', 'c_password', '', '', '_', ''),
(34, 'registration', 'details', 'birth', '', '', '_', ''),
(35, 'registration', 'details', 'gender', '', '', '_', ''),
(36, 'registration', 'details', 'mobile', '', '', '_', ''),
(37, 'registration', 'details', 'fule', '', 'image_jpeg', '_', ''),
(38, 'registration', 'details', 'file', '', 'image_jpeg', '_', ''),
(39, 'reg', 'tbl_reg', 'name', '', '', '_', ''),
(40, 'reg', 'tbl_reg', 'email', '', '', '_', ''),
(41, 'reg', 'tbl_reg', 'dob', '', '', '_', ''),
(42, 'reg', 'tbl_reg', 'usertype', '', '', '_', ''),
(43, 'reg', 'tbl_reg', 'pass', '', '', '_', ''),
(44, 'reg', 'tbl_reg', 'repass', '', '', '_', ''),
(45, 'reg', 'tbl_reg', 'mobile', '', '', '_', ''),
(46, 'reg', 'tbl_reg', 'id', '', '', '_', ''),
(47, 'registration', 'details', 'status_update', '', 'text_plain', '_', ''),
(48, 'registration', 'details', 'role', '', '', '_', ''),
(49, 'reg', 'tbl_reg', 'profile_pic', '', '', '_', ''),
(50, 'registration', 'details', 'comment', '', '', '_', ''),
(51, 'reg', 'tbl_reg', 'status', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"reg","table":"tbl_reg"},{"db":"registration","table":"details"},{"db":"user_management","table":"registration"},{"db":"cdcol","table":"my_db"},{"db":"cdcol","table":"cds"},{"db":"database","table":"my_db"},{"db":"cdcol","table":"my_db "},{"db":"cdcol","table":"userProfile"},{"db":"database","table":"db"},{"db":"mysql","table":"db"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'database', 'db', '{"sorted_col":"`db`.`password` ASC"}', '2015-05-09 11:06:26'),
('root', 'registration', 'details', '{"CREATE_TIME":"2015-05-11 15:14:46","col_visib":["1","1","1","1","1","1","1","1","1"]}', '2015-05-11 11:24:56'),
('root', 'reg', 'tbl_reg', '{"sorted_col":"`tbl_reg`.`status` ASC"}', '2015-05-18 04:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-05-06 05:20:12', '{"collation_connection":"utf8mb4_general_ci"}');
--
-- Database: `reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg`
--

CREATE TABLE IF NOT EXISTS `tbl_reg` (
  `name` varchar(32) NOT NULL,
  `email` varchar(35) NOT NULL,
  `dob` date NOT NULL,
  `usertype` int(11) NOT NULL,
  `pass` varchar(35) NOT NULL,
  `repass` varchar(35) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_reg`
--

INSERT INTO `tbl_reg` (`name`, `email`, `dob`, `usertype`, `pass`, `repass`, `mobile`, `id`, `profile_pic`, `status`) VALUES
('Aadhi', 'aadhi.narayanan26@gmail.com', '2015-05-02', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 2, 'uploads/profile_pic.png', 0),
('kanagaraj', 'kanagarajcbe@000live.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 3, 'uploads/profile_pic.png', 0),
('siva', 'siva@siva.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 4, 'uploads/profile_pic.png', 0),
('Suresh', 'suresh@suresh.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 8, 'uploads/profile_pic.png', 0),
('rahul', 'rahul@rahul.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 9, 'uploads/profile_pic.png', 0),
('rani', 'rani@rani.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 11, 'uploads/profile_pic.png', 0),
('ramu', 'ramu@ramu.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 12, 'uploads/profile_pic.png', 0),
('nana', 'nana@nana.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 13, 'uploads/profile_pic.png', 0),
('araaa', 'araa@araa.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 16, 'uploads/profile_pic.png', 0),
('Arr', 'arr@arr.com', '2015-05-05', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 18, 'uploads/profile_pic - Copy.png', 0),
('opsa', 'opsa@opsa.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 19, 'uploads/profile_pic.png', 0),
('arasan', 'arasan@arasan.com', '2015-05-01', 0, '8f036369a5cd26454949e594fb9e0a2d', '8f036369a5cd26454949e594fb9e0a2d', '9015123574', 20, 'uploads/', 0),
('Howdy', 'howdy@gmail.com', '2015-05-01', 0, '77004ea213d5fc71acf74a8c9c6795fb', '77004ea213d5fc71acf74a8c9c6795fb', '9015123574', 21, 'uploads/profile_pic.png', 0),
('siva', 'nandhi@nandhi.com', '2015-05-01', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 23, 'uploads/Koala.jpg', 0),
('Rocker', 'rocker@rocker.com', '2015-05-29', 0, '9752fbd1d1ea131bf66253ac1bfff00f', '9752fbd1d1ea131bf66253ac1bfff00f', '9015123574', 24, 'uploads/profile_pic - Copy.png', 0),
('Teja', 'teja@teja.com', '2015-05-01', 0, '53e0bfaa3cf493e4085f0787f9e1753c', '53e0bfaa3cf493e4085f0787f9e1753c', '9015123574', 25, 'uploads/profile_pic - Copy.png', 0),
('aravinth', 'aravinth@aravinth.com', '2015-05-20', 1, '8f036369a5cd26454949e594fb9e0a2d', '8f036369a5cd26454949e594fb9e0a2d', '9789629707', 29, 'uploads/profile_pic.png', 0);
--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `c_password` varchar(50) NOT NULL,
  `birth` varchar(50) NOT NULL,
  `gender` text NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `status_update` int(11) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `email`, `username`, `password`, `c_password`, `birth`, `gender`, `mobile`, `status_update`, `role`, `comment`) VALUES
(1, 'aadhi', 'aadhi.narayanan26@gmail.com', 'aadhi', '12', '12345', '01-26-1992', 'male', '9578805029', 0, 1, ''),
(2, 'siva', 'siva@siva.com', 'siva', '123456789', '123456789', '05-13-2015', 'f', '123456789', 0, 0, ''),
(3, 'alex', 'naveen@gmail.com', 'naveen', '123456', '123456', '05-21-2015', 'm', '5555555', 0, 0, ''),
(4, 'kanagaraj', 'kanagarajcbe@live.com', 'kanagaraj', 'uma', 'uma', '05-07-2015', 'm', '8', 0, 0, ''),
(5, 'karthi', 'karth.kayan@gmail.com', 'karthi', '789456', '789456', '05-11-2015', 'm', '963258147', 0, 0, ''),
(6, 'selva', 'alex.deeps@gmail.com', 'selva', '123', '123', '05-01-2015', 'Female', '123456', 0, 0, ''),
(7, 'alex', 'aled.deeps@gmail.com', 'alex', '147258', '147258', '05-08-2015', 'm', '99999999', 0, 0, ''),
(15, 'tom', 'tom@gmail', 'thomas', '9999', '9999', '05-06-2003', 'm', '9999999999', 1, 0, ''),
(16, 'rubesh', 'rub@gmail.com', 'rubesh', 'rubesh', 'rubesh', '01-13-2005', 'm', '98654721802', 1, 0, ''),
(17, 'barath', 'barath@gmail.com', 'barath', 'barath', 'barath', '05-01-2015', 'm', '7200185233', 1, 0, ''),
(18, 'ravi', 'ravi@gamil.com', 'ravi', '123789', '123789', '05-13-2015', 'm', '9578805029', 0, 0, ''),
(19, 'saravana', 'sar@gamil.com', 'saravana', 'saravana', 'saravana', '05-01-2015', 'm', '0000000000', 0, 0, ''),
(20, 'uma', 'uma@gmail', 'uma', 'uma', 'uma', '05-01-2015', 'f', '66666666', 0, 0, ''),
(21, 'uma', 'uma@gmail', 'uma', 'uma', 'uma', '05-01-2015', 'f', '66666666', 0, 0, ''),
(22, 'anju', 'anju@gamil.com', 'anju', 'anju', 'anju', '05-02-2015', 'f', '8888888', 0, 0, ''),
(23, 'anju', 'anju@gamil.com', 'anju', 'anju', 'anju', '05-02-2015', 'f', '8888888', 0, 0, ''),
(24, 'deeps', 'deeps@gmail.com', 'deeps', 'deeps', 'deeps', '05-05-2015', 'f', '77777777', 0, 0, ''),
(25, 'deeps', 'deeps@gmail.com', 'deeps', 'deeps', 'deeps', '05-05-2015', 'f', '77777777', 0, 0, '');
--
-- Database: `test`
--
--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `c_password` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status` (`user_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `email`, `password`, `c_password`, `user_status`) VALUES
(1, 'a', 'a', 'a', 0);
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
