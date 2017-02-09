-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2016 at 03:55 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sximoci32`
--

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(760, 1464224835, '127.0.0.1', '36329'),
(765, 1464225827, '127.0.0.1', '51916'),
(766, 1464225831, '127.0.0.1', '04549'),
(767, 1464225836, '127.0.0.1', '29746'),
(763, 1464224856, '127.0.0.1', '34247'),
(762, 1464224855, '127.0.0.1', '51596'),
(761, 1464224845, '127.0.0.1', '18406'),
(764, 1464225826, '127.0.0.1', '41188');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `timestamp` int(10) UNSIGNED DEFAULT '0',
  `data` blob,
  `session_id` varchar(40) DEFAULT NULL,
  `user_agent` text,
  `last_activity` text,
  `user_data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`, `session_id`, `user_agent`, `last_activity`, `user_data`) VALUES
(NULL, '127.0.0.1', 0, NULL, '8844343bb46346ff82601f11dda47298', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0', '1464227650', 'a:8:{s:9:"user_data";s:0:"";s:4:"lang";s:2:"en";s:9:"logged_in";b:1;s:3:"uid";s:1:"1";s:3:"gid";s:1:"1";s:3:"eid";s:19:"superadmin@mail.com";s:2:"ll";s:19:"2014-09-09 03:09:05";s:3:"fid";s:11:"Root Admins";}'),
(NULL, '127.0.0.1', 0, NULL, 'aff3257c8cc8387a90d4e1d1da5450a9', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0', '1464225826', 'a:8:{s:9:"user_data";s:0:"";s:4:"lang";s:2:"en";s:9:"logged_in";b:1;s:3:"uid";s:1:"1";s:3:"gid";s:1:"1";s:3:"eid";s:19:"superadmin@mail.com";s:2:"ll";s:19:"2014-09-09 03:09:05";s:3:"fid";s:11:"Root Admins";}'),
(NULL, '127.0.0.1', 0, NULL, 'd825aa2a9784e4e802f2374ae87c26e4', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0', '1464225826', 'a:2:{s:9:"user_data";s:0:"";s:4:"lang";s:2:"en";}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_groups`
--

CREATE TABLE `tb_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `level` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_groups`
--

INSERT INTO `tb_groups` (`group_id`, `name`, `description`, `level`) VALUES
(1, 'Superadmin', 'Root Superadmin , should be as top level group', 1),
(2, 'Administrator', 'Administrator level, level No 2', 2),
(3, 'Users', 'Users as registered / member', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_groups_access`
--

CREATE TABLE `tb_groups_access` (
  `id` int(6) NOT NULL,
  `group_id` int(6) DEFAULT NULL,
  `module_id` int(6) DEFAULT NULL,
  `access_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_groups_access`
--

INSERT INTO `tb_groups_access` (`id`, `group_id`, `module_id`, `access_data`) VALUES
(166, 1, 2, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(167, 2, 2, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(168, 3, 2, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(169, 1, 8, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(170, 2, 8, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(171, 3, 8, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(199, 1, 7, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(200, 2, 7, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(201, 3, 7, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(202, 1, 1, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(203, 2, 1, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(204, 3, 1, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(277, 1, 14, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(278, 2, 14, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(279, 3, 14, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(286, 1, 17, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(287, 2, 17, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(288, 3, 17, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(304, 1, 22, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(305, 2, 22, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(306, 3, 22, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(310, 1, 25, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(311, 2, 25, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(312, 3, 25, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(331, 1, 36, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(332, 2, 36, '{"is_global":"1","is_view":"1","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(333, 3, 36, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(334, 1, 37, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(335, 2, 37, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(336, 3, 37, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(337, 1, 38, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(338, 2, 38, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(339, 3, 38, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(343, 1, 40, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(344, 2, 40, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(345, 3, 40, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(349, 1, 42, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(350, 2, 42, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(351, 3, 42, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(352, 1, 43, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(353, 2, 43, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(354, 3, 43, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(355, 1, 44, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"1","is_edit":"1","is_remove":"1","is_excel":"1"}'),
(356, 2, 44, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(357, 3, 44, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(394, 1, 50, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"0","is_edit":"0","is_remove":"1","is_excel":"0"}'),
(395, 2, 50, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"0","is_edit":"0","is_remove":"1","is_excel":"0"}'),
(396, 3, 50, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"0","is_edit":"0","is_remove":"1","is_excel":"0"}'),
(400, 1, 11, '{"is_global":"1","is_view":"1","is_detail":"1","is_add":"0","is_edit":"0","is_remove":"1","is_excel":"0"}'),
(401, 2, 11, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}'),
(402, 3, 11, '{"is_global":"0","is_view":"0","is_detail":"0","is_add":"0","is_edit":"0","is_remove":"0","is_excel":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `tb_logs`
--

CREATE TABLE `tb_logs` (
  `auditID` int(20) NOT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `task` varchar(50) DEFAULT NULL,
  `note` text,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_logs`
--

INSERT INTO `tb_logs` (`auditID`, `ipaddress`, `user_id`, `module`, `task`, `note`, `logdate`) VALUES
(15, '127.0.0.1', 1, 'core', 'logs', 'ID : 14  , Has Been Removed Successfull', '2016-05-25 05:51:40'),
(16, '127.0.0.1', 1, 'core', 'users', 'New Entry row with ID : 2  , Has Been Save Successfull', '2016-05-26 01:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `menu_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_type` char(10) DEFAULT NULL,
  `role_id` varchar(100) DEFAULT NULL,
  `deep` smallint(2) DEFAULT NULL,
  `ordering` int(6) DEFAULT NULL,
  `position` enum('top','sidebar','both') DEFAULT NULL,
  `menu_icons` varchar(30) DEFAULT NULL,
  `active` enum('0','1') DEFAULT '1',
  `access_data` text,
  `allow_guest` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`menu_id`, `parent_id`, `module`, `url`, `menu_name`, `menu_type`, `role_id`, `deep`, `ordering`, `position`, `menu_icons`, `active`, `access_data`, `allow_guest`) VALUES
(1, 0, 'portpolio', '', 'Portpolio', 'internal', '0', 0, 3, 'top', '', '1', '{"1":"1","2":"1","3":"1"}', '1'),
(2, 0, 'contact-us', '', 'Contact Us', 'internal', NULL, NULL, 7, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1'),
(7, 0, 'faq', '', 'FAQ', 'internal', NULL, NULL, 4, 'top', '', '1', '{"1":"1","2":"0","3":"0"}', '1'),
(12, 0, 'about-us', '', 'About', 'internal', '0', 0, 1, 'top', '', '1', '{"1":"1","2":"0","3":"0"}', '1'),
(13, 0, 'service', '', 'Service', 'internal', NULL, NULL, 5, 'top', '', '1', '{"1":"0","2":"0","3":"0"}', '1'),
(18, 0, 'invoice', '', 'abd', 'internal', '0', 0, 0, 'sidebar', '', '1', '{"1":"0","2":"0","3":"0"}', '0'),
(21, 0, 'separator', NULL, 'Dashboard Main', 'internal', NULL, NULL, NULL, 'sidebar', NULL, '1', '{"1":"0","2":"0","3":"0"}', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_module`
--

CREATE TABLE `tb_module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `module_title` varchar(100) DEFAULT NULL,
  `module_note` varchar(255) DEFAULT NULL,
  `module_author` varchar(100) DEFAULT NULL,
  `module_created` timestamp NULL DEFAULT NULL,
  `module_desc` text,
  `module_db` varchar(255) DEFAULT NULL,
  `module_db_key` varchar(100) DEFAULT NULL,
  `module_type` enum('master','report','proccess','core','generic','addon') DEFAULT 'master',
  `module_config` text,
  `module_lang` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_module`
--

INSERT INTO `tb_module` (`module_id`, `module_name`, `module_title`, `module_note`, `module_author`, `module_created`, `module_desc`, `module_db`, `module_db_key`, `module_type`, `module_config`, `module_lang`) VALUES
(1, 'users', 'Users System', 'Users System', 'Mango Tm', '2013-07-11 05:46:46', NULL, 'tb_users', 'id', 'core', 'eyJ0YWJsZV9kY4oIonR4XgVzZXJzo4w4cHJ1bWFyeV9rZXk4O4JlciVyXi3ko4w4cgFsXgN3bGVjdCoIo3NFTEVDVCA5dGJfdXN3cnMuK4w5oHR4XidybgVwcymuYWl3oFxyXGmGUk9NoHR4XgVzZXJzoExFR3Q5Sk9JT4B0Y39ncp9lcHM5T0a5dGJfZgJvdXBzLpdybgVwXi3koD05dGJfdXN3cnMuZgJvdXBf6WQ4LCJzcWxfdih3cpU4O4o5oCBXSEVSRSB0Y39lciVycym1ZCAhPScnoCA4LCJzcWxfZgJvdXA4O4o5oCA5o4w4ZgJ1ZCoIWgs4Zp33bGQ4O4J1ZCosopFs6WFzoj24dGJfdXN3cnM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24SWQ4LCJi6WVgoj2wLCJkZXRh6Ww4OjAsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4owo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj24YXZhdGFyo4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JBdpF0YXo4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MzA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIop3tYWd3o4w4Zp9ybWF0XgZhbHV3oj24XC9lcGxvYWRzXC9lciVyclwvon0seyJp6WVsZCoIopdybgVwXi3ko4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JHcp9lcCosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojM4LCJjbimuoj17onZhbG3koj24MSosopR4oj24dGJfZgJvdXBzo4w46iVmoj24ZgJvdXBf6WQ4LCJk6XNwbGFmoj24bpFtZSJ9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj24bpFtZSosopFs6WFzoj24dGJfZgJvdXBzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokdybgVwo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIonVzZXJuYWl3o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVciVybpFtZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIo4osonNvcnRs6XN0oj24NSosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIopZ1cnN0XimhbWU4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokZ1cnN0oEmhbWU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4o4LCJzbgJ0bG3zdCoIojY4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JsYXN0XimhbWU4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokxhcgQ5TpFtZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIo4osonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIopVtYW3so4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JFbWF1bCosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIo4osonNvcnRs6XN0oj24OCosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIonBhcgNgbgJko4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JQYXNzdi9yZCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojk4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4Jsbid1b39hdHR3bXB0o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JMbid1b4BBdHR3bXB0o4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTA4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JjcpVhdGVkXiF0o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JDcpVhdGVkoEF0o4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTE4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JsYXN0XixvZi3uo4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JMYXN0oExvZi3uo4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTo4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JlcGRhdGVkXiF0o4w4YWx1YXM4O4J0Y39lciVycyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JVcGRhdGVkoEF0o4w4dp33dyoIMCw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVh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onVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24ZWlh6Ww4LCJhbG3hcyoIonR4XgVzZXJzo4w4bGF4ZWw4O4JFbWF1bCosopZvcplfZgJvdXA4OjAsonJ3cXV1cpVkoj24ZWlh6Ww4LCJi6WVgoj2xLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4OjUsop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JwYXNzdi9yZCosopFs6WFzoj24dGJfdXN3cnM4LCJsYWJ3bCoIo3BhcgNgbgJko4w4Zp9ybV9ncp9lcCoIMCw4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj2wLCJzbgJ0bG3zdCoIN4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24MCosopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4Jsbid1b39hdHR3bXB0o4w4YWx1YXM4O4J0Y39lciVycyosopxhYpVsoj24TG9n6Wa5QXR0ZWlwdCosopZvcplfZgJvdXA4OjAsonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4Ojcsop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JsYXN0XixvZi3uo4w4YWx1YXM4O4J0Y39lciVycyosopxhYpVsoj24TGFzdCBMbid1b4osopZvcplfZgJvdXA4OjAsonJ3cXV1cpVkoj24MCosonZ1ZXc4OjAsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIMCw4ci9ydGx1cgQ4Oj5sop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIojA4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YWN06XZ3o4w4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', NULL),
(2, 'groups', 'Users Group', 'View All', 'Mango Tm', '2013-07-10 20:45:14', NULL, 'tb_groups', 'group_id', 'core', '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O4JJRCosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojA4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bpFtZSosopFs6WFzoj24dGJfZgJvdXBzo4w4bGF4ZWw4O4JOYWl3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24o4w4ci9ydGx1cgQ4O4oxo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopR3ciNy6XB06W9uo4w4YWx1YXM4O4J0Y39ncp9lcHM4LCJsYWJ3bCoIokR3ciNy6XB06W9uo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24o4w4ci9ydGx1cgQ4O4oyo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopx3dpVso4w4YWx1YXM4O4J0Y39ncp9lcHM4LCJsYWJ3bCoIokx3dpVso4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9XX0=', NULL),
(4, 'module', 'Module Management', 'All module applications', 'Mango Tm', '2013-08-25 18:58:43', NULL, 'tb_module', 'module_id', 'core', 'eyJ0YWJsZV9kY4oIonR4XilvZHVsZSosonBy6Wlhcn3f6iVmoj24bW9kdWx3Xi3ko4w4cgFsXgN3bGVjdCoIo3NFTEVDVCB0Y39tbiRlbGUubW9kdWx3Xi3kLHR4XilvZHVsZSmtbiRlbGVfbpFtZSx0Y39tbiRlbGUubW9kdWx3XgR1dGx3LHR4XilvZHVsZSmtbiRlbGVfbp90ZSx0Y39tbiRlbGUubW9kdWx3XiFldGhvc4x0Y39tbiRlbGUubW9kdWx3XiNyZWF0ZWQsdGJfbW9kdWx3LplvZHVsZV9kZXNjLHR4XilvZHVsZSmtbiRlbGVfZGosdGJfbW9kdWx3LplvZHVsZV9kY39rZXksdGJfbW9kdWx3LplvZHVsZV90eXB3LHR4XilvZHVsZSmncp9lcF91ZCx0Y39tbiRlbGUubW9kdWx3XgBhdG55oEZST005dGJfbW9kdWx3oCosonNxbF9g6GVyZSoIo4A5oFdoRVJFoHR4XilvZHVsZSmtbiRlbGVf6WQ5SVM5Tk9UoEmVTEw5QUmEoGlvZHVsZV9uYWl3oCE9JilvZHVsZSc5oCosonNxbF9ncp9lcCoIo4A5oCA4LCJpbgJtcyoIWgs4Zp33bGQ4O4JtbiRlbGVf6WQ4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oE3ko4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MCosonZ1ZXc4OjEsonRmcGU4O4J26WRkZWa4LCJhZGQ4OpZhbHN3LCJ3ZG30oj1pYWxzZSw4ciVhcpN2oj2wLCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4O4owo4w4bgB06W9uoj17op9wdF90eXB3oj1pYWxzZSw4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIZpFsciUsopxvbitlcF9iYWxlZSoIZpFsciUsop3zXiR3cGVuZGVuYgk4OpZhbHN3LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4OpZhbHN3LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj1pYWxzZSw4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bW9kdWx3XimhbWU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oEmhbWU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMCw4dH3wZSoIonR3eHQ4LCJhZGQ4O4o4LCJ3ZG30oj24o4w4ciVhcpN2oj2xLCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjEsop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIojA4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JtbiRlbGVfdG30bGU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oFR1dGx3o4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24MSosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj24o4w4ZWR1dCoIo4osonN3YXJj6CoIMSw4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2yLCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4owo4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bW9kdWx3XimvdGU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oEmvdGU4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4o4LCJi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dGVuZF9jbGFzcyoIo4J9fV0sopdy6WQ4O3t7opZ1ZWxkoj24bW9kdWx3Xi3ko4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIoklvZHVsZSBJZCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XgBhdG54LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24QXBwcyosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojo4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XimhbWU4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24Qi9udHJvbGx3c4osonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojM4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XgR1dGx3o4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIoklvZHVsZSBOYWl3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEyMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JtbiRlbGVfbp90ZSosopFs6WFzoj24dGJfbW9kdWx3o4w4bGF4ZWw4O4JObgR3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojElMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NSosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JtbiRlbGVfYXV06G9yo4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIokFldGhvc4osonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojY4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XiNyZWF0ZWQ4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24QgJ3YXR3ZCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojc4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMCw4bG3u6yoIo4osonRhcpd3dCoIo39zZWxpo4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24bW9kdWx3XiR3ciM4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oER3ciM4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oao4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZV9kY4osopFs6WFzoj24dGJfbW9kdWx3o4w4bGF4ZWw4O4JNbiRlbGU5RGo4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4omo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZV9kY39rZXk4LCJhbG3hcyoIonR4XilvZHVsZSosopxhYpVsoj24TW9kdWx3oER4oEt3eSosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojEwo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIoplvZHVsZV90eXB3o4w4YWx1YXM4O4J0Y39tbiRlbGU4LCJsYWJ3bCoIo3RmcGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxMSosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2wLCJs6Wmroj24o4w4dGFyZiV0oj24XgN3bGY4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4Jncp9lcF91ZCosopFs6WFzoj24dGJfbW9kdWx3o4w4bGF4ZWw4O4JHcp9lcCBJZCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojEyo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjAsopx1bps4O4o4LCJ0YXJnZXQ4O4JfciVsZ4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fXldfQ==', NULL),
(7, 'menu', 'Menu Management', 'Manage All Menu', 'Mango Tm', '2014-01-06 22:50:29', NULL, 'tb_menu', 'menu_id', 'core', 'eyJ0YWJsZV9kY4oIonR4Xil3bnU4LCJwcp3tYXJmXit3eSoIopl3bnVf6WQ4LCJzcWxfciVsZWN0oj24U0VMRUNUoHR4Xil3bnUuK4A5R3JPTSB0Y39tZWmloCosonNxbF9g6GVyZSoIo4BXSEVSRSB0Y39tZWmlLpl3bnVf6WQ5SVM5Tk9UoEmVTEw4LCJzcWxfZgJvdXA4O4o4LCJncp3koj1beyJp6WVsZCoIopl3bnVf6WQ4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokl3bnU5SWQ4LCJi6WVgoj24MCosopR3dGF1bCoIojA4LCJzbgJ0YWJsZSoIojE4LCJzZWFyYi54O4oxo4w4ZG9gbpxvYWQ4O4oxo4w4ZnJvepVuoj24MCosoph1ZGR3b4oIojA4LCJhbG3nb4oIopx3ZnQ4LCJg6WR06CoIojEwMCosonNvcnRs6XN0oj24MCosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIonBhcpVudF91ZCosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24UGFyZWm0oE3ko4w4dp33dyoIojE4LCJkZXRh6Ww4O4oxo4w4ci9ydGF4bGU4O4oxo4w4ciVhcpN2oj24MSosopRvdimsbiFkoj24MSosopZybg13b4oIojA4LCJ26WRkZWa4O4oxo4w4YWx1Zia4O4JsZWZ0o4w4di3kdG54O4oxMDA4LCJzbgJ0bG3zdCoIojE4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JtbiRlbGU4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIoklvZHVsZSosonZ1ZXc4O4oxo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTUwo4w4ci9ydGx1cgQ4O4ozo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24dXJso4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JVcpw4LCJi6WVgoj24MCosopR3dGF1bCoIojA4LCJzbgJ0YWJsZSoIojE4LCJzZWFyYi54O4oxo4w4ZG9gbpxvYWQ4O4oxo4w4ZnJvepVuoj24MCosoph1ZGR3b4oIojA4LCJhbG3nb4oIopx3ZnQ4LCJg6WR06CoIojEwMCosonNvcnRs6XN0oj24MyosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopl3bnVfbpFtZSosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24TWVudSBOYWl3o4w4dp33dyoIojE4LCJkZXRh6Ww4O4oxo4w4ci9ydGF4bGU4O4oxo4w4ciVhcpN2oj24MSosopRvdimsbiFkoj24MSosopZybg13b4oIojA4LCJ26WRkZWa4O4owo4w4YWx1Zia4O4JsZWZ0o4w4di3kdG54O4ozMDA4LCJzbgJ0bG3zdCoIojo4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JtZWmlXgRmcGU4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokl3bnU5VH3wZSosonZ1ZXc4O4owo4w4ZGV0YW3soj24MCosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTAwo4w4ci9ydGx1cgQ4O4olo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24cp9sZV91ZCosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24Up9sZSBJZCosonZ1ZXc4O4owo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTAwo4w4ci9ydGx1cgQ4O4oio4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24ZGV3cCosopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24RGV3cCosonZ1ZXc4O4owo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24MTAwo4w4ci9ydGx1cgQ4O4ogo4w4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OpZhbHN3LCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OpZhbHN3LCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fSw4dH3wZSoIonR3eHQ4fSx7opZ1ZWxkoj24bgJkZXJ1bpc4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIok9yZCosonZ1ZXc4O4oxo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosopFs6Wduoj24bGVpdCosond1ZHR2oj24NTA4LCJzbgJ0bG3zdCoIoj54LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JwbgN1dG3vb4osopFs6WFzoj24dGJfbWVudSosopxhYpVsoj24UG9z6XR1bia4LCJi6WVgoj24MCosopR3dGF1bCoIojA4LCJzbgJ0YWJsZSoIojE4LCJzZWFyYi54O4oxo4w4ZG9gbpxvYWQ4O4oxo4w4ZnJvepVuoj24MCosoph1ZGR3b4oIojA4LCJhbG3nb4oIopx3ZnQ4LCJg6WR06CoIojEwMCosonNvcnRs6XN0oj24OSosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0on0seyJp6WVsZCoIopl3bnVf6WNvbnM4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIo4BJYi9uo4w4dp33dyoIojE4LCJkZXRh6Ww4O4oxo4w4ci9ydGF4bGU4O4oxo4w4ciVhcpN2oj24MSosopRvdimsbiFkoj24MSosopZybg13b4oIojA4LCJ26WRkZWa4O4owo4w4YWx1Zia4O4JsZWZ0o4w4di3kdG54O4olMCosonNvcnRs6XN0oj24MTA4LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIZpFsciUsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIZpFsciUsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9LCJ0eXB3oj24dGVadCJ9LHs4Zp33bGQ4O4JhYgR1dpU4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokFjdG3iZSosonZ1ZXc4O4oxo4w4ZGV0YW3soj24MSosonNvcnRhYpx3oj24MSosonN3YXJj6CoIojE4LCJkbgdubG9hZCoIojE4LCJpcp9IZWa4O4owo4w46G3kZGVuoj24MCosond1ZHR2oj24NTA4LCJhbG3nb4oIopN3bnR3c4osonNvcnRs6XN0oj24NyosopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj1pYWxzZSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj1pYWxzZSw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fX0sonRmcGU4O4J0ZXh0onldLCJpbgJtcyoIWgs4Zp33bGQ4O4JtZWmlXi3ko4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JNZWmloE3ko4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3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bG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bWVudV90eXB3o4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JNZWmloFRmcGU4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoINSw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonJvbGVf6WQ4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIo3JvbGU5SWQ4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIN4w4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopR3ZXA4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIokR3ZXA4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoINyw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIop9yZGVy6Wmno4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JPcpR3cp3uZyosonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHQ4LCJhZGQ4O4oxo4w4ZWR1dCoIojE4LCJzZWFyYi54O4oxo4w4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2aLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24cG9z6XR1bia4LCJhbG3hcyoIonR4Xil3bnU4LCJsYWJ3bCoIo3Bvci306W9uo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjksopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JtZWmlXi3jbimzo4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JNZWmloE3jbimzo4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjEwLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YWN06XZ3o4w4YWx1YXM4O4J0Y39tZWmlo4w4bGF4ZWw4O4JBYgR1dpU4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIMTEsopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9XX0=', NULL);
INSERT INTO `tb_module` (`module_id`, `module_name`, `module_title`, `module_note`, `module_author`, `module_created`, `module_desc`, `module_db`, `module_db_key`, `module_type`, `module_config`, `module_lang`) VALUES
(8, 'pages', 'Pages CMS Management', 'View all static pages', 'Mango Tm', '2014-03-26 12:33:41', NULL, 'tb_pages', 'pageID', 'core', 'eyJ0YWJsZV9kY4oIonR4XgBhZiVzo4w4cHJ1bWFyeV9rZXk4O4JwYWd3SUQ4LCJzcWxfciVsZWN0oj24oFNFTEVDVCB0Y39wYWd3cyaqoEZST005dGJfcGFnZXM5o4w4cgFsXgd2ZXJ3oj24oFdoRVJFoHR4XgBhZiVzLnBhZiVJRCBJUyBOTlQ5T3VMTCosonNxbF9ncp9lcCoIo4osopZvcplzoj1beyJp6WVsZCoIonBhZiVJRCosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIo3BhZiVJRCosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2xLCJ0eXB3oj246G3kZGVuo4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojE4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24dG30bGU4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGF4ZWw4O4JU6XRsZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24M4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JubgR3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhYpVsoj24Tp90ZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj2wLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54OjAsonNvcnRs6XN0oj24OSosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JhbG3hcyosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIokFs6WFzo4w4Zp9ybV9ncp9lcCoIo4osonJ3cXV1cpVkoj24YWxwYSosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0o4w4YWRkoj2xLCJz6X13oj24MCosopVk6XQ4OjEsonN3YXJj6CoIojE4LCJzbgJ0bG3zdCoIojM4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4cpVz6X13Xgd1ZHR2oj24o4w4cpVz6X13Xih36Wd2dCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YgJ3YXR3ZCosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIokNyZWF0ZWQ4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIoph1ZGR3b4osopFkZCoIMSw4ZWR1dCoIMSw4ciVhcpN2oj24MSosonN1epU4O4o4LCJzbgJ0bG3zdCoIojc4LCJvcHR1bia4Ons4bgB0XgRmcGU4OpmlbGwsopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIbnVsbCw4bG9v6gVwXit3eSoIbnVsbCw4bG9v6gVwXgZhbHV3oj1udWxsLCJ1cl9kZXB3bpR3bpNmoj1udWxsLCJ1cl9tdWx06XBsZSoIbnVsbCw4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj1udWxsLCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj1udWxsLCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24dXBkYXR3ZCosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIo3VwZGF0ZWQ4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4owo4w4dp33dyoIMSw4dH3wZSoIoph1ZGR3b4osopFkZCoIMSw4ZWR1dCoIMSw4ciVhcpN2oj24MSosonN1epU4O4o4LCJzbgJ0bG3zdCoIoj54LCJvcHR1bia4Ons4bgB0XgRmcGU4OpmlbGwsopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIbnVsbCw4bG9v6gVwXit3eSoIbnVsbCw4bG9v6gVwXgZhbHV3oj1udWxsLCJ1cl9kZXB3bpR3bpNmoj1udWxsLCJ1cl9tdWx06XBsZSoIbnVsbCw4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj1udWxsLCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj1udWxsLCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24Zp3sZWmhbWU4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGF4ZWw4O4JG6Wx3bpFtZSosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIopFscGE4LCJi6WVgoj2xLCJ0eXB3oj24dGVadCosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4O4o0o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonN0YXRlcyosopFs6WFzoj24dGJfcGFnZXM4LCJsYWJ3bCoIo3N0YXRlcyosopZvcplfZgJvdXA4O4o4LCJyZXFl6XJ3ZCoIonJ3cXV1cpVko4w4dp33dyoIMSw4dH3wZSoIonR3eHQ4LCJhZGQ4OjEsonN1epU4O4owo4w4ZWR1dCoIMSw4ciVhcpN2oj24MSosonNvcnRs6XN0oj24NSosop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJyZXN1epVfdi3kdG54O4o4LCJyZXN1epVf6GV1Zih0oj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4JhYiN3cgM4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGF4ZWw4O4JBYiN3cgM4LCJpbgJtXidybgVwoj24o4w4cpVxdW3yZWQ4O4JyZXFl6XJ3ZCosonZ1ZXc4OjEsonRmcGU4O4J0ZXh0YXJ3YSosopFkZCoIMSw4ci3IZSoIojA4LCJ3ZG30oj2xLCJzZWFyYi54O4oxo4w4ci9ydGx1cgQ4O4oio4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonJ3ci3IZV9g6WR06CoIo4osonJ3ci3IZV92ZW3n6HQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopFsbG9gXidlZXN0o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhYpVsoj24QWxsbgc5RgV3cgQ4LCJsYWmndWFnZSoIWl0sonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHRhcpVho4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIOSw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonR3bXBsYXR3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhYpVsoj24VGVtcGxhdGU4LCJsYWmndWFnZSoIWl0sonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHRhcpVho4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIMTAsopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9XSw4ZgJ1ZCoIWgs4Zp33bGQ4O4JwYWd3SUQ4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JQYWd3SUQ4LCJi6WVgoj2wLCJkZXRh6Ww4OjAsonNvcnRhYpx3oj2wLCJzZWFyYi54OjEsopRvdimsbiFkoj2wLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oxo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIonR1dGx3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24VG30bGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oyo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopmvdGU4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JObgR3o4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JhbG3hcyosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIo3NsdWc4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4o0o4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIopZ1bGVuYWl3o4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24Rp3sZWmhbWU4LCJi6WVgoj2wLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4olo4w4Yi9ub4oIeyJiYWx1ZCoIo4osopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIonN0YXRlcyosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIo3N0YXRlcyosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojY4LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24YWNjZXNzo4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24QWNjZXNzo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4JjcpVhdGVko4w4YWx1YXM4O4J0Y39wYWd3cyosopxhbpdlYWd3oj17op3uoj24on0sopxhYpVsoj24QgJ3YXR3ZCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIoj54LCJjbimuoj17onZhbG3koj24o4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopF0dHJ1YnV0ZSoIeyJ2eXB3cpx1bps4Ons4YWN06XZ3oj2xLCJs6Wmroj24o4w4dGFyZiV0oj24o4w46HRtbCoIo4J9LCJ1bWFnZSoIeyJhYgR1dpU4OjAsonBhdG54O4o4LCJz6X13Xg54O4o4LCJz6X13Xgk4O4o4LCJ2dGlsoj24onl9fSx7opZ1ZWxkoj24YWxsbgdfZgV3cgQ4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JBbGxvdyBHdWVzdCosonZ1ZXc4OjAsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojk4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fX0seyJp6WVsZCoIonVwZGF0ZWQ4LCJhbG3hcyoIonR4XgBhZiVzo4w4bGFuZgVhZiU4Ons46Wa4O4o4fSw4bGF4ZWw4O4JVcGRhdGVko4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24OSosopNvbpa4Ons4dpFs6WQ4O4o4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4YXR0cp34dXR3oj17ophmcGVybG3u6yoIeyJhYgR1dpU4OjEsopx1bps4O4o4LCJ0YXJnZXQ4O4o4LCJ2dGlsoj24on0sop3tYWd3oj17opFjdG3iZSoIMCw4cGF06CoIo4osonN1epVfeCoIo4osonN1epVfeSoIo4osoph0bWw4O4o4fXl9LHs4Zp33bGQ4O4J0ZWlwbGF0ZSosopFs6WFzoj24dGJfcGFnZXM4LCJsYWmndWFnZSoIeyJ1b4oIo4J9LCJsYWJ3bCoIo3R3bXBsYXR3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MTA4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJhdHRy6WJldGU4Ons46H3wZXJs6Wmroj17opFjdG3iZSoIMSw4bG3u6yoIo4osonRhcpd3dCoIo4osoph0bWw4O4o4fSw46WlhZiU4Ons4YWN06XZ3oj2wLCJwYXR2oj24o4w4ci3IZV9aoj24o4w4ci3IZV9moj24o4w46HRtbCoIo4J9fXldfQ==', NULL),
(11, 'logs', 'Logs', 'Users Activity Log', 'Mango Tm', '2014-04-22 12:59:43', NULL, 'tb_logs', 'auditID', 'core', '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bHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24dGFz6yosopFs6WFzoj24dGJfbG9ncyosopxhYpVsoj24VGFz6yosonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHQ4LCJhZGQ4O4oxo4w4ZWR1dCoIojE4LCJzZWFyYi54O4oxo4w4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2lLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24bp90ZSosopFs6WFzoj24dGJfbG9ncyosopxhYpVsoj24Tp90ZSosonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHRhcpVho4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoINyw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopxvZiRhdGU4LCJhbG3hcyoIonR4XixvZgM4LCJsYWJ3bCoIokxvZiRhdGU4LCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0XiRhdGV06Wl3o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIOCw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fXldLCJncp3koj1beyJp6WVsZCoIopFlZG30SUQ4LCJhbG3hcyoIonR4XixvZgM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24QXVk6XRJRCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj246XBhZGRyZXNzo4w4YWx1YXM4O4J0Y39sbidzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIok3Qo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24MyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JlciVyXi3ko4w4YWx1YXM4O4J0Y39sbidzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3VzZXJzo4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NCosopNvbpa4Ons4dpFs6WQ4O4oxo4w4ZGo4O4J0Y39lciVycyosopt3eSoIop3ko4w4ZG3zcGxheSoIopZ1cnN0XimhbWV8ZWlh6Ww4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIoplvZHVsZSosopFs6WFzoj24dGJfbG9ncyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JNbiRlbGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4olo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIonRhcis4LCJhbG3hcyoIonR4XixvZgM4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VGFz6yosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojY4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj24bp90ZSosopFs6WFzoj24dGJfbG9ncyosopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JObgR3o4w4dp33dyoIMSw4ZGV0YW3soj2xLCJzbgJ0YWJsZSoIMSw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMSw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JsbidkYXR3o4w4YWx1YXM4O4J0Y39sbidzo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokRhdGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oyo4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24onldfQ==', NULL),
(50, 'notification', 'Notification', 'View My Notification', NULL, '2016-05-10 05:14:42', NULL, 'tb_notification', 'id', 'core', 'eyJzcWxfciVsZWN0oj24oFNFTEVDVCB0Y39ubgR1Zp3jYXR1biauK4BGUk9NoHR4XimvdG3p6WNhdG3vb4A4LCJzcWxfdih3cpU4O4o5V0hFUkU5dGJfbp906WZ1YiF06W9uLp3koE3ToEmPVCBOVUxMo4w4cgFsXidybgVwoj24o4w4dGF4bGVfZGo4O4J0Y39ubgR1Zp3jYXR1bia4LCJwcp3tYXJmXit3eSoIop3ko4w4Zp9ybXM4O3t7opZ1ZWxkoj246WQ4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhYpVsoj24SWQ4LCJsYWmndWFnZSoIWl0sonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHQ4LCJhZGQ4O4oxo4w4ZWR1dCoIojE4LCJzZWFyYi54O4oxo4w4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2wLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24dXN3cp3ko4w4YWx1YXM4O4J0Y39ubgR1Zp3jYXR1bia4LCJsYWJ3bCoIo3VzZXJ1ZCosopxhbpdlYWd3oj1bXSw4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjEsopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4Jlcpw4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhYpVsoj24VXJso4w4bGFuZgVhZiU4O3tdLCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIM4w4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIonR1dGx3o4w4YWx1YXM4O4J0Y39ubgR1Zp3jYXR1bia4LCJsYWJ3bCoIo3R1dGx3o4w4bGFuZgVhZiU4O3tdLCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoIMyw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIopmvdGU4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhYpVsoj24Tp90ZSosopxhbpdlYWd3oj1bXSw4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadGFyZWE4LCJhZGQ4O4oxo4w4ZWR1dCoIojE4LCJzZWFyYi54O4oxo4w4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj20LCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fSx7opZ1ZWxkoj24YgJ3YXR3ZCosopFs6WFzoj24dGJfbp906WZ1YiF06W9uo4w4bGF4ZWw4O4JDcpVhdGVko4w4bGFuZgVhZiU4O3tdLCJyZXFl6XJ3ZCoIojA4LCJi6WVgoj24MSosonRmcGU4O4J0ZXh0XiRhdGV06Wl3o4w4YWRkoj24MSosopVk6XQ4O4oxo4w4ciVhcpN2oj24MSosonN1epU4O4JzcGFuMTo4LCJzbgJ0bG3zdCoINSw4Zp9ybV9ncp9lcCoIo4osop9wdG3vb4oIeyJvcHRfdH3wZSoIo4osopxvbitlcF9xdWVyeSoIo4osopxvbitlcF90YWJsZSoIo4osopxvbitlcF9rZXk4O4o4LCJsbi9rdXBfdpFsdWU4O4o4LCJ1cl9kZXB3bpR3bpNmoj24o4w4bG9v6gVwXiR3cGVuZGVuYg3f6iVmoj24o4w4cGF06F90bl9lcGxvYWQ4O4o4LCJlcGxvYWRfdH3wZSoIo4osonRvbix06XA4O4o4LCJhdHRy6WJldGU4O4o4LCJ3eHR3bpRfYixhcgM4O4o4fX0seyJp6WVsZCoIop3jbia4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhYpVsoj24SWNvb4osopxhbpdlYWd3oj1bXSw4cpVxdW3yZWQ4O4owo4w4dp33dyoIojE4LCJ0eXB3oj24dGVadCosopFkZCoIojE4LCJ3ZG30oj24MSosonN3YXJj6CoIojE4LCJz6X13oj24cgBhbjEyo4w4ci9ydGx1cgQ4OjYsopZvcplfZgJvdXA4O4o4LCJvcHR1bia4Ons4bgB0XgRmcGU4O4o4LCJsbi9rdXBfcXV3cnk4O4o4LCJsbi9rdXBfdGF4bGU4O4o4LCJsbi9rdXBf6iVmoj24o4w4bG9v6gVwXgZhbHV3oj24o4w46XNfZGVwZWmkZWmjeSoIo4osopxvbitlcF9kZXB3bpR3bpNmXit3eSoIo4osonBhdGhfdG9fdXBsbiFkoj24o4w4dXBsbiFkXgRmcGU4O4o4LCJ0bi9sdG3woj24o4w4YXR0cp34dXR3oj24o4w4ZXh0ZWmkXiNsYXNzoj24onl9LHs4Zp33bGQ4O4J1cl9yZWFko4w4YWx1YXM4O4J0Y39ubgR1Zp3jYXR1bia4LCJsYWJ3bCoIok3zoFJ3YWQ4LCJsYWmndWFnZSoIWl0sonJ3cXV1cpVkoj24MCosonZ1ZXc4O4oxo4w4dH3wZSoIonR3eHQ4LCJhZGQ4O4oxo4w4ZWR1dCoIojE4LCJzZWFyYi54O4oxo4w4ci3IZSoIonNwYWaxM4osonNvcnRs6XN0oj2gLCJpbgJtXidybgVwoj24o4w4bgB06W9uoj17op9wdF90eXB3oj24o4w4bG9v6gVwXgFlZXJmoj24o4w4bG9v6gVwXgRhYpx3oj24o4w4bG9v6gVwXit3eSoIo4osopxvbitlcF9iYWxlZSoIo4osop3zXiR3cGVuZGVuYgk4O4o4LCJsbi9rdXBfZGVwZWmkZWmjeV9rZXk4O4o4LCJwYXR2XgRvXgVwbG9hZCoIo4osonVwbG9hZF90eXB3oj24o4w4dG9vbHR1cCoIo4osopF0dHJ1YnV0ZSoIo4osopVadGVuZF9jbGFzcyoIo4J9fV0sopdy6WQ4O3t7opZ1ZWxkoj246WQ4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JJZCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojE4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj24dXN3cp3ko4w4YWx1YXM4O4J0Y39ubgR1Zp3jYXR1bia4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24VXN3cp3ko4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24M4osopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4JjcpVhdGVko4w4YWx1YXM4O4J0Y39ubgR1Zp3jYXR1bia4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24RGF0ZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojM4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4JkYXR3o4w4Zp9ybWF0XgZhbHV3oj24R4BkLCBZon0seyJp6WVsZCoIonVybCosopFs6WFzoj24dGJfbp906WZ1YiF06W9uo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIo3VybCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojQ4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj24dG30bGU4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JU6XRsZSosonZ1ZXc4OjEsopR3dGF1bCoIMSw4ci9ydGF4bGU4OjEsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjEsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIojU4LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fSx7opZ1ZWxkoj24bp90ZSosopFs6WFzoj24dGJfbp906WZ1YiF06W9uo4w4bGFuZgVhZiU4O3tdLCJsYWJ3bCoIokmvdGU4LCJi6WVgoj2xLCJkZXRh6Ww4OjEsonNvcnRhYpx3oj2xLCJzZWFyYi54OjEsopRvdimsbiFkoj2xLCJpcp9IZWa4OjEsond1ZHR2oj24MTAwo4w4YWx1Zia4O4JsZWZ0o4w4ci9ydGx1cgQ4O4oio4w4Yi9ub4oIeyJiYWx1ZCoIojA4LCJkY4oIo4osopt3eSoIo4osopR1cgBsYXk4O4o4fSw4Zp9ybWF0XiFzoj24o4w4Zp9ybWF0XgZhbHV3oj24on0seyJp6WVsZCoIop3jbia4LCJhbG3hcyoIonR4XimvdG3p6WNhdG3vb4osopxhbpdlYWd3oj1bXSw4bGF4ZWw4O4JJYi9uo4w4dp33dyoIMCw4ZGV0YW3soj2wLCJzbgJ0YWJsZSoIMCw4ciVhcpN2oj2xLCJkbgdubG9hZCoIMCw4ZnJvepVuoj2xLCJg6WR06CoIojEwMCosopFs6Wduoj24bGVpdCosonNvcnRs6XN0oj24NyosopNvbpa4Ons4dpFs6WQ4O4owo4w4ZGo4O4o4LCJrZXk4O4o4LCJk6XNwbGFmoj24on0sopZvcplhdF9hcyoIo4osopZvcplhdF9iYWxlZSoIo4J9LHs4Zp33bGQ4O4J1cl9yZWFko4w4YWx1YXM4O4J0Y39ubgR1Zp3jYXR1bia4LCJsYWmndWFnZSoIWl0sopxhYpVsoj24SXM5UpVhZCosonZ1ZXc4OjAsopR3dGF1bCoIMCw4ci9ydGF4bGU4OjAsonN3YXJj6CoIMSw4ZG9gbpxvYWQ4OjAsopZybg13b4oIMSw4di3kdG54O4oxMDA4LCJhbG3nb4oIopx3ZnQ4LCJzbgJ0bG3zdCoIoj54LCJjbimuoj17onZhbG3koj24MCosopR4oj24o4w46iVmoj24o4w4ZG3zcGxheSoIo4J9LCJpbgJtYXRfYXM4O4o4LCJpbgJtYXRfdpFsdWU4O4o4fVl9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_notification`
--

CREATE TABLE `tb_notification` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` text,
  `created` datetime DEFAULT NULL,
  `icon` char(20) DEFAULT NULL,
  `is_read` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_notification`
--

INSERT INTO `tb_notification` (`id`, `userid`, `url`, `title`, `note`, `created`, `icon`, `is_read`) VALUES
(1, 1, NULL, 'Sample Notification', 'Sample Notification', '2016-05-10 19:19:11', NULL, '1'),
(6, 1, NULL, 'Please Read note', 'Edit Error , please fix it', '2016-05-10 12:54:40', NULL, '1'),
(7, 1, NULL, 'Please Read note', 'Edit Error , please fix it', '2016-05-10 12:55:05', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pages`
--

CREATE TABLE `tb_pages` (
  `pageID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status` enum('enable','disable') DEFAULT 'enable',
  `access` text,
  `allow_guest` enum('0','1') DEFAULT '0',
  `template` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_pages`
--

INSERT INTO `tb_pages` (`pageID`, `title`, `note`, `alias`, `created`, `updated`, `filename`, `status`, `access`, `allow_guest`, `template`) VALUES
(1, 'Homepage', NULL, 'home', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'home', 'enable', '{"1":"1","2":"1","3":"1"}', '1', 'frontend'),
(29, 'service', NULL, 'service', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'service', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend'),
(27, 'About Us', NULL, 'about-us', NULL, NULL, 'aboutus', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend'),
(26, 'Contact Us', NULL, 'contact-us', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'contactus', 'enable', '{"1":"1","2":"1","3":"1"}', '1', 'frontend'),
(35, 'FAQ', NULL, 'faq', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'faq', 'enable', '{"1":"1","2":"1","3":"1"}', '1', 'frontend'),
(36, 'Portpolio', NULL, 'portpolio', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'portpolio', 'enable', '{"1":"1","2":"0","3":"0"}', '1', 'frontend');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `group_id` int(6) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `login_attempt` tinyint(2) DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reminder` varchar(64) DEFAULT NULL,
  `activation` varchar(50) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `group_id`, `username`, `password`, `email`, `first_name`, `last_name`, `avatar`, `active`, `login_attempt`, `last_login`, `created_at`, `updated_at`, `reminder`, `activation`, `remember_token`) VALUES
(1, 1, 'superadmin', '5f4dcc3b5aa765d61d8327deb882cf99', 'superadmin@mail.com', 'Root', 'Admins', '1.jpg', 1, 12, '2014-09-09 03:09:05', '2014-03-12 23:18:46', '2014-12-27 22:48:15', 'SNLyM4Smv12Ck8jyopZJMfrypTbEDtVhGT5PMRzxs', NULL, 'NGUt7iSOmpo7b13qePf1Ij76DGyBR0xDzVIibr45Yg6mOPrhC5frajgLWm6S'),
(2, 2, 'mangopik', '21232f297a57a5a743894a0e4a801fc3', 'admin@mail.com', 'Admin', 'Web', '4.jpg', 1, NULL, '2014-08-16 12:55:50', '2014-04-14 11:49:59', NULL, NULL, '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tb_groups`
--
ALTER TABLE `tb_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tb_groups_access`
--
ALTER TABLE `tb_groups_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`auditID`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_module`
--
ALTER TABLE `tb_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `tb_notification`
--
ALTER TABLE `tb_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`pageID`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;
--
-- AUTO_INCREMENT for table `tb_groups`
--
ALTER TABLE `tb_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_groups_access`
--
ALTER TABLE `tb_groups_access`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT for table `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `auditID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_module`
--
ALTER TABLE `tb_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `tb_notification`
--
ALTER TABLE `tb_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `pageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
