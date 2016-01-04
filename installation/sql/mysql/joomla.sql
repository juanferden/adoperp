-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2015 at 10:37 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bt_education30_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_config`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_config`
--

INSERT INTO `#__acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '4.6.2'),
('from_name', 'BT Education'),
('from_email', 'admin@gmail.com'),
('mailer_method', 'mail'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_secured', ''),
('smtp_auth', '0'),
('smtp_username', ''),
('smtp_password', ''),
('reply_name', 'BT Education'),
('reply_email', 'admin@gmail.com'),
('cron_sendto', 'admin@gmail.com'),
('bounce_email', ''),
('add_names', '1'),
('encoding_format', '8bit'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '0'),
('embed_files', '1'),
('editor', 'acyeditor'),
('multiple_part', '1'),
('smtp_host', 'localhost'),
('smtp_port', ''),
('queue_nbmail', '40'),
('queue_nbmail_auto', '70'),
('queue_type', 'auto'),
('queue_try', '3'),
('queue_pause', '120'),
('allow_visitor', '1'),
('require_confirmation', '0'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
('uploadfolder', 'media/com_acymailing/upload'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1251990901'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '900'),
('cron_sendreport', '2'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savepath', 'media/com_acymailing/logs/report934875488.log'),
('notification_created', ''),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla!™ Marketing Campaign'),
('description_essential', 'Joomla!™ Marketing Campaign'),
('description_business', 'Joomla!™ Mailing Extension'),
('description_enterprise', 'Joomla!™ E-mail Marketing'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '1'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', 'default'),
('bootstrap_frontend', '0'),
('menu_position', 'above'),
('unsub_reasons', 'a:2:{i:0;s:21:"UNSUB_SURVEY_FREQUENT";i:1;s:21:"UNSUB_SURVEY_RELEVANT";}'),
('installcomplete', '1'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3'),
('website', 'http://localhost/bt_education30/'),
('module_redirect', 'localhost|10.0.0.71|10.0.0.72');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_fields`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) unsigned DEFAULT NULL,
  `frontlisting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`published`,`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__acymailing_fields`
--

INSERT INTO `#__acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1, 1, 0, 0, 0),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_filter`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_geolocation`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_geolocation` (
  `geolocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geolocation_subid` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) unsigned NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`geolocation_id`),
  KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_history`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_history` (
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) unsigned DEFAULT NULL,
  KEY `subid` (`subid`,`date`),
  KEY `dateindex` (`date`),
  KEY `actionindex` (`action`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_history`
--

INSERT INTO `#__acymailing_history` (`subid`, `date`, `ip`, `action`, `data`, `source`, `mailid`) VALUES
(4, 1415851969, '127.0.0.1', 'created', 'EXECUTED_BY::150 ( bowthemes )', 'HTTP_REFERER::http://localhost/bt_education30/administrator/index.php?option=com_users&view=user&layout=edit\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 6.1; WOW64; rv:33.0) Gecko/20100101 Firefox/33.0\nHTTP_HOST::localhost\nSERVER_ADDR::127.0.0.1\nREMOTE_ADDR::127.0.0.1\nREQUEST_URI::/bt_education30/administrator/index.php?option=com_users&layout=edit&id=0\nQUERY_STRING::option=com_users&layout=edit&id=0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_list`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) unsigned DEFAULT '0',
  `listid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`listid`),
  KEY `typeorderingindex` (`type`,`ordering`),
  KEY `useridindex` (`userid`),
  KEY `typeuseridindex` (`type`,`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__acymailing_list`
--

INSERT INTO `#__acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 151, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listcampaign`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_listcampaign` (
  `campaignid` smallint(5) unsigned NOT NULL,
  `listid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listmail`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_listmail` (
  `listid` smallint(5) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_listsub`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_listsub` (
  `listid` smallint(5) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `subdate` int(10) unsigned DEFAULT NULL,
  `unsubdate` int(10) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`),
  KEY `subidindex` (`subid`),
  KEY `listidstatusindex` (`listid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__acymailing_listsub`
--

INSERT INTO `#__acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1401847798, NULL, 1),
(1, 2, 1401847798, NULL, 1),
(1, 3, 1401847798, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_mail`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_mail` (
  `mailid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) unsigned DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`),
  KEY `typemailidindex` (`type`,`mailid`),
  KEY `useridindex` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__acymailing_mail`
--

INSERT INTO `#__acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`) VALUES
(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'New contact from your website : {user:email}', '<p>Hello {subtag:name},</p><p>A user has contacted you : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'A user confirm his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user has confirmed his subscription in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_confirm', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style="text-align: center; width: 100%; background-color: #ffffff;">\r\n			<table style="text-align:justify; margin:auto; background-color:#ebebeb; border:1px solid #e7e7e7" border="0" cellspacing="0" cellpadding="0" width="600" align="center" bgcolor="#ebebeb">\r\n			<tbody>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="38px"><img src="media/com_acymailing/templates/newsletter-4/top.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			<tr>\r\n			<td style="text-align:center" width="600">\r\n			<table style="margin:auto;" border="0" cellspacing="0" cellpadding="0" width="520">\r\n			<tbody>\r\n			<tr>\r\n			<td style="background-color: #ffffff; border: 1px solid #dbdbdb; padding: 20px; width: 500px; margin: 15px auto; text-align: left;">\r\n			<h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style="text-align:center;"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p>\r\n			</td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</td>\r\n			</tr>\r\n			<tr style="line-height: 0px;">\r\n			<td style="line-height: 0px;" height="40px"><img src="media/com_acymailing/templates/newsletter-4/bottom.png" border="0" alt=" - - - " /></td>\r\n			</tr>\r\n			</tbody>\r\n			</table>\r\n			</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_queue`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`,`mailid`),
  KEY `listingindex` (`senddate`,`subid`),
  KEY `mailidindex` (`mailid`),
  KEY `orderingindex` (`priority`,`senddate`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_rules`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_rules` (
  `ruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ruleid`),
  KEY `ordering` (`published`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_stats`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_stats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bouncedetails` text,
  PRIMARY KEY (`mailid`),
  KEY `senddateindex` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_subscriber`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) unsigned NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) unsigned NOT NULL DEFAULT '0',
  `lastsent_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`),
  KEY `queueindex` (`enabled`,`accept`,`confirmed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__acymailing_subscriber`
--

INSERT INTO `#__acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastopen_ip`, `lastclick_date`, `lastsent_date`) VALUES
(1, 'admin@gmail.com', 150, 'Bowthemes', 1401688449, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0),
(2, 'tamdt@vsmarttech.com', 151, 'Trong Tam', 1401694894, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0),
(3, 'abcd@gmail.com', 152, 'Kien', 1401775737, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0),
(4, 'hungtx@vsmarttech.com', 153, 'hungtx', 1415851969, 1, 1, 1, '127.0.0.1', 1, 'W6A0MaU4EMCWFD', 0, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_template`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_template` (
  `tempid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) unsigned DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) DEFAULT 'all',
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`),
  KEY `orderingindex` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__acymailing_template`
--

INSERT INTO `#__acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`) VALUES
(1, 'Notification template', '', '<div style="text-align: center; width: 100%; background-color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text" style="text-align:center">{readonline}This email contains graphics, so if you don''t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="text-align: justify; margin: auto; width:600px">\r\n	<tbody>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color: #69b4c0;" valign="bottom" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/top.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="acyeditor_text w520" colspan="3" height="80" style="text-align: left; background-color: rgb(235, 235, 235);" width="520"><img alt="-" src="media/com_acymailing/templates/newsletter-4/images/message_icon.png" style="float:left; margin-right:10px;" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class="acyeditor_picture w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="acyeditor_text w480 pict" style="background-color:#fff; text-align: left;" width="480">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color:#ebebeb;" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/bottom.png" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acyeditor_delete acyeditor_text" style="text-align:center">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-4', 'a:10:{s:6:"tag_h1";s:76:"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;";s:6:"tag_h2";s:106:"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;";s:6:"tag_h3";s:144:"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;";s:6:"tag_h4";s:117:"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;";s:5:"tag_a";s:71:"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;";s:19:"acymailing_readmore";s:90:"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;";s:17:"acymailing_online";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:16:"acymailing_unsub";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:8:"color_bg";s:7:"#ffffff";s:18:"acymailing_content";s:19:"text-align:justify;";}', NULL, 'div,table,p{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:320px){\r\n	table[class=w600], td[class=w600] { width: 320px !important;}\r\n	table[class=w520], td[class=w520] { width: 280px !important;}\r\n	table[class=w480], td[class=w480] { width: 260px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	table[class=w600], td[class=w600] { width: 480px !important;}\r\n	table[class=w520], td[class=w520] { width: 440px !important;}\r\n	table[class=w480], td[class=w480] { width: 420px !important;}\r\n	td[class=w40] { width: 20px !important;}\r\n	td[class=w20] { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width: 600px !important;}\r\n	table[class=w520], td[class=w520] { width: 520px !important;}\r\n	table[class=w480], td[class=w480] { width: 480px !important;}\r\n	td[class=w40] { width40px !important;}\r\n	td[class=w20] { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-4/newsletter-4.png', '', 'all'),
(2, 'Newspaper', '', '<div align="center" style="width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#454545;" width="600">\r\n		<tr>\r\n			<td class="w600">\r\n			<table border="0" cellpadding="0" cellspacing="0" class="w600" width="600">\r\n					<tr class="acyeditor_delete" >\r\n						<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n						<td class="acyeditor_text w540" style="font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left" width="540">&nbsp;\r\n						<h1><img alt="logo" src="media/com_acymailing/templates/newsletter-5/images/logo.png" style="float: right; width: 107px; height: 70px;" /></h1>\r\n\r\n						<h1>Your title here</h1>\r\n\r\n						<h3>your subtitle</h3>\r\n						</td>\r\n						<td class="w30" style="line-height:0px; background-color:#ffffff" width="30"></td>\r\n					</tr>\r\n					<tr class="acyeditor_delete">\r\n						<td class="w600" colspan="3" style="line-height:0px; background-color:#e4e4e4" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/header.png" /></td>\r\n					</tr>\r\n					<tr class="acyeditor_delete">\r\n						<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#ffffff" valign="top" width="600"><img alt="banner" src="media/com_acymailing/templates/newsletter-5/images/banner.png" /></td>\r\n					</tr>\r\n					<tr class="acyeditor_delete">\r\n						<td class="w600" colspan="3" style="line-height:0px;" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/separator.png" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n						<td class="acyeditor_text w540" style="text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff" width="540">\r\n						<h2>Interviews and reports</h2>\r\n						<span class="dark">Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</span><br />\r\n						consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi. <a href="#">Vivamus elementum</a>.Lorem ipsum dolor sit amet.<br />\r\n						<br />\r\n						cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n						<br />\r\n						<span class="acymailing_readmore">Read More</span><br />\r\n						&nbsp;\r\n						<h2>Journalism around the world</h2>\r\n						<span class="dark">Lorem ipsum dolor sit amet, consectLorem. consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum.</span> consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.ed elementum convallis mi.<br />\r\n						Vivamus elementum.<a href="#">Lorem ipsum dolor</a> sit amet.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />\r\n						<br />\r\n						<span class="acymailing_readmore">Read More</span></td>\r\n						<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n					</tr>\r\n					<tr style="line-height: 0px;">\r\n						<td class="w600" colspan="3" style="background-color:#ffffff" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer1.png" width="600" /></td>\r\n					</tr>\r\n					<tr>\r\n						<td class="acyfooter acyeditor_text w600" colspan="3" height="25" style="text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px" width="600"><a href="#">www.mywebsite.com</a> | <a href="#">contact</a> | <a href="#">Facebook</a> | <a href="#">Twitter</a></td>\r\n					</tr>\r\n					<tr style="line-height: 0px;">\r\n						<td class="w600" colspan="3" style="background-color:#454545;" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer2.png" width="600" /></td>\r\n					</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text">{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 2, 'newsletter-5', 'a:10:{s:6:"tag_h1";s:71:"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;";s:6:"tag_h2";s:145:"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;";s:6:"tag_h3";s:76:"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;";s:6:"tag_h4";s:67:"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px";s:5:"tag_a";s:65:"cursor:pointer; color:#9d0000; text-decoration:none; border:none;";s:19:"acymailing_readmore";s:152:"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;";s:17:"acymailing_online";s:148:"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;";s:8:"color_bg";s:7:"#454545";s:18:"acymailing_content";s:0:"";s:16:"acymailing_unsub";s:131:"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px";}', NULL, '.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p{font-family:"Times New Roman", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:320px){\r\n	table[class=w600], td[class=w600] { width:320px !important; }\r\n	table[class=w540], td[class=w540] { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important; }\r\n	table[class=w540], td[class=w540] { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important; }\r\n	table[class=w540], td[class=w540] { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img     {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-5/newsletter-5.png', '', 'all'),
(3, 'Build Bio', '', '<div align="center" style="width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#575757;" width="600">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" class="w600" width="600">\r\n				<tr class="acyeditor_delete">\r\n					<td class="w600" colspan="3" style="line-height:0px; background-color:#eeeeee" valign="bottom" width="600"><img alt="mail" height="41" src="media/com_acymailing/templates/newsletter-6/images/header.png" width="600" /></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete">\r\n					<td class="w30" style="color:#ffffff;" width="30"></td>\r\n					<td class="acyeditor_picture w540" style="line-height:0px; background-color:#ffffff; text-align:center" width="540"><img alt="" src="media/com_acymailing/templates/newsletter-6/images/banner.png" style="width: 540px; height: 122px;" /></td>\r\n					<td class="w30" height="122" style="background-color:#ffffff" width="30"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete">\r\n					<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n					<td class="acyeditor_text w540" height="25" style="text-align:right; background-color:#b9cf00; color:#ffffff;" width="540"><span class="hide">Newsletter</span> {date:3}</td>\r\n					<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class="w600" colspan="3" height="25" style="background-color:#ffffff" width="600"></td>\r\n				</tr>\r\n				<tr>\r\n					<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n					<td class="acyeditor_text w540" style="text-align:justify; color:#575757; background-color:#ffffff" width="540"><span class="intro">Hello {subtag:name},</span><br />\r\n					<br />\r\n					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum Vivamus elementum. sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi.\r\n					<h2>Day One</h2>\r\n					<strong>Lorem ipsum dolor sit amet, consectLorem ipsum dolor sit amet.</strong><br />\r\n					consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed <a href="#">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class="acymailing_readmore">Read More</span>\r\n\r\n					<h2>How to build a green house</h2>\r\n					<img alt="picture" height="160" src="media/com_acymailing/templates/newsletter-6/images/picture.png" style="float:left;" width="193" /> <strong>Lorem ipsum dolor sit amet, elit.</strong> Aenean sollicitudin orci sit amet . Sed <a href="#">elementum convallis</a> mi. Vivamus elementum.ed elementum convallis mi. Vivamus elementum.Lorem ipsum dolor sit amet.<br />\r\n					<br />\r\n					cLorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin orci sit amet urna lla pretium ut. Sed elementum convallis mi. Vivamus elementum.<br />\r\n					<br />\r\n					<span class="acymailing_readmore">Read More</span></td>\r\n					<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td>\r\n			<table border="0" cellpadding="0" cellspacing="0" class="w600" width="600">\r\n				<tr style="line-height: 0px;">\r\n					<td class="w600" colspan="3" style="line-height:0px; background-color:#efefef;" valign="top" width="600"><img alt="--" height="18" src="media/com_acymailing/templates/newsletter-6/images/footer1.png" width="600" /></td>\r\n				</tr>\r\n				<tr>\r\n					<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n					<td class="acyfooter acyeditor_text w540" style="text-align:right; background-color:#efefef; color:#575757;" width="540"><a href="#">www.mywebsite.com</a> | <a href="#">Contact</a><a href="#"><img alt="message" class="hide" src="media/com_acymailing/templates/newsletter-6/images/mail.png" style="border: medium none; width: 35px; height: 20px;" /></a></td>\r\n					<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n				</tr>\r\n				<tr style="line-height: 0px;">\r\n					<td class="w600" colspan="3" style="background-color:#efefef; line-height:0px;" valign="top" width="600"><img alt="--" height="24" src="media/com_acymailing/templates/newsletter-6/images/footer2.png" width="600" /></td>\r\n				</tr>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text" >{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 3, 'newsletter-6', 'a:9:{s:6:"tag_h1";s:69:"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;";s:6:"tag_h2";s:129:"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;";s:6:"tag_h3";s:149:"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;";s:6:"tag_h4";s:84:"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;";s:8:"color_bg";s:7:"#3c3c3c";s:5:"tag_a";s:65:"cursor:pointer; color:#a2b500; text-decoration:none; border:none;";s:17:"acymailing_online";s:91:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px";s:16:"acymailing_unsub";s:88:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px";s:19:"acymailing_readmore";s:73:"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;";}', NULL, 'table, div, p{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 320px){\r\n	table[class=w600], td[class=w600]  { width:320px !important; }\r\n	table[class=w540], td[class=w540]  { width:260px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600]  { width:480px !important; }\r\n	table[class=w540], td[class=w540]  { width:420px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600]  { width:600px !important; }\r\n	table[class=w540], td[class=w540]  { width:540px !important; }\r\n	td[class=w30] { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-6/newsletter-6.png', '', 'all'),
(4, 'Technology', '', '<div align="center" style="width:100%; background-color:#575757; padding-bottom:20px; color:#999999;">\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="background-color:#fff; color:#999999; margin:auto" width="600">\r\n	<tbody>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_online">{readonline}If you can''t see this e-mail properly, <span style="text-decoration:underline">view it online</span>{/readonline}</span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowtop.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/top.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text links w540" style="background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab" width="540"><a href="#"><img alt="mail" src="media/com_acymailing/templates/technology_resp/images/mail.jpg" style="float:right; border:none" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href="#">www.acyba.com</a> |</td>\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text w540" width="540"><img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic1.jpg" style="float:right" />\r\n			<h1>Fresh and technologic news !</h1>\r\n\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.</td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator1.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_text w540" style="background-color:#fafafa; color:#999999" width="540">\r\n			<h2>Choose your smartphone</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic2.jpg" style="float:left" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec<a href="#"> scelerisque quam</a>. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /><br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Choose your device</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic3.jpg" style="float:right" />\r\n			<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris massa quam, eleifend at ornare.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent auctor.<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator2.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text special w540" style="color:#999999" width="540">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt="read more" src="media/com_acymailing/templates/technology_resp/images/readmore.jpg" style="border:none" /></td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text w540" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab" valign="bottom" width="540">Follow us | <img alt="facebook" src="media/com_acymailing/templates/technology_resp/images/facebook.jpg" style="border:none" /> <img alt="twitter" src="media/com_acymailing/templates/technology_resp/images/twitter.jpg" style="border:none" /> <img alt="pinterest" src="media/com_acymailing/templates/technology_resp/images/pinterest.jpg" style="border:none" /> <img alt="rss" src="media/com_acymailing/templates/technology_resp/images/rss.jpg" style="border:none" /></td>\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/bottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_unsub">{unsubscribe}If you don''t want to receive our news anymore, <span style="text-decoration:underline">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '', NULL, 1, 0, 4, 'technology_resp', 'a:9:{s:6:"tag_h1";s:104:"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;";s:6:"tag_h2";s:165:"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;";s:6:"tag_h3";s:104:"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;";s:6:"tag_h4";s:0:"";s:8:"color_bg";s:7:"#575757";s:5:"tag_a";s:62:"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;";s:17:"acymailing_online";s:30:"color:#d2d1d1; cursor:pointer;";s:16:"acymailing_unsub";s:30:"color:#d2d1d1; cursor:pointer;";s:19:"acymailing_readmore";s:88:"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;";}', NULL, 'table, div, p {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:320px){\r\n	table[class=w600], td[class=w600] { width:320px !important;}\r\n	table[class=w540], td[class=w540] { width:260px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	table[class=w600], td[class=w600] { width:480px !important;}\r\n	table[class=w540], td[class=w540] { width:420px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	table[class=w600], td[class=w600] { width:600px !important;}\r\n	table[class=w540], td[class=w540] { width:540px !important;}\r\n	td[class=w30] { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/technology_resp/thumb.jpg', '', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_url`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`urlid`),
  KEY `url` (`url`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_urlclick`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(8) unsigned NOT NULL,
  `click` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`),
  KEY `dateindex` (`date`),
  KEY `mailidindex` (`mailid`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__acymailing_userstats`
--

CREATE TABLE IF NOT EXISTS `#__acymailing_userstats` (
  `mailid` mediumint(8) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL,
  `open` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mailid`,`subid`),
  KEY `senddateindex` (`senddate`),
  KEY `subidindex` (`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`) USING BTREE,
  KEY `idx_lft_rgt` (`lft`,`rgt`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 195, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 34, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 35, 36, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 37, 38, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 39, 40, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 41, 42, 1, 'com_login', 'com_login', '{}'),
(13, 1, 43, 44, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 45, 46, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 47, 48, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 49, 50, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 51, 52, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 53, 152, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 153, 156, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 157, 158, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 159, 160, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 161, 162, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 163, 164, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 165, 168, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 169, 172, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 173, 174, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 154, 155, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 170, 171, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 166, 167, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 175, 176, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 177, 178, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 179, 180, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 181, 182, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 183, 184, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 185, 186, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 54, 55, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 56, 57, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 58, 59, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 60, 61, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 62, 63, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 64, 65, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 66, 67, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 68, 69, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 70, 71, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 72, 73, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 74, 75, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 76, 77, 2, 'com_modules.module.16', 'Module login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 78, 79, 2, 'com_modules.module.17', 'Pathway', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 80, 81, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 82, 83, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 187, 188, 1, 'com_k2', 'com_k2', '{"core.admin":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(55, 18, 84, 85, 2, 'com_modules.module.87', 'K2 Comments', ''),
(56, 18, 86, 87, 2, 'com_modules.module.88', 'K2 Content', ''),
(57, 18, 88, 89, 2, 'com_modules.module.89', 'Tags module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 18, 90, 91, 2, 'com_modules.module.90', 'K2 Users', ''),
(59, 18, 92, 93, 2, 'com_modules.module.91', 'K2 User', ''),
(60, 18, 94, 95, 2, 'com_modules.module.92', 'K2 Quick Icons (admin)', ''),
(61, 18, 96, 97, 2, 'com_modules.module.93', 'K2 Stats (admin)', ''),
(63, 1, 189, 190, 1, 'com_kunena', 'com_kunena', '{}'),
(64, 18, 98, 99, 2, 'com_modules.module.94', 'BT Social Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 18, 100, 101, 2, 'com_modules.module.95', 'BT Background Scrolling', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(66, 18, 102, 103, 2, 'com_modules.module.96', 'BT Background SlideShow', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 18, 104, 105, 2, 'com_modules.module.97', 'What''s news?', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(68, 18, 106, 107, 2, 'com_modules.module.98', 'BT Google Maps', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 1, 191, 192, 1, 'com_bt_socialconnect', 'bt_socialconnect', '{}'),
(70, 18, 108, 109, 2, 'com_modules.module.99', 'BT Social Connect - Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(71, 18, 110, 111, 2, 'com_modules.module.100', 'BT Social Connect - Widget', ''),
(72, 18, 112, 113, 2, 'com_modules.module.101', 'Background slideshow content', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(73, 18, 114, 115, 2, 'com_modules.module.102', 'Head contact infor', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 18, 116, 117, 2, 'com_modules.module.103', 'Search', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 18, 118, 119, 2, 'com_modules.module.104', 'Why choose us?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 18, 120, 121, 2, 'com_modules.module.105', 'Userful links', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 18, 122, 123, 2, 'com_modules.module.106', 'About bt education', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 18, 124, 125, 2, 'com_modules.module.107', 'Who''s online?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 18, 126, 127, 2, 'com_modules.module.108', 'Contact now!', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(80, 18, 128, 129, 2, 'com_modules.module.109', 'Footer', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 18, 130, 131, 2, 'com_modules.module.110', 'Adv module image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(82, 18, 132, 133, 2, 'com_modules.module.111', 'Top social', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 8, 20, 33, 2, 'com_content.category.8', 'News Events', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(84, 83, 21, 22, 3, 'com_content.article.1', ' Nulla consequat mollis magna, et feugiat magna placerat', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 83, 23, 24, 3, 'com_content.article.2', 'Cum sociis natoque penatibus et magnis dis ', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(86, 83, 25, 26, 3, 'com_content.article.3', 'Curabitur non porttitor mauris, id bibendum turpis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(87, 18, 134, 135, 2, 'com_modules.module.112', 'What''s news? copy', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 18, 136, 137, 2, 'com_modules.module.113', 'Get in touch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(89, 83, 27, 28, 3, 'com_content.article.4', 'In id elit et metus tincidunt varius non ac tortor', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 83, 29, 30, 3, 'com_content.article.5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nec lacus luctus', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 83, 31, 32, 3, 'com_content.article.6', 'Vestibulum suscipit nunc non nunc hendrerit varius at vitae est', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 18, 138, 139, 2, 'com_modules.module.117', 'Archive', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 1, 193, 194, 1, 'com_acymailing', 'acymailing', '{}'),
(97, 18, 140, 141, 2, 'com_modules.module.118', 'Monthly Newsletter', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(118, 18, 142, 143, 2, 'com_modules.module.138', 'Our courses', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(120, 18, 144, 145, 2, 'com_modules.module.140', 'Language Switcher', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(122, 18, 146, 147, 2, 'com_modules.module.142', 'What''s news? (2)', ''),
(123, 18, 148, 149, 2, 'com_modules.module.143', 'What''s news? (3)', ''),
(124, 18, 150, 151, 2, 'com_modules.module.144', 'Showcase Bottom', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__associations`
--

CREATE TABLE IF NOT EXISTS `#__associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`) USING BTREE,
  KEY `idx_own_prefix` (`own_prefix`) USING BTREE,
  KEY `idx_metakey_prefix` (`metakey_prefix`) USING BTREE,
  KEY `idx_banner_catid` (`catid`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`) USING BTREE,
  KEY `idx_metakey_prefix` (`metakey_prefix`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`) USING BTREE,
  KEY `idx_track_type` (`track_type`) USING BTREE,
  KEY `idx_banner_id` (`banner_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_channels`
--

CREATE TABLE IF NOT EXISTS `#__bt_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `description` text,
  `params` text,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_connections`
--

CREATE TABLE IF NOT EXISTS `#__bt_connections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `social_id` varchar(255) NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `enabled_publishing` tinyint(4) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_messages`
--

CREATE TABLE IF NOT EXISTS `#__bt_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `message` text,
  `trigger` varchar(20) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `log` text,
  `event` int(11) NOT NULL,
  `scron` text,
  `schedule` varchar(250) NOT NULL,
  `sent_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `params` text,
  `chanel_id` int(11) NOT NULL,
  `message_type` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_users`
--

CREATE TABLE IF NOT EXISTS `#__bt_users` (
  `user_id` int(11) NOT NULL,
  `profile_link` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) NOT NULL,
  `favorite_quotes` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `profile_type` varchar(500) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__bt_users`
--

INSERT INTO `#__bt_users` (`user_id`, `profile_link`, `avatar`, `birthday`, `location`, `website`, `favorite_quotes`, `about`, `gender`, `city`, `company_name`, `store_name`, `first_name`, `last_name`, `profile_type`) VALUES
(150, '', '', '2014-11-25', 'VietNamese', 'hh', 'hh', '<p>description</p>', '', 'Liverpool', '123hjhjh', ' ', 'Bowthemes', 'BT ', '10'),
(151, '', '', '0000-00-00', NULL, '', '', '', '', '', '123', '', '', '', '11'),
(152, '', '', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '10'),
(153, '', '', '0000-00-00', NULL, '', '', '', '', '', 'test', 'gg', '', '', '11');

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_user_fields`
--

CREATE TABLE IF NOT EXISTS `#__bt_user_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `default_values` text,
  `ordering` int(11) DEFAULT NULL,
  `description` text,
  `required` tinyint(4) DEFAULT NULL,
  `show_registration` tinyint(4) DEFAULT NULL,
  `show_listing` tinyint(4) DEFAULT NULL,
  `facebook` text,
  `twitter` text,
  `google` text,
  `linkedin` text,
  `published` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `#__bt_user_fields`
--

INSERT INTO `#__bt_user_fields` (`id`, `name`, `alias`, `type`, `default_values`, `ordering`, `description`, `required`, `show_registration`, `show_listing`, `facebook`, `twitter`, `google`, `linkedin`, `published`) VALUES
(1, 'Profile link', 'profile_link', 'string', '', 8, '', 0, 1, 1, 'link', 'link', 'link', 'link', 0),
(2, 'Avatar', 'avatar', 'image', '', 6, '', 0, 1, 1, 'picture', 'picture', 'picture', 'picture', 0),
(3, 'Birthday', 'birthday', 'date', '', 9, '', 1, 1, 1, 'birthday', 'birthday', 'birthday', 'birthday', 0),
(4, 'Location', 'location', 'string', 'VietNamese', 10, '', 0, 1, 0, 'location', 'location', 'location', 'location', 0),
(5, 'Website', 'website', 'string', '', 13, '', 0, 1, 0, 'website', 'website', '', '', 0),
(6, 'Favorite quotes', 'favorite_quotes', 'string', '', 11, '', 0, 1, 0, 'quotes', 'quotes', '', 'quotes', 0),
(7, 'About', 'about', 'text', '<p>description</p>', 14, NULL, 1, 1, 1, '', '', '', '', 0),
(8, 'Gender', 'gender', 'dropdown', 'a:2:{s:5:"label";s:19:"-- Select Gender --";s:5:"value";a:2:{i:0;s:4:"male";i:1;s:6:"female";}}', 7, '', 0, 1, 1, '', '', '', '', 0),
(9, 'City', 'city', 'dropdown', 'a:2:{s:5:"label";s:17:"-- Select City --";s:5:"value";a:3:{i:0;s:8:"Chelsea";i:1;s:9:"Liverpool";i:2;s:7:"Asernal";}}', 12, '', 0, 1, 1, '', '', '', '', 0),
(13, 'Company Name', 'company_name', 'string', '', 2, '<p>Company Name</p>', 1, 1, 0, '', '', '', '', 1),
(14, 'Store Name', 'store_name', 'string', '', 3, '', 1, 1, 0, '', '', '', '', 1),
(15, 'First Name', 'first_name', 'string', '', 4, '', 1, 1, 1, '', '', '', '', 1),
(16, 'Last name', 'last_name', 'string', '', 5, '', 1, 1, 1, '', '', '', '', 1),
(17, 'Profile Type', 'profile_type', 'usergroup', 'a:3:{s:5:"group";a:3:{i:0;s:2:"10";i:1;s:2:"11";i:103;s:2:"12";}s:5:"field";a:2:{i:1;a:1:{i:0;s:12:"company_name";}i:103;a:1:{i:0;s:10:"store_name";}}s:5:"value";a:0:{}}', 1, '', 0, 1, 1, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__bt_widgets`
--

CREATE TABLE IF NOT EXISTS `#__bt_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `wgtype` varchar(255) NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `note` text,
  `params` text,
  `updated_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `#__bt_widgets`
--

INSERT INTO `#__bt_widgets` (`id`, `title`, `alias`, `wgtype`, `published`, `ordering`, `note`, `params`, `updated_time`) VALUES
(1, 'Facebook Commend box', 'facebook-commend', 'facebook_commend', 1, 2, '', '{"fbrendering":"html5","fbwidth":"470","fbnumber_post":"10","fbcolorscheme":"light","fborder_by":"social"}', '2013-08-29 04:16:33'),
(2, 'Twitter feed', 'twitter-feed', 'twitter_feed', 1, 1, '', '{"embed_code":"<a class=\\"twitter-timeline\\"  href=\\"https:\\/\\/twitter.com\\/BowThemes\\"  data-widget-id=\\"322965533848903680\\">Tweets by @BowThemes<\\/a>\\r\\n<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=\\/^http:\\/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\\":\\/\\/platform.twitter.com\\/widgets.js\\";fjs.parentNode.insertBefore(js,fjs);}}(document,\\"script\\",\\"twitter-wjs\\");<\\/script>\\r\\n","tweet-limit":"3","width":"","height":"","theme":"","link-color":"","border-color":"","noheader":"0","nofooter":"0","noborder":"0","noscrollbar":"0","transparent":"0"}', '2013-10-07 01:49:09'),
(3, 'Social share button', 'social-share-button', 'social_share', 1, 3, '', '{"add_button":"1","profile_id":"Your Profile ID","button_style":"lg-share-counter","facebook_share_button":"1","facebook_share_button_type":"","facebook_like":"1","facebook_sendbutton":"1","facebook_like_type":"button_count","facebook_like_width":"70","facebook_showface":"1","facebook_like_font":"arial","facebook_like_color":"light","facebook_like_action":"like","twitter":"1","twitter_name":"BowThemes","twitter_counter":"horizontal","twitter_size":"medium","twitter_language":"en","twitter_width":"80","bufferButton":"1","bufferType":"horizontal","bufferTwitterName":"BowThemes","googleplus":"1","google_plus_annotation":"bubble","google_plus_width":"120","google_plus_type":"20","linkedin":"1","linkedIn_type":"none","linkedIn_showzero":"1","linkedinfollow":"1","followcompany":"3129602","linkedInfollow_type":"right","linkedInfollow_showzero":"1","linkedin_recommend":"1","company_name":"Bowthemes","product_id":"201714","linkedInrecommend_type":"right","printeres":"1","pin_count":"beside","description":"","stumble":"1","stumble_type":"1","digg":"1","digg_type":"DiggCompact"}', '2013-10-07 01:50:35'),
(4, 'Google Interactive posts', 'google-interactive-posts', 'google_interactive_posts', 1, 4, '', '{"client_id":"306040699264","conten_url":"","cookiepolicy":"uri","gg_label":"CREATE","calltoactionurl":"http:\\/\\/plus.google.com\\/pages\\/create","calltoactiondeeplinkid":"","prefilltext":"Come learn about interactive posts with me!","button_text":"Invite your friends!","contentdeeplinkid":""}', '2013-08-27 09:02:44'),
(5, 'Login button', 'login-button', 'login_button', 1, 5, '', '{"buttonlogin":["all","facebook","twitter","google","linkedin"]}', '2013-09-09 04:12:49'),
(6, 'Facebook Recommendations bar', 'facebook-recommendations-bar', 'facebook_recommendations_bar', 1, 7, '', '{"rendering":"xfbml","fb_url":"https:\\/\\/www.facebook.com\\/bowthemes?fref=ts","fbtrigger":"X%","fbread_time":"30","fbflike_action":"like","fbside":"right","fbdomain":"","fbnum_recommendations":"2"}', '2013-09-18 04:19:30'),
(7, 'Facebook Embedded Posts', 'facebook-embedded-posts', 'facebook_embedded_post', 1, 8, '', '{"urlembed":"https:\\/\\/www.facebook.com\\/FacebookDevelopers\\/posts\\/10151471074398553"}', '2013-08-30 06:48:57'),
(8, 'Facebook Activity Feed', 'facebook-activity-feed', 'facebook_activityfeed', 1, 9, '', '{"fbdomain":"","fbRendering":"2","fbappid":"","fbaction":"","fbwidth":"300","fbheight":"300","fbshowheader":"true","fbcolorscheme":"light","fblinktarget":"_blank","fbfont":"","fbbordercolor":"","fbrecommendations":"false","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '2013-08-30 07:11:14'),
(9, 'Linkedin member profile', 'linkedin-member-profile', 'linkedin_memberprofile', 1, 10, '', '{"profile_url":"http:\\/\\/www.linkedin.com\\/pub\\/anh-thong\\/7b\\/377\\/b86","layout":"iconname","textname":"THong enino","event":"hover","connection":"true"}', '2013-09-09 06:57:32'),
(10, 'Linkedin company Insider', 'linkedin-company-insider', 'linkedin_company_insider', 1, 11, '', '{"company_id":"3129602","view":["innetwork","newhires","jobchanges"]}', '2013-09-11 03:06:09'),
(11, 'Linkedin company profile', 'linkedin-company-profile', 'linkedin_companyprofile', 1, 12, '', '{"company_name":"Bowthemes","layout":"inline","textname":"Vsmarttech","event":"click","connection":"false"}', '2013-09-11 03:08:09'),
(12, 'Linkedin Apply button', 'linkedin-apply-button', 'linkedin_apply_button', 1, 13, '', '{"company_id":"3129602","rcemail":"anhthonghn@gmail.com","jobtitle":"student","joblocation":"developer","companylogo":"http:\\/\\/bowthemes.com\\/templates\\/bowthemes\\/images\\/joomla_templates_logo.png","themecolor":"f08024","phone":"0"}', '2013-10-07 01:55:10'),
(13, 'Linkedin Build a Jobs', 'linkedin-build-a-jobs', 'linkedin_job', 1, 14, '', '{"job":"0","company_id":"3129602"}', '2013-09-09 10:34:00'),
(14, 'Facebook Facepile', 'facebook-facepile', 'facebook_facepile', 1, 15, '', '{"fbrendering":"html5","fburl":"http:\\/\\/facebook.com\\/FacebookDevelopers","fbaction":"30","fbnum_row":"30","fbsize":"large","fbshowcount":"true","fbwidth":"300","fbcolorscheme":"light"}', '2013-09-11 09:20:50'),
(15, 'Facebook Recommendations box', 'facebook-recommendations-box', 'facebook_recommendations_box', 1, 16, '', '{"fbrendering":"html5","fbdomain":"developers.facebook.com","fbapp_id":"","fbaction":"","fbwidth":"300","fbheight":"300","fbshowheader":"true","fbcolorscheme":"light","fblinktarget":"_blank","fbfont":"","fbmax_age":"0"}', '2013-10-07 01:37:50'),
(16, 'Facebook Like Box', 'facebook-like-box', 'facebook_likebox', 1, 17, '', '{"type":"likebox","profile":"","href":"http:\\/\\/www.facebook.com\\/bowthemes","width":"","height":"556","height_follow":"","layout":"standard","font":"","show_faces":"true","connections":"10","show_stream":"true","show_header":"true","force_wall":"false","colorscheme":"light","border_color":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', '2013-10-07 01:42:21'),
(17, 'Google Badge', 'google-badge', 'google_badge', 1, 18, '', '{"page_id":"110185082550651520481","badge_size":"badge","customize_name":"Bowthemes","alt_icon":"BowThemes Google plus Page","theme":"light","height":"69","width":"300","badge_tag":"htmlvalid","async":"1","parse_tags":"onload"}', '2013-10-07 01:43:47'),
(18, 'Google Comment', 'google-comment', 'google_comment', 1, 19, '', '{"width":"650"}', '2013-12-16 04:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`) USING BTREE,
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_path` (`path`) USING BTREE,
  KEY `idx_left_right` (`lft`,`rgt`) USING BTREE,
  KEY `idx_alias` (`alias`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 83, 1, 13, 14, 1, 'news-events', 'com_content', 'News Events', 'news-events', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 151, '2014-06-02 09:22:08', 151, '2014-06-02 09:25:30', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__community_oauth`
--

CREATE TABLE IF NOT EXISTS `#__community_oauth` (
  `userid` int(11) NOT NULL,
  `requesttoken` text NOT NULL,
  `accesstoken` text NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__community_photos`
--

CREATE TABLE IF NOT EXISTS `#__community_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL,
  `caption` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `status` varchar(200) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `albumid` (`albumid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__community_photos`
--

INSERT INTO `#__community_photos` (`id`, `albumid`, `caption`, `published`, `creator`, `permissions`, `image`, `thumbnail`, `original`, `filesize`, `storage`, `created`, `ordering`, `hits`, `status`, `params`) VALUES
(1, 1, 'cover-male-default.png', 1, 150, '', 'images/cover/profile/150/ba3d2e4f79f528ac8f96ef913c4d9518.png', 'images/cover/profile/150/thumb_ba3d2e4f79f528ac8f96ef913c4d9518.png', '', 75274, 'file', '2014-06-04 04:28:51', 0, 0, '', '{}'),
(2, 2, '2a024fdf8a840fb79afe7907', 1, 150, '0', 'images/photos/150/2/81a067d908db3fc9b7d0368c.jpg', 'images/photos/150/2/thumb_81a067d908db3fc9b7d0368c.jpg', 'images/originalphotos/150/2/81a067d908db3fc9b7d0368c.jpg', 0, 'file', '2014-06-04 04:32:37', 1, 1, 'ready', '{}'),
(3, 2, '7c39b9191e10953ea5e0bcae', 1, 150, '0', 'images/photos/150/2/530fa5937a4f706c51e50f5b.jpg', 'images/photos/150/2/thumb_530fa5937a4f706c51e50f5b.jpg', 'images/originalphotos/150/2/530fa5937a4f706c51e50f5b.jpg', 4096, 'file', '2014-06-04 04:32:38', 2, 1, 'ready', '{}'),
(4, 2, '7f2e00db4c9a421e5c609d62', 1, 150, '0', 'images/photos/150/2/d5a70d01599b12c764e6be0d.jpg', 'images/photos/150/2/thumb_d5a70d01599b12c764e6be0d.jpg', 'images/originalphotos/150/2/d5a70d01599b12c764e6be0d.jpg', 4096, 'file', '2014-06-04 04:32:39', 3, 1, 'ready', '{}'),
(5, 2, '95aaba0e66790974a26acd3c', 1, 150, '0', 'images/photos/150/2/e9443b80b5204474957cc5b6.jpg', 'images/photos/150/2/thumb_e9443b80b5204474957cc5b6.jpg', 'images/originalphotos/150/2/e9443b80b5204474957cc5b6.jpg', 4096, 'file', '2014-06-04 04:32:40', 4, 1, 'ready', '{}'),
(6, 2, '99a0c5ecd3f964c4805071a2', 1, 150, '0', 'images/photos/150/2/69c644d7cf6abaa12d036bcf.jpg', 'images/photos/150/2/thumb_69c644d7cf6abaa12d036bcf.jpg', 'images/originalphotos/150/2/69c644d7cf6abaa12d036bcf.jpg', 4096, 'file', '2014-06-04 04:32:40', 5, 1, 'ready', '{}'),
(7, 2, '173ef95743fe1fc4877ab56b', 1, 150, '0', 'images/photos/150/2/a3bd2f533a37782af9a8342e.jpg', 'images/photos/150/2/thumb_a3bd2f533a37782af9a8342e.jpg', 'images/originalphotos/150/2/a3bd2f533a37782af9a8342e.jpg', 4096, 'file', '2014-06-04 04:32:41', 6, 1, 'ready', '{}'),
(8, 2, '55944d651715aa5e272cbd0c', 1, 150, '0', 'images/photos/150/2/66586b0156d6e19f4f8da5a0.jpg', 'images/photos/150/2/thumb_66586b0156d6e19f4f8da5a0.jpg', 'images/originalphotos/150/2/66586b0156d6e19f4f8da5a0.jpg', 4096, 'file', '2014-06-04 04:32:42', 7, 0, 'ready', '{}'),
(9, 2, '6937595e53141a76933a7910', 1, 150, '0', 'images/photos/150/2/b8344426ee737b9245c1d996.jpg', 'images/photos/150/2/thumb_b8344426ee737b9245c1d996.jpg', 'images/originalphotos/150/2/b8344426ee737b9245c1d996.jpg', 4096, 'file', '2014-06-04 04:32:43', 8, 1, 'ready', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_state` (`published`) USING BTREE,
  KEY `idx_catid` (`catid`) USING BTREE,
  KEY `idx_createdby` (`created_by`) USING BTREE,
  KEY `idx_featured_catid` (`featured`,`catid`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE,
  KEY `idx_xreference` (`xreference`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__contact_details`
--

INSERT INTO `#__contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":"","contact_layout":"","show_email_form":"1","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2014-06-02 10:16:36', 151, '', '2014-06-02 10:26:14', 151, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 30);

-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_state` (`state`) USING BTREE,
  KEY `idx_catid` (`catid`) USING BTREE,
  KEY `idx_createdby` (`created_by`) USING BTREE,
  KEY `idx_featured_catid` (`featured`,`catid`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE,
  KEY `idx_xreference` (`xreference`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 84, ' Nulla consequat mollis magna, et feugiat magna placerat', 'nulla-consequat-mollis-magna-et-feugiat-magna-placerat', '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>\r\n', '\r\n<p> </p>\r\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', 1, 8, '2014-06-02 09:24:02', 151, '', '2014-06-02 09:28:16', 151, 0, '0000-00-00 00:00:00', '2014-06-02 09:24:02', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/slider1-960x430.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/blog\\/slider1-960x430.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 85, 'Cum sociis natoque penatibus et magnis dis ', 'cum-sociis-natoque-penatibus-et-magnis-dis', '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>\r\n', '\r\n<p> </p>\r\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', 1, 8, '2014-06-02 09:38:19', 151, '', '2014-06-02 09:38:28', 151, 0, '0000-00-00 00:00:00', '2014-06-02 09:38:19', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/01-stat-fort-uni-980x408.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/blog\\/01-stat-fort-uni-980x408.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(3, 86, 'Curabitur non porttitor mauris, id bibendum turpis', 'curabitur-non-porttitor-mauris-id-bibendum-turpis', '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>\r\n', '\r\n<p> </p>\r\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', 1, 8, '2014-06-02 09:39:53', 151, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-02 09:39:53', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/03-stat-fort-uni-980x408.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/blog\\/03-stat-fort-uni-980x408.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 89, 'In id elit et metus tincidunt varius non ac tortor', 'in-id-elit-et-metus-tincidunt-varius-non-ac-tortor', '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>\r\n', '\r\n<p> </p>\r\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', 1, 8, '2014-06-03 01:43:11', 151, '', '2014-06-03 01:44:54', 151, 0, '0000-00-00 00:00:00', '2014-06-03 01:43:11', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/05-stat-fort-uni-980x408.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/blog\\/05-stat-fort-uni-980x408.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 90, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nec lacus luctus', 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-in-nec-lacus-luctus', '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>\r\n', '\r\n<p> </p>\r\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', 1, 8, '2014-06-03 01:45:39', 151, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-03 01:45:39', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/06-stat-fort-uni-980x408.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/blog\\/06-stat-fort-uni-980x408.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 91, 'Vestibulum suscipit nunc non nunc hendrerit varius at vitae est', 'vestibulum-suscipit-nunc-non-nunc-hendrerit-varius-at-vitae-est', '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>\r\n', '\r\n<p> </p>\r\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', 1, 8, '2014-06-03 01:46:37', 151, '', '2015-06-11 07:52:08', 150, 0, '0000-00-00 00:00:00', '2014-06-03 01:46:37', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/07-stat-fort-uni-980x408.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"images\\/blog\\/07-stat-fort-uni-980x408.jpg","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `#__contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`) USING BTREE,
  KEY `idx_tag_type` (`tag_id`,`type_id`) USING BTREE,
  KEY `idx_date_id` (`tag_date`,`tag_id`) USING BTREE,
  KEY `idx_tag` (`tag_id`) USING BTREE,
  KEY `idx_type` (`type_id`) USING BTREE,
  KEY `idx_core_content_id` (`core_content_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__content_types`
--

CREATE TABLE IF NOT EXISTS `#__content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `#__content_types`
--

INSERT INTO `#__content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(11, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(12, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(13, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(14, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(15, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`) USING BTREE,
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`) USING BTREE,
  KEY `extension` (`type`,`element`,`folder`,`client_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10129 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"plain","show_name":"0","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_tags":"1","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"none","float_fulltext":"none","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"11":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"7b39c9edf1aa9281f3bb4e0da48a832c"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-03-11 11:59:00","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.2","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"1","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":",+a[*],+i[*],+em[*],+li[*],+span[*],+div[*],","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"strong_passwords":"1","autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"March 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(801, 'weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"April 3, 2015","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.4.8","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'COM_K2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!","group":"","filename":"k2"}', '{"enable_css":"1","jQueryHandling":"1.8remote","backendJQueryHandling":"remote","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"0","userFeedIcon":"0","userItemCount":"4","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"4","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","genericItemCount":"4","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"0","genericFeedIcon":"0","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"160","itemImageS":"390","itemImageM":"870","itemImageL":"870","itemImageXL":"870","itemImageGeneric":"870","catImageWidth":"160","catImageDefault":"1","userImageWidth":"160","userImageDefault":"1","commenterImgWidth":"57","onlineImageEditor":"splashup","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"1","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","antispam":"0","recaptchaForRegistered":"1","akismetForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","redirect":"141","adminSearch":"simple","cookieDomain":"","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","akismetApiKey":"","stopForumSpam":"0","stopForumSpamApiKey":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1","sh404SefLabelCat":"","sh404SefLabelUser":"blog","sh404SefLabelItem":"2","sh404SefTitleAlias":"alias","sh404SefModK2ContentFeedAlias":"feed","sh404SefInsertItemId":"0","sh404SefInsertUniqueItemId":"0","cbIntegration":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"PLG_FINDER_K2_DESCRIPTION","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":"","filename":"k2"}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Josetta - K2 Categories', 'plugin', 'k2category', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Categories","type":"plugin","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":"","filename":"k2category"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Josetta - K2 Items', 'plugin', 'k2item', 'josetta_ext', 0, 1, 1, 0, '{"name":"Josetta - K2 Items","type":"plugin","creationDate":"June 7th, 2012","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"","group":"","filename":"k2item"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"MOD_K2_COMMENTS_DESCRIPTION","group":"","filename":"mod_k2_comments.j25"}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":"","filename":"mod_k2_content.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","item":"","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_TOOLS","group":"","filename":"mod_k2_tools.j25"}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":"","filename":"mod_k2_users.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_MOD_K2_USER_DESCRIPTION","group":"","filename":"mod_k2_user.j25"}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":"","filename":"mod_k2_quickicons.j25"}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"December 8th, 2014","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.6.9","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":"","filename":"mod_k2_stats.j25"}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{"name":"plg_system_kunena","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_SYSTEM_KUNENA_DESC","group":"","filename":"kunena"}', '{"jcontentevents":"0","jcontentevent_target":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_kunena","type":"plugin","creationDate":"2015-04-05","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"PLG_QUICKICON_KUNENA_DESC","group":"","filename":"kunena"}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Kunena Media Files', 'file', 'kunena_media', '', 0, 1, 0, 0, '{"name":"Kunena Media Files","type":"file","creationDate":"2014-03-09","author":"Kunena Team","copyright":"(C) 2008 - 2013 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{"name":"com_kunena","type":"component","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"COM_KUNENA_XML_DESCRIPTION","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'Kunena Forum Package', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{"name":"Kunena Forum Package","type":"package","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"Kunena Forum Package.","group":"","filename":"pkg_kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'plg_kunena_alphauserpoints', 'plugin', 'alphauserpoints', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_alphauserpoints","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION","group":""}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10024, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_community","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_COMMUNITY_DESCRIPTION","group":""}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_points_limit":"0","activity_stream_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10025, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_comprofiler","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_COMPROFILER_DESCRIPTION","group":""}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10026, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_gravatar","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_GRAVATAR_DESCRIPTION","group":""}', '{"avatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10027, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_uddeim","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_UDDEIM_DESCRIPTION","group":""}', '{"private":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10028, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_kunena","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_KUNENA_DESCRIPTION","group":""}', '{"avatar":"1","profile":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10029, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_joomla","type":"plugin","creationDate":"2014-03-09","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.5","description":"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION","group":""}', '{"access":"1","login":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10030, 'BT_Education', 'template', 'bt_education', '', 0, 1, 1, 0, '{"name":"BT_Education","type":"template","creationDate":"25 April 2014","author":"Bowthemes.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"templates@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.0","description":"\\n\\t\\tBT Education template - Design by Bowthemes.com.\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
--(10031, 'definitions', 'plugin', 'definitions', 'josetta_ext', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
--(10032, 'fields_common', 'plugin', 'fields_common', 'josetta_ext', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
--(10033, 'definitions', 'plugin', 'definitions', 'josetta_ext', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
--(10034, 'fields_common', 'plugin', 'fields_common', 'josetta_ext', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10036, 'BT Background Scrolling', 'module', 'mod_bt_backgroundscrolling', '', 0, 1, 0, 0, '{"name":"BT Background Scrolling","type":"module","creationDate":"Jan 2014","author":"www.bowthemes.com","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"BT Background Scrolling","group":""}', '{"height":"300","speedFactor":"0.1","background":"","text":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'BT Background SlideShow', 'module', 'mod_bt_backgroundslideshow', '', 0, 1, 0, 0, '{"name":"BT Background SlideShow","type":"module","creationDate":"Apr 2012","author":"BowThemes","copyright":"Copyright \\u00a9 2012 Bow Themes","authorEmail":"bowthemes.com","authorUrl":"http:\\/\\/bowthemes.com","version":"2.4.11","description":"\\n        \\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>Module BT Background SlideShow Version 2.4.11<\\/h3>\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_backgroundslideshow\\/admin\\/images\\/btslideshow.png\\"><\\/a>\\n\\t\\t\\t<p align=\\"justify\\">\\n                  BT Background SlideShow is a perfect slideshow module for Joomla.\\n                  It allows you to easily display images with many flash type animations done in Javascript.\\n                  You can upload, import images, preview, order images from parameter module and fully configure with a lot of options.\\n                  BT Background SlideShow is compatible with Joomla 1.7, 2.5 and Joomla 3.x\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Extension features:<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n                            <li>Import images from different sources to gallery (Flickr album, Picasa Album, Joomla Folder, Phoca Gallery Component, JoomGallery component)<\\/li>\\n                            <li>Ability to upload, preview and order by drag and drop images from parameter<\\/li>\\n                            <li>Link image to  article or K2 component''s item\\n                            <li>Auto crop images and thumbnails<\\/li>\\n                            <li>Unlimited Image Slideshow<\\/li>\\n                            <li>Smooth fullscreen background slideshow<\\/li>\\n                            <li>Youtube video background<\\/li>\\n                            <li>Easiness to insert images links, captions and descriptions<\\/li>\\n                            <li>Be compatible with Joomla 1.7, 2.5 and Joomla 3.x<\\/li>\\n                            <li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n                            <li>Video tutorial and forum support provided\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Get APIs<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t    <li>Flickr: <a href=\\"https:\\/\\/www.flickr.com\\/services\\/apps\\/create\\/\\">https:\\/\\/www.flickr.com\\/services\\/apps\\/create\\/<\\/a><\\/li>\\n\\t\\t\\t    <li>Google (Youtube): <a href=\\"https:\\/\\/console.developers.google.com\\/project\\">https:\\/\\/console.developers.google.com\\/project<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is BT Background SlideShow 2.4.11. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/showcase\\/joomla-extensions.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t}\\n\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_backgroundslideshow\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n\\t","group":"","filename":"mod_bt_backgroundslideshow"}', '{"source":"upload","remote_image":"0","get_limit":"20","gallery":"","slideshowSize":"window","slideshowWidth":"","slideshowHeight":"","resizeImage":"auto","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"0","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"nav-btn","nex-back-button":"1","playpause-button":"1","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"center","nav-position":"fixed","progress-bar":"1","autoplay":"1","stopAuto":"1","shvideo":"1","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"1","videovolume":"100","wrapper_element":"body","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'BT Content Showcase', 'module', 'mod_bt_contentshowcase', '', 0, 1, 0, 0, '{"name":"BT Content Showcase","type":"module","creationDate":"June 2012","author":"www.bowthemes.com","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.4.4","description":"\\n\\t\\n<div class=\\"bt_description\\">\\n\\t<h3>BT Content Showcase Module Version 2.4.4<\\/h3>\\n\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img\\n\\t\\tsrc=\\"..\\/modules\\/mod_bt_contentshowcase\\/admin\\/images\\/bt-slider.png\\">\\n\\t<\\/a>\\n\\t<p>Helps to slide your articles from Joomla! categories with cool\\n\\t\\teffects, rich backend configs covering layout, animation control, auto\\n\\t\\tthumbnail creating, images resizing, numbering articles, sorting\\n\\t\\tect...<\\/p>\\n\\t<br clear=\\"both\\" \\/>\\n\\t<h3>Features<\\/h3>\\n\\t<ul class=\\"list-style\\">\\n\\t\\t<li>Compatibility with Joomla  1.6, 1.7, 2.5 and Joomla 3.x<\\/li>\\n\\t\\t<li>Content control display from any section, category or article ID''s<\\/li>\\n\\t\\t<li>Support for<a href=\\"http:\\/\\/getk2.org\\/\\"> K2 component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"joomla-extensions\\/bt-porfolio-component.html\\" target=\\"_blank\\" title=\\"Portfolio Joomla component\\">BT Portfolio component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"http:\\/\\/bit.ly\\/1baVxzb\\">EasyBlog Component<\\/a><\\/li>\\n\\t\\t<li>Scalable size of the module<\\/li>\\n\\t\\t<li>Horizontal and vertical news presentation (columns and rows configuration).<\\/li>\\n                <li>Scrolling and fading slide.<\\/li>\\n                <li>Powerful with two layouts Slide and Slide - Accordion<\\/li>\\n                <li>Control slide with next, back and navigation button<\\/li>\\n\\t\\t<li>Show text, image, author, date, section\\/category name and button \\"read more\\" option, with order customization.<\\/li>\\n\\t\\t<li>Image Cropping & Caching<\\/li>\\n\\t\\t<li>On\\/Off front page articles display in modules<\\/li>\\n\\t\\t<li>Easy and friendly back-end administration.<\\/li>\\n\\t\\t<li>Used Javascript Framework: Jquery latest version<\\/li>\\n\\t\\t<li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape, Google Chrome, Camino, Flock 0.7+.<\\/li>\\n        <li>Support Responsive Website<\\/li>\\n\\t<\\/ul>\\n\\t<h3>UPgrade versions<\\/h3>\\n\\t<p>\\n\\t\\tYour current versions is 2.4.4. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-content-showcase.html\\">Find our latest versions now<\\/a>\\n\\t<\\/p>\\n\\t<h3>Userful links<\\/h3>\\n\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bowthemes.com\\/bt-content-showcase.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/28-bt-content-showcase\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/28-bt-content-showcase\\/\\">Forum support<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<h3>About bow themes & copyright<\\/h3>\\n\\t<p>Bow Themes is Professional Joomla template provider. We are\\n\\t\\tfocused on creating unique, attractive and clean templates without\\n\\t\\tloosing flexibility and simplicity of customization<\\/p>\\n\\tCopyright (C) 2012 BowThemes\\n<\\/div>\\n\\t<style>\\n.bt_description{\\n\\ttext-align: left;\\n}\\n.bt_description h3 {\\n\\ttext-transform: uppercase;\\n\\tmargin: 20px 0px 10px 0px;\\n}\\n\\n.bt_description img {\\n\\tfloat: left;\\n\\tmargin: 5px 10px 5px 0px;\\n}\\n\\n.bt_description p,.bt_description li {\\n\\tpadding: 5px 5px 5px 30px;\\n\\tlist-style: none outside none;\\n}\\n\\n.bt_description ul.list-style li {\\n\\tbackground: url(..\\/modules\\/mod_bt_contentshowcase\\/admin\\/images\\/tick.png)\\n\\t\\t0px 6px no-repeat;\\n\\tpadding-left: 30px;\\n\\tline-height: 15px;\\n}\\n<\\/style>\\n\\n    ","group":"","filename":"mod_bt_contentshowcase"}', '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"default","GRID_SETTING":"GRID_SETTING","module_width":"640","item_height":"300","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","NAVIGATION_SETTING":"NAVIGATION_SETTING","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":"","btportfolio_category":"","easyblog_article_ids":"","auto_category":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","title_option":"TITLE_OPTION","show_title":"1","limit_title_by":"word","title_max_chars":"8","intro_text_option":"INTRO_TEXT_OPTION","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"1","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","image_option":"IMAGE_OPTION","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","default_thumb":"1","touchscreen":"0","bn_effect":"slide","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":"","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'BT Google Maps', 'module', 'mod_bt_googlemaps', '', 0, 1, 0, 0, '{"name":"BT Google Maps","type":"module","creationDate":"Jun 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.0.11","description":"\\n\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Google Maps Module Version 2.0.11<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/mod_bt_googlemaps.png\\"><\\/a>\\n\\t\\t\\t<p>Bring google maps to your website by the simplest & easiest way. Using Google Maps version 3 services, BT Google Maps support you input both Address and Coordinate, create your custom marker with title, images, description...\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Google Maps Version 3 (Latest)<\\/li>\\n\\t\\t\\t\\t<li>Support both input types: Address and Coordinate <\\/li>\\n\\t\\t\\t\\t<li>Retrieving lat\\/long of location using Geocoder<\\/li>\\n\\t\\t\\t\\t<li>Auto-Detect Language<\\/li>\\n\\t\\t\\t\\t<li>Streetview, MapOverview, ZoomControl, PanControl, ScaleControl, MapTypeControl<\\/li>\\n\\t\\t\\t\\t<li>Support Multiple Marker( Easy customize title, icon, shadow, description popup)<\\/li>\\n\\t\\t\\t\\t<li>Weather & cloud layers<\\/li>\\n\\t\\t\\t\\t<li>Support custom map style<\\/li>\\n\\t\\t\\t\\t<li>Support custom inforwindow style<\\/li>\\n\\t\\t\\t\\t<li>Multiple module instances<\\/li>\\t\\n\\t\\t\\t\\t<li>The configuration is very easy and simple<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 1.6, 1.7, 2.5 & Joomla 3.x<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 2.0.11. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t","group":"","filename":"mod_bt_googlemaps"}', '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"350","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'BT_SocialConnect', 'component', 'com_bt_socialconnect', '', 1, 1, 0, 0, '{"name":"BT_SocialConnect","type":"component","creationDate":"January 2014","author":"Bowthemes","copyright":"Copyright (C) 2014 BowThemes.com. All rights reserved.","authorEmail":"support@BowThemes.com","authorUrl":"http:\\/\\/www.BowThemes.com\\/","version":"1.2.3","description":"Thank you for installing BT Social Connect v1.2.2 by Bowthemes, the powerful social extension for Joomla!","group":"","filename":"bt_socialconnect"}', '{"fbactive":"1","fbappId":" ","fbsecret":"","fbregister":"automatic","ggactive":"1","ggappId":" ","ggsecret":"","ggregister":"automatic","ttactive":"1","ttappId":" ","ttsecret":"","ttregister":"automatic","linkactive":"1","linkappId":" ","linksecret":"","linkregister":"automatic","remove_user":"1","ignore_activate":"1","userautologin":"1","loginredirection":"","logoutredirection":"","fbuserautologin":"0","usernametype":"auto","show-boxtip":0,"enabled_publishing":"1","count_post":"1","shorturl":"none","bitly_login":"","bitly_apikey":"","google_apikey":"","cropthumb":"0","thumbwidth":"180","thumbheight":"110","enabled_cronjobs":"0","schedule":"","timezone":"Europe\\/London","taskcron":"","limitscron":"5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'BT AutoSubmit - Content', 'plugin', 'bt_autosubmit_content', 'content', 0, 1, 1, 0, '{"name":"BT AutoSubmit - Content","type":"plugin","creationDate":"January 2014","author":"BowThemes","copyright":"Copyright (C) 2014 BowThemes.com. All rights reserved.","authorEmail":"support@BowThemes.com","authorUrl":"http:\\/\\/www.BowThemes.com\\/","version":"1.0.0","description":"BT Social Connect Plugin for Com Content","group":"","filename":"bt_autosubmit_content"}', '{"template":"{authorname} has created article {shorturl}","des_template":"{introtext:500}","conten_categories":"0","channel":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'BT AutoSubmit - Registration', 'plugin', 'bt_autosubmit_registration', 'user', 0, 1, 1, 0, '{"name":"BT AutoSubmit - Registration","type":"plugin","creationDate":"January 2014","author":"Bowthemes","copyright":"(C) 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Send a message to user social profile when registration success","group":"","filename":"bt_autosubmit_registration"}', '{"wellcome":"{name} has registered at {site_url}","logourl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'BT Social Connect - System', 'plugin', 'bt_socialconnect_system', 'system', 0, 1, 1, 0, '{"name":"BT Social Connect - System","type":"plugin","creationDate":"January 2014","author":"Bowthemes","copyright":"Copyright (C) 2014 BowThemes.com. All rights reserved.","authorEmail":"support@BowThemes.com","authorUrl":"http:\\/\\/www.BowThemes.com\\/","version":"1.0.0","description":"This is system plugin of BT Social Connect","group":"","filename":"bt_socialconnect_system"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'BT Social Connect - User', 'plugin', 'bt_socialconnect_user', 'user', 0, 1, 1, 0, '{"name":"BT Social Connect - User","type":"plugin","creationDate":"October 2013","author":"Bowthemes","copyright":"(C) 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Plugin support send message when user registed","group":"","filename":"bt_socialconnect_user"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'BT Widget - Button', 'plugin', 'bt_widget_button', 'editors-xtd', 0, 1, 1, 0, '{"name":"BT Widget - Button","type":"plugin","creationDate":"October 2013","author":"Bowthemes","copyright":"Copyright \\u00a9 2012 Bow Themes","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Add widget button to editor","group":"","filename":"bt_widget_button"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'BT Social Connect - Login', 'module', 'mod_btsocialconnect_login', '', 0, 1, 0, 0, '{"name":"BT Social Connect - Login","type":"module","creationDate":"August 2013","author":"BowThemes","copyright":"Copyright (C) 2013 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"The login & registration module for BT Social Connect","group":"","filename":"mod_btsocialconnect_login"}', '{"align_option":"right","display_type":"0","mouse_event":"click","logout_button":"1","enabled_registration_tab":"1","tag_login_modal":"","tag_register_modal":"","loginbox_size":"300","registrationbox_size":"425","login":"","logout":"","name":"0","avatar":"1","module_id":"19","module_position":"0","usesecure":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'BT Social Connect - Widget', 'module', 'mod_btsocialconnect_widget', '', 0, 1, 0, 0, '{"name":"BT Social Connect - Widget","type":"module","creationDate":"October 2013","author":"BowThemes","copyright":"Copyright (C) 2013 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Displaying widgets for BT Social Connect component","group":"","filename":"mod_btsocialconnect_widget"}', '{"label":"","widget":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
--(10051, 'acymailing', 'component', 'com_acymailing', '', 1, 1, 0, 0, '{"name":"AcyMailing","type":"component","creationDate":"avril 2014","author":"Acyba","copyright":"Copyright (C) 2009-2014 ACYBA SARL - All rights reserved.","authorEmail":"dev@acyba.com","authorUrl":"http:\\/\\/www.acyba.com","version":"4.6.2","description":"Manage your Mailing lists, Newsletters, e-mail marketing campaigns","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'AcyMailing : trigger Joomla Content plugins', 'plugin', 'contentplugin', 'acymailing', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(10053, 'AcyMailing Manage text', 'plugin', 'managetext', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10054, 'AcyMailing Tag : Website links', 'plugin', 'online', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10055, 'AcyMailing : share on social networks', 'plugin', 'share', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10056, 'AcyMailing : Statistics Plugin', 'plugin', 'stats', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10057, 'AcyMailing table of contents generator', 'plugin', 'tablecontents', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10058, 'AcyMailing Tag : CB User information', 'plugin', 'tagcbuser', 'acymailing', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10059, 'AcyMailing Tag : content insertion', 'plugin', 'tagcontent', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10060, 'AcyMailing Tag : Subscriber information', 'plugin', 'tagsubscriber', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10061, 'AcyMailing Tag : Manage the Subscription', 'plugin', 'tagsubscription', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10062, 'AcyMailing Tag : Date / Time', 'plugin', 'tagtime', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10063, 'AcyMailing Tag : Joomla User Information', 'plugin', 'taguser', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10064, 'AcyMailing Template Class Replacer', 'plugin', 'template', 'acymailing', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 25, 0),
(10065, 'AcyMailing Editor', 'plugin', 'acyeditor', 'editors', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10066, 'AcyMailing : (auto)Subscribe during Joomla registration', 'plugin', 'regacymailing', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'AcyMailing Module', 'module', 'mod_acymailing', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10079, 'Kunena Groups', 'plugin', 'kunenagroups', 'community', 0, 0, 1, 0, '{"name":"Kunena Groups","type":"plugin","creationDate":"2012-11-24","author":"Kunena Team","copyright":"(C) 2008 - 2012 Kunena Team. All rights reserved.","authorEmail":"admin@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.3","description":"PLG_COMMUNITY_KUNENAGROUPS_DESCRIPTION","group":""}', '{"coreapp":"1","category_mapping":"","default_category":"0","allow_categories":"","deny_categories":"","position":"content|sidebar-top|sidebar-bottom"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10080, 'My Forum Menu', 'plugin', 'kunenamenu', 'community', 0, 0, 1, 0, '{"name":"My Forum Menu","type":"plugin","creationDate":"2012-11-24","author":"Kunena Team","copyright":"(C) 2008 - 2012 Kunena Team. All rights reserved.","authorEmail":"admin@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.3","description":"PLG_COMMUNITY_KUNENAMENU_DESCRIPTION","group":""}', '{"coreapp":"0","sh_editprofile":"1","sh_myprofile":"1","sh_myposts":"1","sh_mysubscriptions":"1","sh_myfavorites":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10081, 'My Forum Posts', 'plugin', 'mykunena', 'community', 0, 0, 1, 0, '{"name":"My Forum Posts","type":"plugin","creationDate":"2012-11-24","author":"Kunena Team","copyright":"(C) 2008 - 2012 Kunena Team. All rights reserved.","authorEmail":"admin@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"2.0.3","description":"PLG_COMMUNITY_MYKUNENA_DESCRIPTION","group":""}', '{"count":"5","coreapp":"0","cache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10111, 'CzechCzechRepublic', 'language', 'cs-CZ', '', 0, 1, 0, 0, '{"name":"Czech (Czech Republic)","type":"language","creationDate":"2015-03-09","author":"Joomla! Czech Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.cz","authorUrl":"www.joomlaportal.cz","version":"3.4.1.1","description":"cs-CZ site language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10112, 'CzechCzechRepublic', 'language', 'cs-CZ', '', 1, 1, 0, 0, '{"name":"Czech (Czech Republic)","type":"language","creationDate":"2015-03-09","author":"Joomla! Czech Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.cz","authorUrl":"www.joomlaportal.cz","version":"3.4.1.1","description":"cs-CZ administrator language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10113, 'Czech Language Pack', 'package', 'pkg_cs-CZ', '', 0, 1, 1, 0, '{"name":"Czech Language Pack","type":"package","creationDate":"2015-03-09","author":"Czech Joomla Translation Team","copyright":"","authorEmail":"admin@joomla.cz","authorUrl":"www.joomlaportal.cz","version":"3.4.1.1","description":"Joomla! 3.4.1 Full Czech (cs-CZ) Language Package - Version 3.4.1v1","group":"","filename":"pkg_cs-CZ"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10114, 'NederlandsNL', 'language', 'nl-NL', '', 0, 1, 0, 0, '{"name":"Nederlands (NL)","type":"language","creationDate":"2015-03-22","author":"Dutch Translation Team","copyright":"Copyright (C) 2005 - 2015 Dutch Translation Team en Open Source Matters. All rights reserved.","authorEmail":"taal@joomlacommunity.eu","authorUrl":"http:\\/\\/joomlacode.org\\/gf\\/project\\/nederlands\\/","version":"3.4.1.1","description":"Nederlands taalbestand Joomla! 3.5 (site)","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10115, 'NederlandsNL', 'language', 'nl-NL', '', 1, 1, 0, 0, '{"name":"Nederlands (NL)","type":"language","creationDate":"2015-03-22","author":"Dutch Translation Team","copyright":"Copyright (C) 2005 - 2015 Dutch Translation Team en Open Source Matters. All rights reserved.","authorEmail":"taal@joomlacommunity.eu","authorUrl":"http:\\/\\/joomlacode.org\\/gf\\/project\\/nederlands\\/","version":"3.4.1.1","description":"Nederlands taalbestand Joomla! 3.4 (beheergedeelte)","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10116, 'Dutch Language Pack', 'package', 'pkg_nl-NL', '', 0, 1, 1, 0, '{"name":"Dutch Language Pack","type":"package","creationDate":"2015-03-22","author":"Dutch Translation Team","copyright":"","authorEmail":"","authorUrl":"","version":"3.4.1.1","description":"3.4 Joomla Dutch Language Package","group":"","filename":"pkg_nl-NL"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10117, 'French_fr-FR', 'language', 'fr-FR', '', 0, 1, 0, 0, '{"name":"French_fr-FR","type":"language","creationDate":"01\\/04\\/2015","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2015 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.4.1.2","description":"fr-FRsite language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10118, 'French_fr-FR', 'language', 'fr-FR', '', 1, 1, 0, 0, '{"name":"French_fr-FR","type":"language","creationDate":"01\\/04\\/2015","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2015 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.4.1.2","description":"fr-FRsite language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10119, 'French_fr-FR', 'package', 'pkg_fr-FR', '', 0, 1, 1, 0, '{"name":"French_fr-FR","type":"package","creationDate":"01\\/04\\/2015","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2015 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.4.1.2","description":"<div style=\\"text-align:left;\\">\\n<h3>Joomla! 3.4.1 Full French (fr-FR) Language Package - Version 3.4.1v2<\\/h3>\\n<h3>Paquet de langue Joomla! 3.4.1 fran\\u00e7ais (fr-FR) complet - Version 3.4.1v2<\\/h3>\\n<\\/div>","group":"","filename":"pkg_fr-FR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10120, 'GermanDE-CH-AT', 'language', 'de-DE', '', 0, 1, 0, 0, '{"name":"German (DE-CH-AT)","type":"language","creationDate":"23.03.2015","author":"J!German","copyright":"Copyright (C) 2008 - 2015 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.4.1.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Frontend (Website)-\\u00dcbersetzung f\\u00fcr Joomla! 3.4.1\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Frontend (Website) translation for Joomla! 3.4.1\\n    ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10121, 'GermanDE-CH-AT', 'language', 'de-DE', '', 1, 1, 0, 0, '{"name":"German (DE-CH-AT)","type":"language","creationDate":"23.03.2015","author":"J!German","copyright":"Copyright (C) 2008 - 2015 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.4.1.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Backend (Administrator)-\\u00dcbersetzung f\\u00fcr Joomla! 3.4.1\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Backend (Administrator) translation for Joomla! 3.4.1\\n    ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10122, 'German Language Pack', 'package', 'pkg_de-DE', '', 0, 1, 1, 0, '{"name":"German Language Pack","type":"package","creationDate":"23.03.2015","author":"J!German","copyright":"","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.4.1.1","description":"\\n    <div style=\\"text-align: center;\\">\\n      <h2>Deutsches \\u201eFull\\u201c-Sprachpaket f\\u00fcr Joomla! 3.4.1 von <a title=\\"J!German\\" href=\\"http:\\/\\/www.jgerman.de\\" target=\\"_blank\\">J!German<\\/a><\\/h2>\\n      <h3><span style=\\"color: #008000;\\">\\u00dcbersetzungsversion: 3.4.1v1<\\/span><\\/h3>\\n      <hr \\/>\\n      <table rules=\\"all\\" frame=\\"border\\" style=\\"width: 90%; border-color: #000000; border-width: 1px; border-style: solid;\\" align=\\"center\\" border=\\"1\\">\\n      <colgroup> <col width=\\"30%\\" \\/> <col width=\\"60\\" \\/> <\\/colgroup>\\n      <tbody>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Frontend (Website)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td rowspan=\\"2\\">\\n            <ul>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Legen Sie die deutsche Sprache unter <a title=\\"Language Manager\\" href=\\"index.php?option=com_languages\\" target=\\"_blank\\">\\u201eExtensions\\u201c \\u2192 \\u201eLanguage Manager\\u201c<\\/a> als Standardsprache (\\u201eDefault\\u201c), sowohl f\\u00fcr die Website (\\u201eInstalled - Site\\u201c) als auch f\\u00fcr die Administration (\\u201eInstalled - Administrator\\u201c), fest.\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Aktualisierung:<\\/span>\\n                <br \\/>\\n                Es sind keine weiteren Schritte erforderlich.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Backend (Administrator)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n      <\\/tbody>\\n      <\\/table>\\n      <br \\/>\\n      <span style=\\"text-decoration: underline;\\">Hinweis:<\\/span> Dieses Paket unterst\\u00fctzt die Joomla! eigene <a title=\\"Joomla!-Aktualisierungsfunktion\\" href=\\"index.php?option=com_installer&amp;view=update\\" target=\\"_blank\\">Aktualisierungsfunktion<\\/a>!\\n    <\\/div>\\n    ","group":"","filename":"pkg_de-DE"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10127, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{"name":"Kunena Framework","type":"library","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"Kunena Framework.","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
--(10128, 'Kunena Media Files', 'file', 'KunenaMediaFiles', '', 0, 1, 0, 0, '{"name":"Kunena Media Files","type":"file","creationDate":"2015-04-05","author":"Kunena Team","copyright":"(C) 2008 - 2015 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"http:\\/\\/www.kunena.org","version":"3.0.8","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_filters`
--

CREATE TABLE IF NOT EXISTS `#__finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links`
--

CREATE TABLE IF NOT EXISTS `#__finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`) USING BTREE,
  KEY `idx_title` (`title`) USING BTREE,
  KEY `idx_md5` (`md5sum`) USING BTREE,
  KEY `idx_url` (`url`(75)) USING BTREE,
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`) USING BTREE,
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `#__finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`) USING BTREE,
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `state` (`state`) USING BTREE,
  KEY `ordering` (`ordering`) USING BTREE,
  KEY `access` (`access`) USING BTREE,
  KEY `idx_parent_published` (`parent_id`,`state`,`access`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__finder_taxonomy`
--

INSERT INTO `#__finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `#__finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`) USING BTREE,
  KEY `node_id` (`node_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`) USING BTREE,
  KEY `idx_term_phrase` (`term`,`phrase`) USING BTREE,
  KEY `idx_stem_phrase` (`stem`,`phrase`) USING BTREE,
  KEY `idx_soundex_phrase` (`soundex`,`phrase`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `#__finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`) USING BTREE,
  KEY `idx_lang` (`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__finder_terms_common`
--

INSERT INTO `#__finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`) USING HASH,
  KEY `idx_context` (`context`) USING HASH
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `#__finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`) USING HASH,
  KEY `keyword_id` (`term_id`) USING HASH
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__finder_types`
--

CREATE TABLE IF NOT EXISTS `#__finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__finder_types`
--

INSERT INTO `#__finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', ''),
(6, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_attachments`
--

CREATE TABLE IF NOT EXISTS `#__k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_categories`
--

CREATE TABLE IF NOT EXISTS `#__k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`) USING BTREE,
  KEY `parent` (`parent`) USING BTREE,
  KEY `ordering` (`ordering`) USING BTREE,
  KEY `published` (`published`) USING BTREE,
  KEY `access` (`access`) USING BTREE,
  KEY `trash` (`trash`) USING BTREE,
  KEY `language` (`language`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__k2_categories`
--

INSERT INTO `#__k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'News event', 'news-event', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et magna velit, non lobortis odio. Donec scelerisque faucibus aliquet. Nam ultrices scelerisque neque non pharetra. Sed urna libero, eleifend sit amet egestas sit amet, porttitor id lorem</p>', 0, 0, 1, 1, 1, '1.png', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"XLarge","num_primary_items":"2","num_primary_columns":"1","primaryImgSize":"XLarge","num_secondary_items":"0","num_secondary_columns":"0","secondaryImgSize":"XLarge","num_links":"0","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"1","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(2, 'Lastest event', 'lastest-event', '', 0, 0, 1, 1, 2, '', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(3, 'all', 'all', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et magna velit, non lobortis odio. Donec scelerisque faucibus aliquet. Nam ultrices scelerisque neque non pharetra. Sed urna libero, eleifend sit amet egestas sit amet, porttitor id lorem</p>', 0, 0, 1, 1, 3, '3.png', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"1","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"0","secondaryImgSize":"Small","num_links":"4","num_links_columns":"0","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"1","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(4, 'Category1', 'all', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et magna velit, non lobortis odio. Donec scelerisque faucibus aliquet. Nam ultrices scelerisque neque non pharetra. Sed urna libero, eleifend sit amet egestas sit amet, porttitor id lorem.</p>', 3, 0, 1, 1, 1, '4.jpg', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(5, 'Copy of Category1', 'all', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et magna velit, non lobortis odio. Donec scelerisque faucibus aliquet. Nam ultrices scelerisque neque non pharetra. Sed urna libero, eleifend sit amet egestas sit amet, porttitor id lorem</p>', 3, 0, 1, 1, 2, '5.jpg', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(6, 'Copy of Category1', 'all', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et magna velit, non lobortis odio. Donec scelerisque faucibus aliquet. Nam ultrices scelerisque neque non pharetra. Sed urna libero, eleifend sit amet egestas sit amet, porttitor id lorem</p>', 3, 0, 1, 1, 3, '6.jpg', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*'),
(7, 'Copy of Copy of Category1', 'all', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et magna velit, non lobortis odio. Donec scelerisque faucibus aliquet. Nam ultrices scelerisque neque non pharetra. Sed urna libero, eleifend sit amet egestas sit amet, porttitor id lorem</p>', 3, 0, 1, 1, 4, '7.jpg', '{"inheritFrom":"0","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_comments`
--

CREATE TABLE IF NOT EXISTS `#__k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`) USING BTREE,
  KEY `userID` (`userID`) USING BTREE,
  KEY `published` (`published`) USING BTREE,
  KEY `latestComments` (`published`,`commentDate`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__k2_comments`
--

INSERT INTO `#__k2_comments` (`id`, `itemID`, `userID`, `userName`, `commentDate`, `commentText`, `commentEmail`, `commentURL`, `published`) VALUES
(1, 12, 0, 'trongtam', '2014-05-14 07:36:59', 'Super User has not set their biography yet\r\nSuper test', 'admin@gmail.com', 'http://bowthemes.com', 1),
(2, 8, 150, 'Super User', '2014-05-15 04:14:05', 'Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....', 'abc@abc.com', '', 1),
(3, 8, 150, 'Super User', '2014-05-16 09:16:42', 'Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....', 'abc@abc.com', '', 1),
(4, 8, 150, 'Super User', '2014-05-16 09:16:57', 'Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....', 'abc@abc.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `#__k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`) USING BTREE,
  KEY `published` (`published`) USING BTREE,
  KEY `ordering` (`ordering`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `#__k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_items`
--

CREATE TABLE IF NOT EXISTS `#__k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`) USING BTREE,
  KEY `catid` (`catid`) USING BTREE,
  KEY `created_by` (`created_by`) USING BTREE,
  KEY `ordering` (`ordering`) USING BTREE,
  KEY `featured` (`featured`) USING BTREE,
  KEY `featured_ordering` (`featured_ordering`) USING BTREE,
  KEY `hits` (`hits`) USING BTREE,
  KEY `created` (`created`) USING BTREE,
  KEY `language` (`language`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__k2_items`
--

INSERT INTO `#__k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(1, 'Education Standard in Europe', 'education-standard-in-europe', 1, 1, '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor.</p>\r\n', '\r\n<p>Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', NULL, NULL, '[]', '', '2014-04-29 02:34:38', 511, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:50:46', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(2, 'Local education authority results', 'education-standard-in-europe', 1, 1, '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor.</p>\r\n', '\r\n<p>Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', NULL, NULL, '[]', '', '2014-04-29 02:36:48', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:53:05', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 2, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(3, 'Future of England’s top schools.', 'education-standard-in-europe', 1, 1, '<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor.</p>\r\n', '\r\n<p>Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....</p>', NULL, NULL, '[]', '', '2014-04-29 02:36:56', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:53:41', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(4, 'Drug taking teachers can return to class', 'education-standard-in-europe', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie, velit id luctus scelerisque, justo nulla dignissim nulla, vel semper lorem ligula vehicula felis. Donec posuere scelerisque elit, eget blandit tortor scelerisque non. Aliquam et lacus</p>\r\n', '\r\n<p>Maecenas ac lacinia dui. Sed eget augue volutpat erat sodales dapibus. In faucibus egestas lorem, tincidunt aliquam magna cursus ut. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sit amet leo iaculis, dignissim ligula ut, ornare metus. Sed aliquet magna eu odio interdum tincidunt. Proin egestas mattis rutrum. Maecenas quis orci sed eros fermentum laoreet egestas vitae enim. Nullam vitae purus ultricies, bibendum quam ac, egestas augue. Aliquam erat volutpat. Aliquam erat volutpat. Nam quis feugiat ipsum.</p>\r\n<p>Donec pretium eu lorem eget posuere. In nisi nisi, aliquet at erat quis, porttitor aliquet nibh. Maecenas at nulla sed lorem semper varius. Etiam vehicula justo ac consequat egestas. Donec dapibus, nibh nec convallis blandit, ipsum quam mollis tortor, sit amet vulputate nibh neque in magna. Donec tristique nunc eu blandit fermentum. Etiam ut felis et odio condimentum adipiscing eget id nisl. Donec tempor, turpis viverra elementum sagittis, felis nibh adipiscing diam, eu mollis est nisl at erat. In et lacinia massa. Aenean in nisl mollis urna condimentum euismod. Morbi placerat ullamcorper feugiat. Integer sit amet blandit quam. In libero tortor, accumsan eu diam ut, pellentesque lacinia sapien.</p>', NULL, NULL, '[]', '', '2014-04-29 02:36:56', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:55:10', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 4, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(5, 'As term begins, schools plan for the holidays', 'as-term-begins-schools-plan-for-the-holidays', 1, 1, '<p>Fusce laoreet auctor mauris, ultrices tincidunt dolor dignissim id. Sed ut elit vel sem blandit congue. Vivamus ligula dolor, laoreet a enim nec, egestas varius orci.</p>\r\n', '\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla semper sapien quis fringilla gravida. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras ac scelerisque erat. Etiam ultricies arcu odio, at condimentum mauris facilisis vitae. Phasellus nec aliquet ante, vel tempor lorem. In libero diam, fringilla eu augue eget, interdum facilisis libero. Donec congue diam eget gravida feugiat. Nunc dapibus suscipit tortor. Integer posuere mauris lectus, non consequat sem bibendum et.</p>\r\n<p>Pellentesque ac metus adipiscing arcu pharetra porttitor. Morbi sit amet dui erat. Quisque lectus sem, venenatis nec nisl sit amet, venenatis rutrum leo. Sed eleifend eros diam, non bibendum mi aliquam sit amet. Vivamus congue diam a velit auctor, eget adipiscing arcu cursus. Vivamus euismod semper diam, a dignissim nunc eleifend in. Duis dictum neque quis ante facilisis egestas. Maecenas ac felis ac nulla venenatis elementum ac id metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin malesuada nisi vel congue auctor. Nullam fermentum varius lectus commodo luctus. Mauris eget mollis nisl. Integer blandit tempor sapien, sit amet volutpat velit faucibus id. Duis pellentesque semper massa, non pharetra quam gravida vitae. Maecenas eget condimentum purus.</p>\r\n<p>Fusce laoreet auctor mauris, ultrices tincidunt dolor dignissim id. Sed ut elit vel sem blandit congue. Vivamus ligula dolor, laoreet a enim nec, egestas varius orci. Aliquam lobortis nisi nec ipsum ullamcorper posuere. Nam ac leo id risus vestibulum feugiat eu ac libero. Fusce risus tellus, tincidunt vel gravida nec, aliquam sed lectus. Mauris lobortis risus in tellus convallis placerat.</p>', NULL, NULL, '[]', '', '2014-04-29 02:37:03', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:55:54', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 5, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(6, 'Cambridge University ‘to teach children as young as four’', 'cambridge-university-to-teach-children-as-young-as-four', 1, 1, '<p>Aenean in nisl mollis urna condimentum euismod. Morbi placerat ullamcorper feugiat. Integer sit amet blandit quam. In libero tortor, accumsan eu diam ut, pellentesque lacinia sapien.</p>\r\n', '\r\n<p>Maecenas ac lacinia dui. Sed eget augue volutpat erat sodales dapibus. In faucibus egestas lorem, tincidunt aliquam magna cursus ut. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec sit amet leo iaculis, dignissim ligula ut, ornare metus. Sed aliquet magna eu odio interdum tincidunt. Proin egestas mattis rutrum. Maecenas quis orci sed eros fermentum laoreet egestas vitae enim. Nullam vitae purus ultricies, bibendum quam ac, egestas augue. Aliquam erat volutpat. Aliquam erat volutpat. Nam quis feugiat ipsum.</p>\r\n<p>Donec pretium eu lorem eget posuere. In nisi nisi, aliquet at erat quis, porttitor aliquet nibh. Maecenas at nulla sed lorem semper varius. Etiam vehicula justo ac consequat egestas. Donec dapibus, nibh nec convallis blandit, ipsum quam mollis tortor, sit amet vulputate nibh neque in magna. Donec tristique nunc eu blandit fermentum. Etiam ut felis et odio condimentum adipiscing eget id nisl. Donec tempor, turpis viverra elementum sagittis, felis nibh adipiscing diam, eu mollis est nisl at erat. In et lacinia massa. Aenean in nisl mollis urna condimentum euismod. Morbi placerat ullamcorper feugiat. Integer sit amet blandit quam. In libero tortor, accumsan eu diam ut, pellentesque lacinia sapien.</p>\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla semper sapien quis fringilla gravida. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras ac scelerisque erat. Etiam ultricies arcu odio, at condimentum mauris facilisis vitae. Phasellus nec aliquet ante, vel tempor lorem. In libero diam, fringilla eu augue eget, interdum facilisis libero. Donec congue diam eget gravida feugiat. Nunc dapibus suscipit tortor. Integer posuere mauris lectus, non consequat sem bibendum et.</p>', NULL, NULL, '[]', '', '2014-04-29 02:37:03', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:57:09', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 6, 0, 0, '', '', '', '', 37, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(7, 'Gove steps in to quell Ofsted row', 'gove-steps-in-to-quell-ofsted-row', 1, 1, '<p>Proin malesuada nisi vel congue auctor. Nullam fermentum varius lectus commodo luctus. Mauris eget mollis nisl. Integer blandit tempor sapien, sit amet volutpat velit faucibus id</p>\r\n', '\r\n<p>Donec sit amet leo iaculis, dignissim ligula ut, ornare metus. Sed aliquet magna eu odio interdum tincidunt. Proin egestas mattis rutrum. Maecenas quis orci sed eros fermentum laoreet egestas vitae enim. Nullam vitae purus ultricies, bibendum quam ac, egestas augue. Aliquam erat volutpat. Aliquam erat volutpat. Nam quis feugiat ipsum.</p>\r\n<p>Donec pretium eu lorem eget posuere. In nisi nisi, aliquet at erat quis, porttitor aliquet nibh. Maecenas at nulla sed lorem semper varius. Etiam vehicula justo ac consequat egestas. Donec dapibus, nibh nec convallis blandit, ipsum quam mollis tortor, sit amet vulputate nibh neque in magna. Donec tristique nunc eu blandit fermentum. Etiam ut felis et odio condimentum adipiscing eget id nisl. Donec tempor, turpis viverra elementum sagittis, felis nibh adipiscing diam, eu mollis est nisl at erat. In et lacinia massa. Aenean in nisl mollis urna condimentum euismod. Morbi placerat ullamcorper feugiat. Integer sit amet blandit quam. In libero tortor, accumsan eu diam ut, pellentesque lacinia sapien.</p>\r\n<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla semper sapien quis fringilla gravida. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras ac scelerisque erat. Etiam ultricies arcu odio, at condimentum mauris facilisis vitae. Phasellus nec aliquet ante, vel tempor lorem. In libero diam, fringilla eu augue eget, interdum facilisis libero. Donec congue diam eget gravida feugiat. Nunc dapibus suscipit tortor. Integer posuere mauris lectus, non consequat sem bibendum et.</p>', NULL, NULL, '[]', '', '2014-04-29 02:37:03', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:58:12', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 7, 0, 0, '', '', '', '', 9, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(8, 'Cocaine found in Oxford University buildings', 'cocaine-found-in-oxford-university-buildings', 1, 1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nec lacus luctus, feugiat purus a, porta velit. Donec odio elit, faucibus quis nunc non</p>\r\n', '\r\n<p>Vivamus ultrices ullamcorper risus, vel pellentesque sem convallis vitae. Proin viverra vel ligula id cursus. Curabitur non porttitor mauris, id bibendum turpis. Duis ut ante ligula. Ut enim est, rhoncus quis fermentum a, tincidunt et nibh. Nunc placerat suscipit semper. Donec massa elit, congue sit amet lobortis iaculis, ultrices a nibh. Donec elementum augue enim, ac pulvinar nulla pharetra et. In a nisi in lorem tincidunt adipiscing. Duis at dictum est. Phasellus vitae lacus nec elit fermentum tincidunt et quis ipsum.</p>\r\n<p>Etiam sed egestas turpis. Vivamus volutpat leo quis purus facilisis sodales. Quisque nec blandit leo. Maecenas mollis suscipit ligula vel ornare. Donec tempus arcu at urna commodo, nec consectetur felis placerat. Phasellus adipiscing augue at nibh condimentum, at fermentum orci luctus. Nullam sit amet mollis nulla. Nulla consequat mollis magna, et feugiat magna placerat feugiat. Sed et vehicula quam, sed ultrices urna.</p>\r\n<p>Proin sollicitudin ultrices vulputate. Donec elementum luctus nulla, non bibendum tellus ornare eget. Maecenas sodales vestibulum dictum. Sed scelerisque erat vitae malesuada sodales. In viverra ipsum nec nunc hendrerit, a faucibus justo scelerisque. Pellentesque facilisis odio lorem, nec bibendum justo ultricies accumsan. Mauris interdum dapibus nibh. Nullam sit amet tellus lorem. Proin sem nibh, porta vel tortor nec, accumsan congue ipsum. Nunc ac arcu vitae sapien dictum facilisis. Vestibulum suscipit nunc non nunc hendrerit varius at vitae est.</p>', NULL, NULL, '[]', '', '2014-04-29 02:37:03', 151, '', 0, '0000-00-00 00:00:00', '2014-06-02 02:59:26', 150, '2014-04-29 02:34:38', '0000-00-00 00:00:00', 0, 1, 8, 0, 0, '', '', '', '', 282, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(9, 'Celebrate Party 2014', 'celebrate-party-2014', 2, 1, '', '', NULL, NULL, '[]', '', '2014-05-05 09:14:57', 150, '', 0, '0000-00-00 00:00:00', '2014-05-05 09:16:15', 150, '2014-05-05 09:14:57', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(10, 'Celebrate Party 2014', 'celebrate-party-2014', 2, 1, '', '', NULL, NULL, '[]', '', '2014-05-05 09:16:29', 150, '', 0, '0000-00-00 00:00:00', '2014-05-05 09:18:40', 150, '2014-04-28 00:00:00', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 5, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(11, 'Celebrate Party 2014', 'celebrate-party-2014', 2, 1, '', '', NULL, NULL, '[]', '', '2014-04-23 00:00:00', 150, '', 0, '0000-00-00 00:00:00', '2014-05-05 09:19:32', 150, '2014-04-23 00:00:00', '0000-00-00 00:00:00', 0, 1, 3, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(12, 'Celebrate Party 2014', 'celebrate-party-2014', 2, 1, '', '', NULL, NULL, '[]', '', '2014-04-17 00:00:00', 150, '', 0, '0000-00-00 00:00:00', '2014-05-05 10:29:29', 150, '2014-04-18 00:00:00', '0000-00-00 00:00:00', 0, 1, 4, 0, 0, '', '', '', '', 8, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_rating`
--

CREATE TABLE IF NOT EXISTS `#__k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags`
--

CREATE TABLE IF NOT EXISTS `#__k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_tags`
--

INSERT INTO `#__k2_tags` (`id`, `name`, `published`) VALUES
(1, 'News', 1),
(2, 'bowthemes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `#__k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`) USING BTREE,
  KEY `itemID` (`itemID`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `#__k2_tags_xref`
--

INSERT INTO `#__k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(21, 1, 1),
(23, 1, 2),
(25, 1, 3),
(27, 1, 4),
(28, 1, 5),
(30, 1, 6),
(33, 1, 7),
(34, 2, 7),
(36, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_users`
--

CREATE TABLE IF NOT EXISTS `#__k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`) USING BTREE,
  KEY `group` (`group`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__k2_users`
--

INSERT INTO `#__k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 151, 'Trong Tam', 'm', '<p>Super User has not set their biography yet</p>', '1.png', 'http://bowthemes.com', 0, '', '127.0.0.1', 'MrTam-VST', ''),
(2, 150, 'Super User', 'm', '<p>Super User has not set their biography yet</p>', '2.png', 'http://website: bowthemes.com', 0, '', '127.0.0.1', 'TAM-PC', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `#__k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__k2_user_groups`
--

INSERT INTO `#__k2_user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'Registered', '{"comment":"1","frontEdit":"0","add":"0","editOwn":"0","editAll":"0","publish":"0","inheritance":0,"categories":"all"}'),
(2, 'Site Owner', '{"comment":"1","frontEdit":"1","add":"1","editOwn":"1","editAll":"1","publish":"1","inheritance":1,"categories":"all"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_aliases`
--

CREATE TABLE IF NOT EXISTS `#__kunena_aliases` (
  `alias` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `alias` (`alias`) USING BTREE,
  KEY `state` (`state`) USING BTREE,
  KEY `item` (`item`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__kunena_aliases`
--

INSERT INTO `#__kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('default', 'layout', 'category.default', 0),
('edit', 'layout', 'category.edit', 0),
('home', 'view', 'home', 1),
('main-forum', 'catid', '1', 1),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('suggestion-box', 'catid', '3', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1),
('welcome-mat', 'catid', '2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_announcement`
--

CREATE TABLE IF NOT EXISTS `#__kunena_announcement` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_attachments`
--

CREATE TABLE IF NOT EXISTS `#__kunena_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mesid` (`mesid`) USING BTREE,
  KEY `userid` (`userid`) USING BTREE,
  KEY `hash` (`hash`) USING BTREE,
  KEY `filename` (`filename`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_categories`
--

CREATE TABLE IF NOT EXISTS `#__kunena_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `category_access` (`accesstype`,`access`) USING BTREE,
  KEY `published_pubaccess_id` (`published`,`pub_access`,`id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__kunena_categories`
--

INSERT INTO `#__kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`) VALUES
(1, 0, 'Main Forum', 'main-forum', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'This is the main forum section. It serves as a container for categories for your topics.', 'The section header is used to display additional information about the categories of topics that it contains.', '', 0, 'lastpost', 0, 0, 0, 0, 0, ''),
(2, 1, 'Welcome Mat', 'welcome-mat', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'We encourage new members to introduce themselves here. Get to know one another and share your interests.', '[b]Welcome to the Kunena forum![/b] \n\n Tell us and our members who you are, what you like and why you became a member of this site. \n We welcome all new members and hope to see you around a lot!', '', 0, 'lastpost', 1, 1, 1, 1, 1401675518, ''),
(3, 1, 'Suggestion Box', 'suggestion-box', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, NULL, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Have some feedback and input to share? \n Don''t be shy and drop us a note. We want to hear from you and strive to make our site better and more user friendly for our guests and members a like.', 'This is the optional category header for the Suggestion Box.', '', 1, 'lastpost', 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_configuration`
--

CREATE TABLE IF NOT EXISTS `#__kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__kunena_configuration`
--

INSERT INTO `#__kunena_configuration` (`id`, `params`) VALUES
(1, '{"board_title":"Kunena","email":"","board_offline":0,"offline_message":"<h2>The Forum is currently offline for maintenance.<\\/h2>\\n<div>Check back soon!<\\/div>","enablerss":1,"threads_per_page":20,"messages_per_page":6,"messages_per_page_search":15,"showhistory":1,"historylimit":6,"shownew":1,"disemoticons":0,"template":"bowthemes","showannouncement":1,"avataroncat":0,"catimagepath":"category_images","showchildcaticon":1,"rtewidth":450,"rteheight":300,"enableforumjump":1,"reportmsg":1,"username":1,"askemail":0,"showemail":0,"showuserstats":1,"showkarma":1,"useredit":1,"useredittime":0,"useredittimegrace":600,"editmarkup":1,"allowsubscriptions":1,"subscriptionschecked":1,"allowfavorites":1,"maxsubject":50,"maxsig":300,"regonly":0,"pubwrite":0,"floodprotection":0,"mailmod":0,"mailadmin":0,"captcha":0,"mailfull":1,"allowavatarupload":1,"allowavatargallery":1,"avatarquality":75,"avatarsize":2048,"imageheight":800,"imagewidth":800,"imagesize":150,"filetypes":"txt,rtf,pdf,zip,tar.gz,tgz,tar.bz2","filesize":120,"showranking":1,"rankimages":1,"userlist_rows":30,"userlist_online":1,"userlist_avatar":1,"userlist_name":1,"userlist_posts":1,"userlist_karma":1,"userlist_email":0,"userlist_joindate":1,"userlist_lastvisitdate":1,"userlist_userhits":1,"latestcategory":"","showstats":1,"showwhoisonline":1,"showgenstats":1,"showpopuserstats":1,"popusercount":5,"showpopsubjectstats":1,"popsubjectcount":5,"usernamechange":0,"showspoilertag":1,"showvideotag":1,"showebaytag":1,"trimlongurls":1,"trimlongurlsfront":40,"trimlongurlsback":20,"autoembedyoutube":1,"autoembedebay":1,"ebaylanguagecode":"en-us","sessiontimeout":1800,"highlightcode":0,"rss_type":"topic","rss_timelimit":"month","rss_limit":100,"rss_included_categories":"","rss_excluded_categories":"","rss_specification":"rss2.0","rss_allow_html":1,"rss_author_format":"name","rss_author_in_title":1,"rss_word_count":"0","rss_old_titles":1,"rss_cache":900,"defaultpage":"recent","default_sort":"asc","sef":1,"showimgforguest":1,"showfileforguest":1,"pollnboptions":4,"pollallowvoteone":1,"pollenabled":1,"poppollscount":5,"showpoppollstats":1,"polltimebtvotes":"00:15:00","pollnbvotesbyuser":100,"pollresultsuserslist":1,"maxpersotext":50,"ordering_system":"mesid","post_dateformat":"ago","post_dateformat_hover":"datetime","hide_ip":1,"imagetypes":"jpg,jpeg,gif,png","checkmimetypes":1,"imagemimetypes":"image\\/jpeg,image\\/jpg,image\\/gif,image\\/png","imagequality":50,"thumbheight":32,"thumbwidth":32,"hideuserprofileinfo":"put_empty","boxghostmessage":0,"userdeletetmessage":0,"latestcategory_in":1,"topicicons":1,"debug":0,"catsautosubscribed":0,"showbannedreason":0,"version_check":1,"showthankyou":1,"showpopthankyoustats":1,"popthankscount":5,"mod_see_deleted":0,"bbcode_img_secure":"text","listcat_show_moderators":1,"lightbox":1,"show_list_time":720,"show_session_type":0,"show_session_starttime":0,"userlist_allowed":0,"userlist_count_users":1,"enable_threaded_layouts":0,"category_subscriptions":"post","topic_subscriptions":"every","pubprofile":1,"thankyou_max":10,"email_recipient_count":0,"email_recipient_privacy":"bcc","email_visible_address":"","captcha_post_limit":0,"recaptcha_publickey":"","recaptcha_privatekey":"","recaptcha_theme":"white","keywords":1,"userkeywords":0,"image_upload":"registered","file_upload":"registered","topic_layout":"flat","time_to_create_page":1,"show_imgfiles_manage_profile":1,"hold_newusers_posts":0,"hold_guest_posts":0,"attachment_limit":8,"pickup_category":0,"article_display":"intro","send_emails":1,"stopforumspam_key":"","fallback_english":1,"cache":1,"cache_time":60,"ebay_affiliate_id":5337089937,"iptracking":1,"rss_feedburner_url":"","autolink":1,"access_component":1,"statslink_allowed":1,"plugins":{"plg_system_kunena":{"jcontentevents":"0","jcontentevent_target":"body"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_keywords`
--

CREATE TABLE IF NOT EXISTS `#__kunena_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `public_count` int(11) NOT NULL,
  `total_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `public_count` (`public_count`) USING BTREE,
  KEY `total_count` (`total_count`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_keywords_map`
--

CREATE TABLE IF NOT EXISTS `#__kunena_keywords_map` (
  `keyword_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  UNIQUE KEY `keyword_user_topic` (`keyword_id`,`user_id`,`topic_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `topic_user` (`topic_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_messages`
--

CREATE TABLE IF NOT EXISTS `#__kunena_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext,
  PRIMARY KEY (`id`),
  KEY `thread` (`thread`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `userid` (`userid`) USING BTREE,
  KEY `time` (`time`) USING BTREE,
  KEY `locked` (`locked`) USING BTREE,
  KEY `hold_time` (`hold`,`time`) USING BTREE,
  KEY `parent_hits` (`parent`,`hits`) USING BTREE,
  KEY `catid_parent` (`catid`,`parent`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__kunena_messages`
--

INSERT INTO `#__kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(1, 0, 1, 2, 'Kunena', 150, NULL, 'Welcome to Kunena!', 1401675518, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_messages_text`
--

CREATE TABLE IF NOT EXISTS `#__kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  PRIMARY KEY (`mesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__kunena_messages_text`
--

INSERT INTO `#__kunena_messages_text` (`mesid`, `message`) VALUES
(1, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_polls`
--

CREATE TABLE IF NOT EXISTS `#__kunena_polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `threadid` (`threadid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_polls_options`
--

CREATE TABLE IF NOT EXISTS `#__kunena_polls_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_polls_users`
--

CREATE TABLE IF NOT EXISTS `#__kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL,
  UNIQUE KEY `pollid` (`pollid`,`userid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_ranks`
--

CREATE TABLE IF NOT EXISTS `#__kunena_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__kunena_ranks`
--

INSERT INTO `#__kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'New Member', 0, 0, 'rank1.gif'),
(2, 'Junior Member', 20, 0, 'rank2.gif'),
(3, 'Senior Member', 40, 0, 'rank3.gif'),
(4, 'Premium Member', 80, 0, 'rank4.gif'),
(5, 'Elite Member', 160, 0, 'rank5.gif'),
(6, 'Platinum Member', 320, 0, 'rank6.gif'),
(7, 'Administrator', 0, 1, 'rankadmin.gif'),
(8, 'Moderator', 0, 1, 'rankmod.gif'),
(9, 'Spammer', 0, 1, 'rankspammer.gif'),
(10, 'Banned', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_sessions`
--

CREATE TABLE IF NOT EXISTS `#__kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `currvisit` (`currvisit`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__kunena_sessions`
--

INSERT INTO `#__kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(150, 'na', 1401935042, '0', 1402095464);

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_smileys`
--

CREATE TABLE IF NOT EXISTS `#__kunena_smileys` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `#__kunena_smileys`
--

INSERT INTO `#__kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_thankyou`
--

CREATE TABLE IF NOT EXISTS `#__kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL,
  UNIQUE KEY `postid` (`postid`,`userid`) USING BTREE,
  KEY `userid` (`userid`) USING BTREE,
  KEY `targetuserid` (`targetuserid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_topics`
--

CREATE TABLE IF NOT EXISTS `#__kunena_topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`) USING BTREE,
  KEY `locked` (`locked`) USING BTREE,
  KEY `hold` (`hold`) USING BTREE,
  KEY `posts` (`posts`) USING BTREE,
  KEY `hits` (`hits`) USING BTREE,
  KEY `first_post_userid` (`first_post_userid`) USING BTREE,
  KEY `last_post_userid` (`last_post_userid`) USING BTREE,
  KEY `first_post_time` (`first_post_time`) USING BTREE,
  KEY `last_post_time` (`last_post_time`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__kunena_topics`
--

INSERT INTO `#__kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `params`) VALUES
(1, 2, 'Welcome to Kunena!', 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1401675518, 150, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', 1, 1401675518, 150, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]http://www.kunena.org/docs[/url] \n\n [b]Kunena Support Forum[/b]: [url]http://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]http://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]http://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]http://www.kunena.org/twitter[/url]', 'Kunena', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_users`
--

CREATE TABLE IF NOT EXISTS `#__kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `gtalk` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `thankyou` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `posts` (`posts`) USING BTREE,
  KEY `uhits` (`uhits`) USING BTREE,
  KEY `banned` (`banned`) USING BTREE,
  KEY `moderator` (`moderator`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__kunena_users`
--

INSERT INTO `#__kunena_users` (`userid`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `icq`, `aim`, `yim`, `msn`, `skype`, `twitter`, `facebook`, `gtalk`, `myspace`, `linkedin`, `delicious`, `friendfeed`, `digg`, `blogspot`, `flickr`, `bebo`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `thankyou`) VALUES
(150, '', NULL, 0, NULL, 0, 1, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(151, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(152, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(153, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(154, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(155, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0),
(156, '', NULL, 0, NULL, 0, 0, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_users_banned`
--

CREATE TABLE IF NOT EXISTS `#__kunena_users_banned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `expiration` (`expiration`) USING BTREE,
  KEY `created_time` (`created_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_user_categories`
--

CREATE TABLE IF NOT EXISTS `#__kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` datetime DEFAULT NULL,
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`user_id`,`category_id`),
  KEY `category_subscribed` (`category_id`,`subscribed`) USING BTREE,
  KEY `role` (`role`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_user_read`
--

CREATE TABLE IF NOT EXISTS `#__kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`) USING BTREE,
  KEY `category_user_id` (`category_id`,`user_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_user_topics`
--

CREATE TABLE IF NOT EXISTS `#__kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`) USING BTREE,
  KEY `topic_id` (`topic_id`) USING BTREE,
  KEY `posts` (`posts`) USING BTREE,
  KEY `owner` (`owner`) USING BTREE,
  KEY `favorite` (`favorite`) USING BTREE,
  KEY `subscribed` (`subscribed`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__kunena_user_topics`
--

INSERT INTO `#__kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(150, 1, 2, 1, 1, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__kunena_version`
--

CREATE TABLE IF NOT EXISTS `#__kunena_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__kunena_version`
--

INSERT INTO `#__kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '3.0.5', '2014-03-09', '2014-06-02', '', 'Invecchiato', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`) USING BTREE,
  UNIQUE KEY `idx_image` (`image`) USING BTREE,
  UNIQUE KEY `idx_langcode` (`lang_code`) USING BTREE,
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_ordering` (`ordering`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'cs-CZ', 'Czech', 'Czech', 'cz', 'cz', '', '', '', '', 1, 1, 2),
(3, 'fr-FR', 'French', 'French', 'fr', 'fr', '', '', '', '', 1, 1, 3),
(4, 'de-DE', 'German ', 'German ', 'de', 'de', '', '', '', '', 1, 1, 4),
(5, 'nl-NL', 'Dutch', 'Dutch', 'nl', 'nl', '', '', '', '', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`) USING BTREE,
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`) USING BTREE,
  KEY `idx_menutype` (`menutype`) USING BTREE,
  KEY `idx_left_right` (`lft`,`rgt`) USING BTREE,
  KEY `idx_alias` (`alias`) USING BTREE,
  KEY `idx_path` (`path`(255)) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=275 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 221, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 29, 34, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 30, 31, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 32, 33, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 35, 40, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 36, 37, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 38, 39, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 41, 46, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 42, 43, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 44, 45, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 47, 48, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 49, 50, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 51, 56, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 52, 53, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 54, 55, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 57, 58, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 59, 60, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 61, 62, 0, '', 1),
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 63, 64, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(141, 'kunenamenu', 'Forum', 'forum', '', 'forum', 'index.php?option=com_kunena&view=home&defaultmenu=143', 'component', 1, 1, 1, 10021, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"catids":0}', 65, 82, 0, '*', 0),
(142, 'kunenamenu', 'Index', 'index', '', 'forum/index', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(143, 'kunenamenu', 'Recent Topics', 'recent', '', 'forum/recent', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":720}', 68, 69, 0, '*', 0),
(144, 'kunenamenu', 'New Topic', 'newtopic', '', 'forum/newtopic', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 70, 71, 0, '*', 0),
(145, 'kunenamenu', 'No Replies', 'noreplies', '', 'forum/noreplies', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":-1}', 72, 73, 0, '*', 0),
(146, 'kunenamenu', 'My Topics', 'mylatest', '', 'forum/mylatest', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"2","topics_categories":"0","topics_time":-1}', 74, 75, 0, '*', 0),
(147, 'kunenamenu', 'Profile', 'profile', '', 'forum/profile', 'index.php?option=com_kunena&view=user', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"integration":1}', 76, 77, 0, '*', 0),
(148, 'kunenamenu', 'Help', 'help', '', 'forum/help', 'index.php?option=com_kunena&view=misc', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"body":"This help page is a menu item inside [b]Kunena Menu[\\/b], which allows easy navigation in your forum. \\n\\n You can use Joomla Menu Manager to edit items in this menu. Please go to [b]Administration[\\/b] >> [b]Menus[\\/b] >> [b]Kunena Menu[\\/b] >> [b]Help[\\/b] to edit or remove this menu item. \\n\\n In this menu item you can use Plain Text, BBCode or HTML. If you want to bind article into this page, you may use article BBCode (with article id): [code][article=full]123[\\/article][\\/code] \\n\\n If you want to create your own menu for Kunena, please start by creating [b]Home Page[\\/b] first. In that page you can select default menu item, which is shown when you enter to Kunena.","body_format":"bbcode"}', 78, 79, 0, '*', 0),
(149, 'kunenamenu', 'Search', 'search', '', 'forum/search', 'index.php?option=com_kunena&view=search', 'component', 1, 141, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 80, 81, 0, '*', 0),
(150, 'mainmenu', 'Forum', 'kunena-2014-06-02', '', 'kunena-2014-06-02', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"143","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 25, 26, 0, '*', 0),
(151, 'mainmenu', 'K2 Category', 'k2-categories', '', 'k2-categories', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"categories":["1"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 24, 0, '*', 0),
(160, 'mainmenu', 'Blogs', 'blogs', '', 'blogs', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 14, 0, '*', 0),
(161, 'mainmenu', 'Contact us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"1","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(163, 'mainmenu', 'K2 latest', 'k2-latest', '', 'k2-categories/k2-latest', 'index.php?option=com_k2&view=latest&layout=latest', 'component', 1, 151, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","source":"0","latestItemsCols":"1","latestItemsLimit":"3","latestItemsDisplayEffect":"all","userIDs":["151"],"userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeed":"0","categoryTitle":"1","categoryDescription":"1","categoryImage":"1","categoryFeed":"0","latestItemTitle":"1","latestItemTitleLinked":"1","latestItemDateCreated":"1","latestItemImage":"1","latestItemImageSize":"Medium","latestItemVideo":"1","latestItemVideoWidth":"","latestItemVideoHeight":"","latestItemAudioWidth":"","latestItemAudioHeight":"","latestItemVideoAutoPlay":"0","latestItemIntroText":"1","latestItemCategory":"1","latestItemTags":"1","latestItemReadMore":"1","latestItemCommentsAnchor":"0","feedLink":"0","latestItemK2Plugins":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(164, 'mainmenu', 'K2 user blog', 'k2-user-blog', '', 'k2-categories/k2-user-blog', 'index.php?option=com_k2&view=itemlist&layout=user&id=151&task=user', 'component', 1, 151, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","userOrdering":"","userFeedLink":"0","userFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 18, 19, 0, '*', 0),
(165, 'mainmenu', 'K2 tag', 'easyblog-tag', '', 'k2-categories/easyblog-tag', 'index.php?option=com_k2&view=itemlist&layout=tag&tag=News&task=tag', 'component', 1, 151, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"default","tagOrdering":"","tagFeedLink":"0","tagFeedIcon":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0),
(166, 'mainmenu', 'K2 item', 'k2-item', '', 'k2-categories/k2-item', 'index.php?option=com_k2&view=item&layout=item&id=8', 'component', 1, 151, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 22, 23, 0, '*', 0),
(167, 'main', 'AcyMailing', 'acymailing', '', 'acymailing', 'index.php?option=com_acymailing', 'component', 0, 1, 1, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acymailing.png', 0, '', 83, 100, 0, '', 1),
(168, 'main', 'Users', 'users', '', 'acymailing/users', 'index.php?option=com_acymailing&ctrl=subscriber', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-users.png', 0, '', 84, 85, 0, '', 1),
(169, 'main', 'Lists', 'lists', '', 'acymailing/lists', 'index.php?option=com_acymailing&ctrl=list', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acylist.png', 0, '', 86, 87, 0, '', 1),
(170, 'main', 'Newsletters', 'newsletters', '', 'acymailing/newsletters', 'index.php?option=com_acymailing&ctrl=newsletter', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-newsletter.png', 0, '', 88, 89, 0, '', 1),
(171, 'main', 'Templates', 'templates', '', 'acymailing/templates', 'index.php?option=com_acymailing&ctrl=template', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '', 90, 91, 0, '', 1),
(172, 'main', 'Queue', 'queue', '', 'acymailing/queue', 'index.php?option=com_acymailing&ctrl=queue', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-process.png', 0, '', 92, 93, 0, '', 1),
(173, 'main', 'Statistics', 'statistics', '', 'acymailing/statistics', 'index.php?option=com_acymailing&ctrl=stats', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-stats.png', 0, '', 94, 95, 0, '', 1),
(174, 'main', 'Configuration', 'configuration', '', 'acymailing/configuration', 'index.php?option=com_acymailing&ctrl=cpanel', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acyconfig.png', 0, '', 96, 97, 0, '', 1),
(175, 'main', 'Update_About', 'update-about', '', 'acymailing/update-about', 'index.php?option=com_acymailing&ctrl=update', 'component', 0, 167, 2, 10051, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-update.png', 0, '', 98, 99, 0, '', 1),
(205, 'our-courses', 'Management', '2014-06-04-08-06-05', '', '2014-06-04-08-06-05', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/icon\\/icon_menu\\/icon_menu_1.png","menu_text":1}', 101, 102, 0, '*', 0),
(206, 'our-courses', 'Economics', '2014-06-04-08-07-20', '', '2014-06-04-08-07-20', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/icon\\/icon_menu\\/icon_menu_2.png","menu_text":1}', 103, 104, 0, '*', 0),
(207, 'our-courses', 'Finance', '2014-06-04-08-08-27', '', '2014-06-04-08-08-27', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/icon\\/icon_menu\\/icon_menu_3.png","menu_text":1}', 105, 106, 0, '*', 0),
(208, 'our-courses', 'Technology', '2014-06-04-08-09-14', '', '2014-06-04-08-09-14', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/icon\\/icon_menu\\/icon_menu_4.png","menu_text":1}', 107, 108, 0, '*', 0),
(209, 'our-courses', 'Officer', '2014-06-04-08-09-54', '', '2014-06-04-08-09-54', '', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/icon\\/icon_menu\\/icon_menu_5.png","menu_text":1}', 109, 110, 0, '*', 0),
(222, 'fr-main-menu', 'Page d''accueil', 'page-d-accueil', '', 'page-d-accueil', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 149, 150, 1, 'fr-FR', 0),
(223, 'de-main-menu', 'Startseite', 'startseite', '', 'startseite', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 151, 152, 1, 'de-DE', 0),
(224, 'nl-main-menu', 'Homepage', 'homepage', '', 'homepage', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 153, 154, 1, 'nl-NL', 0),
(225, 'cz-main-menu', 'Cz Home', 'cz-home', '', 'cz-home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 155, 156, 1, 'cs-CZ', 0),
(226, 'default', 'Main Menu', 'main-menu', '', 'main-menu', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 157, 158, 0, '*', 0),
(243, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, '', 159, 180, 0, '', 1),
(244, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 160, 161, 0, '', 1),
(245, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 162, 163, 0, '', 1),
(246, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 164, 165, 0, '', 1),
(247, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 166, 167, 0, '', 1),
(248, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 168, 169, 0, '', 1),
(249, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 170, 171, 0, '', 1),
(250, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 172, 173, 0, '', 1),
(251, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 174, 175, 0, '', 1),
(252, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 176, 177, 0, '', 1),
(253, 'main', 'K2_INFORMATION', 'k2-information', '', 'com-k2/k2-information', 'index.php?option=com_k2&view=info', 'component', 0, 243, 2, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 178, 179, 0, '', 1),
(254, 'main', 'COM_BT_SOCIAL_MENU', 'com-bt-social-menu', '', 'com-bt-social-menu', 'index.php?option=com_bt_socialconnect', 'component', 0, 1, 1, 10040, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_bt_socialconnect/assets/icon/social_connect.gif', 0, '', 181, 196, 0, '', 1),
(255, 'main', 'COM_BT_SOCIAL_MENU_CPANEL', 'com-bt-social-menu-cpanel', '', 'com-bt-social-menu/com-bt-social-menu-cpanel', 'index.php?option=com_bt_socialconnect&view=cpanel', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/cpanel_16.png', 0, '', 182, 183, 0, '', 1),
(256, 'main', 'COM_BT_SOCIAL_MENU_SOCIALCONNECTS', 'com-bt-social-menu-socialconnects', '', 'com-bt-social-menu/com-bt-social-menu-socialconnects', 'index.php?option=com_bt_socialconnect&view=socialconnects', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/user_16.png', 0, '', 184, 185, 0, '', 1),
(257, 'main', 'COM_BT_SOCIAL_MENU_USERFIELDS', 'com-bt-social-menu-userfields', '', 'com-bt-social-menu/com-bt-social-menu-userfields', 'index.php?option=com_bt_socialconnect&view=userfields', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/userfield_16.png', 0, '', 186, 187, 0, '', 1),
(258, 'main', 'COM_BT_SOCIAL_MENU_SOCIALPUBLISHES', 'com-bt-social-menu-socialpublishes', '', 'com-bt-social-menu/com-bt-social-menu-socialpublishes', 'index.php?option=com_bt_socialconnect&view=channels', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/systemconnect_16.png', 0, '', 188, 189, 0, '', 1),
(259, 'main', 'COM_BT_SOCIAL_MENU_WIDGETS', 'com-bt-social-menu-widgets', '', 'com-bt-social-menu/com-bt-social-menu-widgets', 'index.php?option=com_bt_socialconnect&view=widgets', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/widget_16.png', 0, '', 190, 191, 0, '', 1),
(260, 'main', 'COM_BT_SOCIAL_MENU_MESSAGES', 'com-bt-social-menu-messages', '', 'com-bt-social-menu/com-bt-social-menu-messages', 'index.php?option=com_bt_socialconnect&view=messages', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/messagelog_16.png', 0, '', 192, 193, 0, '', 1),
(261, 'main', 'COM_BT_SOCIAL_MENU_STATISTICS', 'com-bt-social-menu-statistics', '', 'com-bt-social-menu/com-bt-social-menu-statistics', 'index.php?option=com_bt_socialconnect&view=statistics', 'component', 0, 254, 2, 10040, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/statistics_16.png', 0, '', 194, 195, 0, '', 1),
(263, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena', 'component', 0, 1, 1, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 197, 220, 0, '', 1),
(264, 'main', 'COM_KUNENA_DASHBOARD', 'com-kunena-dashboard', '', 'com-kunena/com-kunena-dashboard', 'index.php?option=com_kunena&view=cpanel', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '', 198, 199, 0, '', 1),
(265, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-categories.png', 0, '', 200, 201, 0, '', 1),
(266, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-users.png', 0, '', 202, 203, 0, '', 1),
(267, 'main', 'COM_KUNENA_FILE_MANAGER', 'com-kunena-file-manager', '', 'com-kunena/com-kunena-file-manager', 'index.php?option=com_kunena&view=attachments', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-files.png', 0, '', 204, 205, 0, '', 1),
(268, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-smileys.png', 0, '', 206, 207, 0, '', 1),
(269, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-ranks.png', 0, '', 208, 209, 0, '', 1),
(270, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-templates.png', 0, '', 210, 211, 0, '', 1),
(271, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-prune.png', 0, '', 212, 213, 0, '', 1),
(272, 'main', 'COM_KUNENA_PLUGIN_MANAGER', 'com-kunena-plugin-manager', '', 'com-kunena/com-kunena-plugin-manager', 'index.php?option=com_kunena&view=plugins', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-plugins.png', 0, '', 214, 215, 0, '', 1),
(273, 'main', 'COM_KUNENA_FORUM_TOOLS', 'com-kunena-forum-tools', '', 'com-kunena/com-kunena-forum-tools', 'index.php?option=com_kunena&view=tools', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-config.png', 0, '', 216, 217, 0, '', 1),
(274, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 0, 263, 2, 10021, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-trash.png', 0, '', 218, 219, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'kunenamenu', 'Kunena Menu', 'This is the default Kunena menu. It is used as the top navigation for Kunena. It can be publish in any module position. Simply unpublish items that are not required.'),
(4, 'our-courses', 'Our courses', ''),
(5, 'fr-main-menu', 'FR - Main Menu', ''),
(6, 'de-main-menu', 'DE - Main menu', ''),
(7, 'nl-main-menu', 'NL - Main menu', ''),
(8, 'cz-main-menu', 'CZ - Main Menu', ''),
(9, 'default', 'Default', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`) USING BTREE,
  KEY `newsfeeds` (`module`,`published`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'mainnav', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Module login', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":" box-mod","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Pathway', '', '', 1, 'navhelper', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_comments', 1, 1, '', 0, '*'),
(88, 56, 'K2 Content', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_content', 1, 1, '', 0, '*'),
(89, 57, 'Tags module', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":" box-mod","module_usage":"7","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 58, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_users', 1, 1, '', 0, '*'),
(91, 59, 'K2 User', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_user', 1, 1, '', 0, '*'),
(92, 60, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(93, 61, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(95, 65, 'BT Background Scrolling', '', '', 1, 'top_mainbody', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_backgroundscrolling', 1, 1, '{"height":"470","speedFactor":"0.1","background":"images\\/index_landing5.jpg","text":"<div class=\\"custom_top_mainbody\\">\\r\\n<div class=\\"top_mainbody_content container\\">\\r\\n<h3 class=\\"top_mainbody_title classEffect\\">Get bt education now<\\/h3>\\r\\n<div class=\\"top_mainbody_desc classEffect\\">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<\\/div>\\r\\n<div class=\\"button_download classEffect\\"><a href=\\"#\\">Download<\\/a><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 66, 'BT Background SlideShow', '', '', 1, 'background_slideshow', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_backgroundslideshow', 1, 1, '{"source":"upload","jfolder_path":"images","flickr_userid":"","flickr_api":"","picasa_userid":"","yt_link":"","remote_image":"0","get_limit":"20","gallery":"W3siZmlsZSI6IjY1NzU5M2I5NTMzYmM1YTA1ZDVmMmQyNzRhMTNjMDI4LmpwZyIsInRpdGxlIjoiV2VsY29tZSB0byBCVCBFZHVjYXRpb24iLCJsaW5rIjoiIyIsInRhcmdldCI6IiIsInlvdWlkIjoiIiwicXVhbGl0eSI6Imdsb2JhbCIsImF1dG9wbGF5IjoiLTEiLCJ2b2x1bWUiOiIgR2xvYmFsIiwiZGVzYyI6IjxkaXYgY2xhc3M9XCJiZ3NsaWRlc2hvd19kZXNjXCI+XG48ZGl2IGNsYXNzPVwiYmdzbGlkZXNob3dfZGVzY19iaWdcIj5cblByYWVzZW50IGVsZWlmZW5kIGNvbnZhbGxpc1xuPC9kaXY+XG48ZGl2IGNsYXNzPVwiYmdzbGlkZXNob3dfZGVzY19zbWFsbFwiPlxuUHJvaW4gc2VkIGZyaW5naWxsYSBwdXJ1cy4gU3VzcGVuZGlzc2UgbWF0dGlzIGRpY3R1bSBzb2xsaWNpdHVkaW4uIE5hbSB2YXJpdXMsIGxlbyBzZWQgZmVybWVudHVtIHVsdHJpY2llcywgZmVsaXMgZGlhbSBncmF2aWRhIGRpYW0sIGFjIG1hbGVzdWFkYSBhcmN1IHRvcnRvciBzZWQgZWxpdC4gU3VzcGVuZGlzc2UgYXQgZGlhbSBhIG1pIHJob25jdXMgdmVuZW5hdGlzLlxuPC9kaXY+XG48ZGl2IGNsYXNzPVwiYmdzbGlkZXNob3dfZGVzY19idXR0b25cIj5cbjxhIGhyZWY9XCIjXCIgY2xhc3M9XCJzbGlkZXNob3dfYnV0dG9uXCI+UmVhZG1vcmU8L2E+XG48L2Rpdj5cblxuPC9kaXY+In0seyJmaWxlIjoiNjNiNTIyYzEwYTE0MWUzNDVmNWE2NThlMTJmMTA3MzIuanBnIiwidGl0bGUiOiJKb29tbGEgU29jaWFsIENvbXBvbmVudCIsImxpbmsiOiIiLCJ0YXJnZXQiOiIiLCJ5b3VpZCI6IiIsInF1YWxpdHkiOiJnbG9iYWwiLCJhdXRvcGxheSI6Ii0xIiwidm9sdW1lIjoiIEdsb2JhbCIsImRlc2MiOiI8ZGl2IGNsYXNzPVwiYmdzbGlkZXNob3dfZGVzY1wiPlxuPGRpdiBjbGFzcz1cImJnc2xpZGVzaG93X2Rlc2NfYmlnXCI+XG5CZXN0IEpvb21sYSBlZHVjYXRpb24gdGVtcGxhdGUhIFxuPC9kaXY+XG48ZGl2IGNsYXNzPVwiYmdzbGlkZXNob3dfZGVzY19zbWFsbFwiPlxuUHJvaW4gc2VkIGZyaW5naWxsYSBwdXJ1cy4gU3VzcGVuZGlzc2UgbWF0dGlzIGRpY3R1bSBzb2xsaWNpdHVkaW4uIE5hbSB2YXJpdXMsIGxlbyBzZWQgZmVybWVudHVtIHVsdHJpY2llcywgZmVsaXMgZGlhbSBncmF2aWRhIGRpYW0sIGFjIG1hbGVzdWFkYSBhcmN1IHRvcnRvciBzZWQgZWxpdC4gU3VzcGVuZGlzc2UgYXQgZGlhbSBhIG1pIHJob25jdXMgdmVuZW5hdGlzLlxuPC9kaXY+XG48ZGl2IGNsYXNzPVwiYmdzbGlkZXNob3dfZGVzY19idXR0b25cIj5cbjxhIGhyZWY9XCIjXCIgY2xhc3M9XCJzbGlkZXNob3dfYnV0dG9uXCI+UmVhZG1vcmU8L2E+XG48L2Rpdj5cblxuPC9kaXY+In1d","slideshowSize":"wrapper","slideshowWidth":"","slideshowHeight":"","resizeImage":"auto","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"5","display_order":"ordering","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"disabled","nex-back-button":"0","playpause-button":"0","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"disabled","nav-position":"absolute","progress-bar":"1","autoplay":"1","stopAuto":"1","shvideo":"1","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"1","videovolume":"100","wrapper_element":".background_slideshow","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","stylesheet":".background_slideshow{height:590px;}","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 67, 'What''s news?', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" showcase_style1","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"220","items_per_cols":"1","items_per_rows":"2","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"500","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["8"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"130","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"1","show_date":"1","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_thumb":"1","thumbnail_width":"270","thumbnail_height":"220","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"2","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 68, 'BT Google Maps', '', '', 1, 'contact-map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_googlemaps', 1, 0, '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"460","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","markes":"W10=","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","styles":"W10=","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 70, 'BT Social Connect - Login', '', '', 2, 'head_login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_btsocialconnect_login', 1, 0, '{"layout":"_:popup","align_option":"right","display_type":"0","mouse_event":"click","logout_button":"1","enabled_registration_tab":"1","tag_login_modal":"","tag_register_modal":"","loginbox_size":"auto","registrationbox_size":"auto","login":"","logout":"","name":"0","avatar":"1","module_id":["105"],"usesecure":"0","moduleclass_sfx":" popup_style","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 71, 'BT Social Connect - Widget', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_btsocialconnect_widget', 1, 1, '', 0, '*'),
(101, 72, 'Background slideshow content', '', '', 1, 'background_slideshow_content', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_backgroundslideshow', 1, 1, '{"source":"upload","jfolder_path":"images","flickr_userid":"","flickr_api":"","picasa_userid":"","yt_link":"","remote_image":"0","get_limit":"20","gallery":"W3siZmlsZSI6IjFiYjgwYjZhMTk4YmNhMjU2ODk2NWZjMzI5MDg5M2RkLmpwZyIsInRpdGxlIjoiMWJiODBiNmExOThiY2EyNTY4OTY1ZmMzMjkwODkzZGQuanBnIn1d","slideshowSize":"wrapper","slideshowWidth":"","slideshowHeight":"","resizeImage":"auto","hAlign":"c","vAlign":"m","slideshowSpeed":"8000","effecttype":"fade","slidedirection":"left","effectTime":"2000","caption":"0","display_order":"ordering","bgo-pattern":"","bgo-opacity":"0.5","nav-type":"disabled","nex-back-button":"1","playpause-button":"1","thumb_number":"3","thumb_width":"80","thumb_height":"50","nav-align":"center","nav-position":"fixed","progress-bar":"0","autoplay":"0","stopAuto":"1","shvideo":"1","controltype":"0","keepcontrolvideo":"2","videoquanlity":"highres","videoautoplay":"0","videovolume":"100","wrapper_element":".background_slideshow_content","title_font":"","title_color":"#ffffff","title_size":"18","desc_font":"","desc_color":"#ffffff","desc_size":"12","nav_bg":"#222222","progress_bg":"#A2080C","stylesheet":".background_slideshow_content{height:155px;}","crop_image":"0","jpeg_compression":"100","crop_width":"1600","crop_height":"1000","load_jquery":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 73, 'Head contact infor', '', '<div class="head_contact_infor">\r\n<div class="infor_email">bowthemes@gmail.com</div>\r\n<div class="infor_phone">+84 4 2214757</div>\r\n</div>', 1, 'head_infor', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 74, 'Search', '', '', 1, 'head_search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"0","button_pos":"left","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(104, 75, 'Why choose us?', '', '<div class="why_about_us">\r\n<div class="title_why">\r\n<div class="title_why_big">Why choose us?</div>\r\n<div class="title_why_sub">Lorem ipsum dolor sit amet, consectetur adipiscing elit</div>\r\n<div style="clear: both; height: 0; border: none;">&nbsp;</div>\r\n</div>\r\n<div class="content_why">\r\n<div class="content_why_box box1">\r\n<div class="content_why_box_inner"><a href="#"> <span class="description_box">Reponsive</span> <span class="content_box_link">See more</span> </a></div>\r\n</div>\r\n<div class="content_why_box box2">\r\n<div class="content_why_box_inner"><a href="#"> <span class="description_box">kunena forum</span> <span class="content_box_link">See more</span> </a></div>\r\n</div>\r\n<div class="content_why_box box3">\r\n<div class="content_why_box_inner"><a href="#"> <span class="description_box">Jomsocial</span> <span class="content_box_link">See more</span> </a></div>\r\n</div>\r\n<div class="content_why_box box4">\r\n<div class="content_why_box_inner"><a href="#"> <span class="description_box">easy blog</span> <span class="content_box_link">See more</span> </a></div>\r\n</div>\r\n<div class="content_why_box box5">\r\n<div class="content_why_box_inner"><a href="#"> <span class="description_box">power admin</span> <span class="content_box_link">See more</span> </a></div>\r\n</div>\r\n<div style="clear: both; height: 0; border: none;">&nbsp;</div>\r\n</div>\r\n</div>', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 76, 'Userful links', '', '', 1, 'footer-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu_footer","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(106, 77, 'About bt education', '', '<p><img src="images/icon/icon_about_footer.png" alt="" border="0" />Dlor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor  invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor</p>', 1, 'footer-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" about_footer","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 78, 'Who''s online?', '', '', 1, 'footer-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(108, 79, 'Contact now!', '', '<div class="phone_and_email">\r\n<div class="small_number">84-4</div>\r\n<div class="big_number">11 224467</div>\r\n<div class="contact_email">support@bowthemes.com</div>\r\n</div>\r\n<div class="contact_add">Room 2209 GP Invest Building, 170 La Thanh Street, Dong Da Dist, Ha Noi, Vietnam</div>', 1, 'footer-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" contact_footer","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 80, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 81, 'Adv module image', '', '<p><img src="images/image1.jpg" alt="" border="0" /></p>', 2, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 82, 'Top social', '', '<div class="social_head"><a class="social_ff" href="#"><span>fb</span></a> <a class="social_tt" href="#"><span>tt</span></a> <a class="social_pt" href="#"><span>pt</span></a> <a class="social_ln" href="#"><span>ln</span></a> <a class="social_db" href="#"><span>db</span></a></div>', 1, 'social_header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 87, 'What''s news? copy', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_contentshowcase', 1, 0, '{"moduleclass_sfx":" showcase_style2","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"320","items_per_cols":"1","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"250","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"0","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["8"],"easyblog_article_ids":"","auto_category":"0","limit_items":"9","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"35","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"1","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"1","thumbnail_width":"276","thumbnail_height":"160","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"2","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 88, 'Get in touch', '', '<div class="icon-click show"> </div>\r\n<div class="get-in-touch-content">\r\n<h3>Get in touch</h3>\r\n<p class="address">403 #A2 DN3 Nguyen Khanh Toan, Cau Giay, Ha Noi, Viet Nam</p>\r\n<p class="email">info@bowthemes.com</p>\r\n<p class="phone">123456789</p>\r\n</div>', 1, 'contact-map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":" get-in-touch","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(117, 95, 'Archive', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":" box-mod archive","module_usage":"0","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"","width":"20","text":"","button":"","imagebutton":"","button_text":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(118, 97, 'Monthly Newsletter', '', '', 1, 'footer-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_acymailing', 1, 1, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"vertical","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","listposition":"before","customfields":"email","nametext":"","emailtext":"","fieldsize":"100%","displayfields":"0","introtext":"Keep up to date on the latest from our network:","finaltext":"","showsubscribe":"1","subscribetext":"Enter","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","includejs":"header","itemid":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(138, 118, 'Our courses', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"our-courses","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu_sidebar","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(140, 120, 'Language Switcher', '', '', 1, 'head_login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(142, 122, 'What''s news? (2)', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" showcase_style1","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"220","items_per_cols":"1","items_per_rows":"2","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"500","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["8"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"130","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"1","show_date":"1","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_thumb":"1","thumbnail_width":"270","thumbnail_height":"220","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"2","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(143, 123, 'What''s news? (3)', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" showcase_style1","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"220","items_per_cols":"1","items_per_rows":"2","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"500","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["8"],"easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"130","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"1","show_date":"1","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_thumb":"1","thumbnail_width":"270","thumbnail_height":"220","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"2","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(144, 124, 'Showcase Bottom', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 0, '{"moduleclass_sfx":" showcase_style2","content_title":"","content_title_link":"","layout":"default","module_width":"auto","item_height":"auto","items_per_cols":"1","items_per_rows":"4","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"250","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"0","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","easyblog_article_ids":"","auto_category":"0","sub_categories":"0","exclude_categories":"","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"0","show_readmore":"1","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"1","thumbnail_width":"276","thumbnail_height":"160","image_quality":"80","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 128),
(16, 151),
(16, 163),
(16, 164),
(16, 165),
(16, 166),
(17, 0),
(79, 0),
(86, 0),
(89, 151),
(89, 163),
(89, 164),
(89, 165),
(89, 166),
(92, 0),
(93, 0),
(95, 101),
(95, 222),
(95, 223),
(95, 224),
(95, 225),
(95, 226),
(96, 101),
(96, 222),
(96, 223),
(96, 224),
(96, 225),
(96, 226),
(97, 101),
(97, 222),
(97, 223),
(97, 224),
(97, 225),
(97, 226),
(98, 161),
(99, 0),
(101, -101),
(102, 0),
(103, 0),
(104, 101),
(104, 222),
(104, 223),
(104, 224),
(104, 225),
(104, 226),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 101),
(110, 222),
(110, 223),
(110, 224),
(110, 225),
(110, 226),
(111, 0),
(112, 101),
(113, 161),
(117, 151),
(117, 163),
(117, 164),
(117, 165),
(117, 166),
(118, 0),
(138, 0),
(140, 0),
(142, 101),
(142, 222),
(142, 223),
(142, 224),
(142, 225),
(142, 226),
(143, 101),
(143, 222),
(143, 223),
(143, 224),
(143, 225),
(143, 226),
(144, 101),
(144, 222),
(144, 223),
(144, 224),
(144, 225),
(144, 226);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_state` (`published`) USING BTREE,
  KEY `idx_catid` (`catid`) USING BTREE,
  KEY `idx_createdby` (`created_by`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE,
  KEY `idx_xreference` (`xreference`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__overrider`
--

CREATE TABLE IF NOT EXISTS `#__overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `#__postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__postinstall_messages`
--

INSERT INTO `#__postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(4, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(5, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(6, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(7, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

CREATE TABLE IF NOT EXISTS `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`) USING BTREE,
  KEY `idx_link_modifed` (`modified_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__schemas`
--

INSERT INTO `#__schemas` (`extension_id`, `version_id`) VALUES
(10040, '1.1.0');

-- --------------------------------------------------------

--
-- Table structure for table `#__session`
--

CREATE TABLE IF NOT EXISTS `#__session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__session`
--

INSERT INTO `#__session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('i8m7d39lpmb2pi49l98sbs6rt3', 1, 0, '1434018427', '__default|a:9:{s:15:"session.counter";i:84;s:19:"session.timer.start";i:1434016231;s:18:"session.timer.last";i:1434018426;s:17:"session.timer.now";i:1434018426;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":4:{s:8:"menutype";s:8:"mainmenu";s:10:"limitstart";s:1:"0";s:4:"list";a:2:{s:12:"fullordering";s:9:"a.lft ASC";s:5:"limit";s:2:"20";}s:6:"filter";a:5:{s:6:"search";s:0:"";s:9:"published";s:0:"";s:5:"level";s:0:"";s:6:"access";s:0:"";s:8:"language";s:0:"";}}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:0:{}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}s:13:"com_templates";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:5:"style";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:18:"client_id_previous";i:0;s:6:"search";s:0:"";s:6:"access";i:0;s:5:"state";s:0:"";s:8:"position";s:0:"";s:6:"module";s:22:"mod_bt_contentshowcase";s:9:"client_id";i:0;s:8:"language";s:0:"";}s:8:"ordercol";s:8:"position";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:100;}}s:13:"com_installer";O:8:"stdClass":4:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;s:6:"manage";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":5:{s:6:"search";s:0:"";s:9:"client_id";s:0:"";s:6:"status";s:0:"";s:4:"type";s:8:"template";s:5:"group";s:0:"";}s:8:"ordercol";s:4:"name";s:9:"orderdirn";s:3:"asc";s:10:"limitstart";i:0;}}}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":29:{s:9:"\\0\\0\\0isRoot";b:1;s:2:"id";s:3:"150";s:4:"name";s:9:"Bowthemes";s:8:"username";s:9:"bowthemes";s:5:"email";s:15:"admin@gmail.com";s:8:"password";s:60:"$2y$10$vGOZ/h5qlpb4JZbEOVcTvu0AH97/xrClGR5g6fo5/e0PW6GlnOz6y";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-06-02 01:54:09";s:13:"lastvisitDate";s:19:"2015-06-11 07:44:46";s:10:"activation";s:1:"0";s:6:"params";s:114:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}";s:6:"groups";a:2:{i:8;s:1:"8";i:10;s:2:"10";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:12:"requireReset";s:1:"0";s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":7:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";s:17:"update_cache_list";i:1;}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:4:{i:0;i:1;i:1;i:8;i:3;i:2;i:4;i:10;}s:14:"\\0\\0\\0_authLevels";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";s:3:"gid";i:1000;}s:13:"session.token";s:32:"c33ef740a0d4c748fe9c28d39396f322";s:16:"jomsocial_userip";s:9:"127.0.0.1";}', 150, 'bowthemes'),
('voif906tglidn9bffi4j23apo7', 0, 1, '1434018939', '__default|a:10:{s:15:"session.counter";i:102;s:19:"session.timer.start";i:1433987763;s:18:"session.timer.last";i:1434018934;s:17:"session.timer.now";i:1434018938;s:22:"session.client.browser";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36";s:8:"registry";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:13:"current_theme";N;s:17:"current_direction";s:3:"ltr";s:17:"current_key_sufix";s:5:"__ltr";}s:9:"separator";s:1:".";}s:4:"user";O:5:"JUser":26:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:12:"requireReset";N;s:10:"\\0\\0\\0_params";O:24:"Joomla\\Registry\\Registry":2:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}s:9:"separator";s:1:".";}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:13:"\\0\\0\\0userHelper";O:18:"JUserWrapperHelper":0:{}s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"de6435a7ae050c7ed36a7a7ff3507867";s:16:"jomsocial_userip";s:9:"127.0.0.1";s:13:"groups_name_1";s:9:"Bowthemes";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__tags`
--

CREATE TABLE IF NOT EXISTS `#__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`) USING BTREE,
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_path` (`path`) USING BTREE,
  KEY `idx_left_right` (`lft`,`rgt`) USING BTREE,
  KEY `idx_alias` (`alias`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `#__tags`
--

INSERT INTO `#__tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`) USING BTREE,
  KEY `idx_home` (`home`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'bt_education', 0, '1', 'BT_Education - Default', '{"t3_template":"1","devmode":"1","themermode":"1","responsive":"1","build_rtl":"1","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default-content-left","sublayout":"default-content-left","navigation_trigger":"hover","navigation_collapse_offcanvas":"0","navigation_collapse_showsub":"1","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"400","mm_type":"mainmenu","mm_config":"","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_base`
--

CREATE TABLE IF NOT EXISTS `#__ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`) USING BTREE,
  KEY `idx_ucm_type_id` (`ucm_type_id`) USING BTREE,
  KEY `idx_ucm_language_id` (`ucm_language_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_content`
--

CREATE TABLE IF NOT EXISTS `#__ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`) USING BTREE,
  KEY `idx_access` (`core_access`) USING BTREE,
  KEY `idx_alias` (`core_alias`) USING BTREE,
  KEY `idx_language` (`core_language`) USING BTREE,
  KEY `idx_title` (`core_title`) USING BTREE,
  KEY `idx_modified_time` (`core_modified_time`) USING BTREE,
  KEY `idx_created_time` (`core_created_time`) USING BTREE,
  KEY `idx_content_type` (`core_type_alias`) USING BTREE,
  KEY `idx_core_modified_user_id` (`core_modified_user_id`) USING BTREE,
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`) USING BTREE,
  KEY `idx_core_created_user_id` (`core_created_user_id`) USING BTREE,
  KEY `idx_core_type_id` (`core_type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__ucm_history`
--

CREATE TABLE IF NOT EXISTS `#__ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`) USING BTREE,
  KEY `idx_save_date` (`save_date`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `#__ucm_history`
--

INSERT INTO `#__ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 6, '', '2014-06-02 09:22:08', 151, 523, 'c25429c2a9b6b523241dba7cc95b3ab9707edc39', '{"id":8,"asset_id":83,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"News Events","alias":"news-events","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"151","created_time":"2014-06-02 09:22:08","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null}', 0),
(2, 1, 1, '', '2014-06-02 09:24:02', 151, 2413, '8028a5e694e04f82d9d89042d7f49a86e9af0256', '{"id":1,"asset_id":84,"title":" Nulla consequat mollis magna, et feugiat magna placerat","alias":"nulla-consequat-mollis-magna-et-feugiat-magna-placerat","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"2","created":"2014-06-02 09:24:02","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-02 09:24:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/slider1-960x430.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/slider1-960x430.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 1, 1, '', '2014-06-02 09:27:22', 151, 2451, '302f502eabeaa7ade242d8ca91b8f31d27c7426f', '{"id":1,"asset_id":"84","title":" Nulla consequat mollis magna, et feugiat magna placerat","alias":"nulla-consequat-mollis-magna-et-feugiat-magna-placerat","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-02 09:24:02","created_by":"151","created_by_alias":"","modified":"2014-06-02 09:27:22","modified_by":"151","checked_out":"151","checked_out_time":"2014-06-02 09:27:14","publish_up":"2014-06-02 09:24:02","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/slider1-960x430.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/slider1-960x430.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 2, 1, '', '2014-06-02 09:38:19', 151, 2406, 'b6a773d49fa26852ebdde731d7f185b3a6f4ff74', '{"id":2,"asset_id":85,"title":"Cum sociis natoque penatibus et magnis dis ","alias":"cum-sociis-natoque-penatibus-et-magnis-dis","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-02 09:38:19","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-02 09:38:19","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/01-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/01-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 3, 1, '', '2014-06-02 09:39:53', 151, 2420, '071bfc04cf019b47f92502affa433f9945a9ed4e', '{"id":3,"asset_id":86,"title":"Curabitur non porttitor mauris, id bibendum turpis","alias":"curabitur-non-porttitor-mauris-id-bibendum-turpis","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-02 09:39:53","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-02 09:39:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/03-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/03-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 1, 3, '', '2014-06-02 10:16:36', 151, 1597, '1ea9183455ff1e0504194cd27e8fed8c83482fee', '{"id":1,"name":"Webmaster","alias":"webmaster","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"0","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-06-02 10:16:36","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(7, 1, 3, '', '2014-06-02 10:23:45', 151, 1637, 'c3b176436ac72c3a60a14970d413858815704019', '{"id":1,"name":"Webmaster","alias":"webmaster","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":"151","checked_out_time":"2014-06-02 10:23:37","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"0","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-06-02 10:16:36","created_by":"151","created_by_alias":"","modified":"2014-06-02 10:23:45","modified_by":"151","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"4"}', 0),
(8, 1, 3, '', '2014-06-02 10:25:54', 151, 1658, '977d9669bf0434565f0cb5cadfccec428d32848b', '{"id":1,"name":"Webmaster","alias":"webmaster","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"webmaster@example.com","default_con":0,"published":"1","checked_out":"151","checked_out_time":"2014-06-02 10:25:47","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":\\"\\",\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"1\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"0","catid":"4","access":"1","mobile":"","webpage":"","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2014-06-02 10:16:36","created_by":"151","created_by_alias":"","modified":"2014-06-02 10:25:54","modified_by":"151","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":4,"hits":"6"}', 0),
(9, 4, 1, '', '2014-06-03 01:43:11', 151, 2421, '67f1c10a70240761c0954b75216eb68130b36b43', '{"id":4,"asset_id":89,"title":"In id elit et metus tincidunt varius non ac tortor","alias":"in-id-elit-et-metus-tincidunt-varius-non-ac-tortor","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"2","created":"2014-06-03 01:43:11","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-03 01:43:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/05-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/05-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 4, 1, '', '2014-06-03 01:43:57', 151, 2459, 'e5e9bf6c58ba5530e0d3a48a5d14314012e1c03e', '{"id":4,"asset_id":"89","title":"In id elit et metus tincidunt varius non ac tortor","alias":"in-id-elit-et-metus-tincidunt-varius-non-ac-tortor","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-03 01:43:11","created_by":"151","created_by_alias":"","modified":"2014-06-03 01:43:57","modified_by":"151","checked_out":"151","checked_out_time":"2014-06-03 01:43:51","publish_up":"2014-06-03 01:43:11","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/05-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/05-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 5, 1, '', '2014-06-03 01:45:39', 151, 2471, '3e777f05d6229e5b9a9fc256b5c0344876474a22', '{"id":5,"asset_id":90,"title":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In nec lacus luctus","alias":"lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-in-nec-lacus-luctus","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-03 01:45:39","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-03 01:45:39","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/06-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/06-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 6, 1, '', '2014-06-03 01:46:37', 151, 2447, 'a70a91c29f6b08de7308490dd35a02726674835b', '{"id":6,"asset_id":91,"title":"Vestibulum suscipit nunc non nunc hendrerit varius at vitae est","alias":"vestibulum-suscipit-nunc-non-nunc-hendrerit-varius-at-vitae-est","introtext":"<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-03 01:46:37","created_by":"151","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-06-03 01:46:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 6, 1, '', '2015-06-11 07:50:26', 150, 2503, '739aba89352a562c8da851b8cf87292d51a2e89b', '{"id":6,"asset_id":"91","title":"Vestibulum suscipit nunc non nunc hendrerit varius at vitae est","alias":"vestibulum-suscipit-nunc-non-nunc-hendrerit-varius-at-vitae-est","introtext":"<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-03 01:46:37","created_by":"151","created_by_alias":"","modified":"2015-06-11 07:50:26","modified_by":"150","checked_out":"150","checked_out_time":"2015-06-11 07:49:58","publish_up":"2014-06-03 01:46:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 6, 1, '', '2015-06-11 07:51:35', 150, 2511, '631f937ac1b88904021644aa45fe28a8f0498a4c', '{"id":6,"asset_id":"91","title":"Vestibulum suscipit nunc non nunc hendrerit varius at vitae est","alias":"vestibulum-suscipit-nunc-non-nunc-hendrerit-varius-at-vitae-est","introtext":"<p><a>\\u00a0<\\/a><\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-03 01:46:37","created_by":"151","created_by_alias":"","modified":"2015-06-11 07:51:35","modified_by":"150","checked_out":"150","checked_out_time":"2015-06-11 07:51:05","publish_up":"2014-06-03 01:46:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 6, 1, '', '2015-06-11 07:51:58', 150, 2520, 'ed68db2c418dfec4c91a7622386b0b84a587086d', '{"id":6,"asset_id":"91","title":"Vestibulum suscipit nunc non nunc hendrerit varius at vitae est","alias":"vestibulum-suscipit-nunc-non-nunc-hendrerit-varius-at-vitae-est","introtext":"<p><a>\\u00a0<\\/a> <i><\\/i><\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Sed commodo eleifend pulvinar. Ut sed ipsum ut dolor ullamcorper gravida. Vestibulum viverra a eros pellentesque auctor. Mauris vitae ipsum lectus. Proin non aliquam magna. Donec tempus ultricies augue id suscipit. Nam magna arcu, ornare a justo vestibulum, pulvinar commodo arcu....<\\/p>","state":1,"catid":"8","created":"2014-06-03 01:46:37","created_by":"151","created_by_alias":"","modified":"2015-06-11 07:51:58","modified_by":"150","checked_out":"150","checked_out_time":"2015-06-11 07:51:35","publish_up":"2014-06-03 01:46:37","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"images\\\\\\/blog\\\\\\/07-stat-fort-uni-980x408.jpg\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=328 ;

--
-- Dumping data for table `#__updates`
--

INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(2, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(3, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(4, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(5, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'http://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(6, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.3.3.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(7, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(8, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(9, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(10, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(11, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(12, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.2', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(13, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(14, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(15, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(16, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(17, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(18, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(19, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(20, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(21, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(22, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(23, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(24, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(25, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(26, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(27, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(28, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(29, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(30, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(31, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(32, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(33, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(34, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(35, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(36, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(37, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.3.3.15', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(38, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(39, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(40, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(41, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(42, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(43, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.1.2', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(44, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.0.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(45, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(46, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(47, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(48, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(49, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.1.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(50, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(51, 3, 0, 'EnglishCA', '', 'pkg_en-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(52, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(53, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(54, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(55, 4, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', ''),
(56, 4, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', ''),
(57, 4, 0, 'JA Amazon S3 for joomla 2.5 & 3.x', '', 'com_jaamazons3', 'component', '', 1, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '', ''),
(58, 4, 0, 'JA Comment Package for Joomla 2.5 & 3.3', '', 'com_jacomment', 'component', '', 1, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '', ''),
(59, 4, 0, 'JA Extenstion Manager Component for J25 & J3', '', 'com_jaextmanager', 'component', '', 1, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', '', ''),
(60, 4, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', ''),
(61, 4, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', ''),
(62, 4, 0, 'JA K2 Filter Package for J25 & J3.4', '', 'com_jak2filter', 'component', '', 1, '1.1.9', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '', ''),
(63, 4, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', ''),
(64, 4, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', ''),
(65, 4, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', ''),
(66, 4, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', '', ''),
(67, 4, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', '', ''),
(68, 4, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', '', ''),
(69, 4, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', '', ''),
(70, 4, 0, 'Theme Fixel for Easyblog J25 & J34', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '', ''),
(71, 4, 0, 'Theme Magz for Easyblog J25 & J34', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', '', ''),
(72, 4, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(73, 4, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(74, 4, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml', '', ''),
(75, 4, 0, 'JA Anion template for Joomla 2.5', '', 'ja_anion', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(76, 4, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(77, 4, 0, 'JA Argo Template for J3x', '', 'ja_argo', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(78, 4, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(79, 4, 0, 'JA Bistro Template for Joomla 2.5', '', 'ja_bistro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(80, 4, 0, 'JA Blazes Template for J25 & J31', '', 'ja_blazes', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(81, 4, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(82, 4, 0, 'JA Brisk Template for J25 & J33', '', 'ja_brisk', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(83, 4, 0, 'JA Business Template for Joomla 2.5', '', 'ja_business', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(84, 4, 0, 'JA Cloris Template for Joomla 2.5.x', '', 'ja_cloris', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(85, 4, 0, 'JA Community PLus Template for Joomla 2.5', '', 'ja_community_plus', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(86, 4, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', '', ''),
(87, 4, 0, 'JA Droid Template for Joomla 2.5', '', 'ja_droid', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(88, 4, 0, 'JA Edenite Template for J25 & J30', '', 'ja_edenite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(89, 4, 0, 'JA Elastica Template for J25 & J32', '', 'ja_elastica', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(90, 4, 0, 'JA Erio Template for Joomla 2.5 & 3.1', '', 'ja_erio', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(91, 4, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(92, 4, 0, 'JA Fubix Template for J25 & J33', '', 'ja_fubix', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(93, 4, 0, 'JA Graphite Template for Joomla 2.5', '', 'ja_graphite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(94, 4, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(95, 4, 0, 'JA Ironis Template for Joomla 2.5 & 3.1', '', 'ja_ironis', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(96, 4, 0, 'JA Jason template', '', 'ja_jason', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_jason.xml', '', ''),
(97, 4, 0, 'JA Kranos Template for J25 & J30', '', 'ja_kranos', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(98, 4, 0, 'JA Lens Template for Joomla 2.5 & 3.1', '', 'ja_lens', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(99, 4, 0, 'Ja Lime Template for Joomla 2.5 & J31', '', 'ja_lime', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(100, 4, 0, 'JA Magz Template for J25 & J34', '', 'ja_magz', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(101, 4, 0, 'JA Medicare Template', '', 'ja_medicare', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_medicare.xml', '', ''),
(102, 4, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(103, 4, 0, 'JA Mero Template for J25 & J3x', '', 'ja_mero', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(104, 4, 0, 'JA Mers Template for J25 & J32', '', 'ja_mers', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(105, 4, 0, 'JA Methys Template for Joomla 2.5', '', 'ja_methys', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(106, 4, 0, 'Ja Minisite Template for Joomla 2.5', '', 'ja_minisite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(107, 4, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(108, 4, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(109, 4, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(110, 4, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(111, 4, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(112, 4, 0, 'JA Nuevo template', '', 'ja_nuevo', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml', '', ''),
(113, 4, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(114, 4, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(115, 4, 0, 'JA ores template for Joomla 2.5 & 3.1', '', 'ja_ores', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(116, 4, 0, 'JA Orisite Template  for J25 & J32', '', 'ja_orisite', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(117, 4, 0, 'JA Playmag Template', '', 'ja_playmag', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_playmag.xml', '', ''),
(118, 4, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(119, 4, 0, 'JA Portfolio Template for Joomla 2.5', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(120, 4, 0, 'JA Puresite Template for J25 & J31', '', 'ja_puresite', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(121, 4, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(122, 4, 0, 'JA Pyro Template for Joomla 2.5', '', 'ja_pyro', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(123, 4, 0, 'JA Rasite Template for J2.5 & J31', '', 'ja_rasite', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(124, 4, 0, 'JA Rave Template for Joomla 2.5', '', 'ja_rave', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(125, 4, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(126, 4, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(127, 4, 0, 'JA Social T3 Template for J25 & J33', '', 'ja_social_ii', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml', '', ''),
(128, 4, 0, 'JA Sugite Template', '', 'ja_sugite', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_sugite.xml', '', ''),
(129, 4, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(130, 4, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(131, 4, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(132, 4, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(133, 4, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(134, 4, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(135, 4, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(136, 4, 0, 'JA Tiris Template for J25 & J3x', '', 'ja_tiris', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(137, 4, 0, 'JA Travel Template for Joomla 2.5 & 3.0', '', 'ja_travel', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(138, 4, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(139, 4, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml', '', ''),
(140, 4, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(141, 4, 0, 'JA Wall Template for J25 & J33', '', 'ja_wall', 'template', '', 0, '1.2.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(142, 4, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(143, 4, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(144, 4, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(145, 4, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(146, 4, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', ''),
(147, 4, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(148, 4, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(149, 4, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(150, 4, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(151, 4, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(152, 4, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(153, 4, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(154, 4, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(155, 4, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(156, 4, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(157, 4, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(158, 4, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(159, 4, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(160, 4, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(161, 4, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '3.2.x', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(162, 4, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(163, 4, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(164, 4, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(165, 4, 0, 'JA Tiris Jshopping theme for J25 & J3x', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(166, 4, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(167, 4, 0, 'JA Kranos kunena theme for Joomla 2.5', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(168, 4, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(169, 4, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(170, 4, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(171, 4, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(172, 4, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(173, 4, 0, 'Kunena theme for ja PlayMag', '', 'kunena_theme_playmag', 'custom', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml', '', ''),
(174, 4, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(175, 4, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(176, 4, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(177, 4, 0, 'JA Bookshop Theme for Mijoshop V2', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(178, 4, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(179, 4, 0, 'JA Decor Theme for Mijoshop V3', '', 'mijoshop_theme_decor_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor_v3.xml', '', ''),
(180, 4, 0, 'JA ACM Module', '', 'mod_ja_acm', 'module', '', 0, '2.0.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml', '', ''),
(181, 4, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(182, 4, 0, 'JA Accordion Module for J25 & J34', '', 'mod_jaaccordion', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(183, 4, 0, 'JA Animation module for Joomla 2.5 & 3.2', '', 'mod_jaanimation', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(184, 4, 0, 'JA Bulletin Module for J25 & J3', '', 'mod_jabulletin', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(185, 4, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.3', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(186, 4, 0, 'JA Content Popup Module for J25 & J34', '', 'mod_jacontentpopup', 'module', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(187, 4, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(188, 4, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(189, 4, 0, 'JA Content Slider Module for J25 & J34', '', 'mod_jacontentslider', 'module', '', 0, '2.7.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(190, 4, 0, 'JA CountDown Module for Joomla 2.5 & 3.4', '', 'mod_jacountdown', 'module', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(191, 4, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '', ''),
(192, 4, 0, 'JA Facebook Like Box Module for J25 & J30', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(193, 4, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(194, 4, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', ''),
(195, 4, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(196, 4, 0, 'JAEC Halloween Module for Joomla 2.5 & 3', '', 'mod_jahalloween', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(197, 4, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.4', '', 'mod_jaimagehotspot', 'module', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(198, 4, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(199, 4, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(200, 4, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(201, 4, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(202, 4, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(203, 4, 0, 'JA K2 Filter Module for J25 & J3.4', '', 'mod_jak2filter', 'module', '', 0, '1.1.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(204, 4, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(205, 4, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(206, 4, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(207, 4, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(208, 4, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(209, 4, 0, 'JA Login module for J25 & J3x', '', 'mod_jalogin', 'module', '', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(210, 4, 0, 'JA Masshead Module for J25 & J34', '', 'mod_jamasshead', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(211, 4, 0, 'JA News Featured Module for J25 & J34', '', 'mod_janews_featured', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(212, 4, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(213, 4, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(214, 4, 0, 'JA News Pro Module for J25 & J3x', '', 'mod_janewspro', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(215, 4, 0, 'JA Newsticker Module for J3x', '', 'mod_janewsticker', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(216, 4, 0, 'JA Quick Contact Module for J25 & J34', '', 'mod_jaquickcontact', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(217, 4, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(218, 4, 0, 'JA SideNews Module for J25 & J34', '', 'mod_jasidenews', 'module', '', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(219, 4, 0, 'JA Slideshow Module for Joomla 2.5 & 3.4', '', 'mod_jaslideshow', 'module', '', 0, '2.7.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(220, 4, 0, 'JA Slideshow Lite Module for J25 & J3.4', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(221, 4, 0, 'JA Soccerway Module for J25 & J33', '', 'mod_jasoccerway', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(222, 4, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(223, 4, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(224, 4, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.3', '', 'mod_jatoppanel', 'module', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(225, 4, 0, 'JA Twitter Module for J25 & J3.4', '', 'mod_jatwitter', 'module', '', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(226, 4, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(227, 4, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(228, 4, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(229, 4, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(230, 4, 0, 'JA AVTracklist Button plugin for J2.5 & J3.3', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(231, 4, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.3', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(232, 4, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.3', '', 'jacommenton', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(233, 4, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.1', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(234, 4, 0, 'JA AVTracklist plugin for J2.5 & J3.3', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(235, 4, 0, 'JA Bookmark plugin for J3.x', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(236, 4, 0, 'JA Comment Plugin for Joomla 2.5 & 3.3', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(237, 4, 0, 'JA Disqus Debate Echo plugin for J3x', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(238, 4, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(239, 4, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(240, 4, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(241, 4, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(242, 4, 0, 'JA Typo Button Plugin for J25 & J3x', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(243, 4, 0, 'JA K2 Filter Plg for J25 & J3.4', '', 'jak2filter', 'plugin', 'k2', 0, '1.1.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(244, 4, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(245, 4, 0, 'Multi Capcha Engine Plugin for J25 & J32', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(246, 4, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(247, 4, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(248, 4, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(249, 4, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(250, 4, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.0', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(251, 4, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(252, 4, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.3', '', 'jacomment', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(253, 4, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(254, 4, 0, 'JA System Google Map plugin for Joomla 2.5 & J3.4', '', 'jagooglemap', 'plugin', 'system', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(255, 4, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(256, 4, 0, 'JA System Lazyload Plugin for J25 & J3x', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(257, 4, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.3', '', 'janrain', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(258, 4, 0, 'JA Popup Plugin for J25 & J33', '', 'japopup', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(259, 4, 0, 'JA System Social Plugin for Joomla 2.5 & 3.0', '', 'jasocial', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(260, 4, 0, 'JA System Social Feed Plugin for Joomla 2.5 & 3.4', '', 'jasocial_feed', 'plugin', 'system', 0, '1.2.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(261, 4, 0, 'JA T3v2 System Plugin for J25 & J3x', '', 'jat3', 'plugin', 'system', 0, '2.7.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(262, 4, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(263, 4, 0, 'JA Tabs Plugin for J25 & J3.4', '', 'jatabs', 'plugin', 'system', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(264, 4, 0, 'JA Typo Plugin for J25 & J32', '', 'jatypo', 'plugin', 'system', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(265, 4, 0, 'T3 Blank Template', '', 't3_blank', 'template', '', 0, '2.1.9', '', 'http://update.joomlart.com/service/tracking/j16/t3_blank.xml', '', ''),
(266, 4, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.4', '', 'http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml', '', ''),
(267, 4, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', ''),
(268, 4, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', ''),
(269, 4, 0, 'Uber Template', '', 'uber', 'template', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j16/uber.xml', '', ''),
(270, 4, 0, 'T3 B3 Blank Template', '', 't3_bs3_blank', 'template', '', 0, '2.1.9', '', 'http://update.joomlart.com/service/tracking/j30/t3_bs3_blank.xml', '', ''),
(271, 4, 0, 'JA K2 v3 Filter package for J33', '', 'com_jak2v3filter', 'component', '', 1, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml', '', ''),
(272, 4, 0, 'JA Multilingual Component for J25 & J31', '', 'com_jalang', 'component', '', 1, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j31/com_jalang.xml', '', ''),
(273, 4, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml', '', ''),
(274, 4, 0, 'JA Biz Template', '', 'ja_biz', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_biz.xml', '', ''),
(275, 4, 0, 'JA Cago template', '', 'ja_cago', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_cago.xml', '', ''),
(276, 4, 0, 'JA Cagox template', '', 'ja_cagox', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_cagox.xml', '', ''),
(277, 4, 0, 'JA Charity template', '', 'ja_charity', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_charity.xml', '', ''),
(278, 4, 0, 'JA Directory Template', '', 'ja_directory', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_directory.xml', '', ''),
(279, 4, 0, 'JA Fixel Template', '', 'ja_fixel', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_fixel.xml', '', ''),
(280, 4, 0, 'JA Hotel Template', '', 'ja_hotel', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_hotel.xml', '', ''),
(281, 4, 0, 'JA Muzic Template for J25 & J33', '', 'ja_muzic', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_muzic.xml', '', ''),
(282, 4, 0, 'JA Teline V Template', '', 'ja_teline_v', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml', '', ''),
(283, 4, 0, 'JA Wall Template for J25 & J34', '', 'ja_wall', 'template', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_wall.xml', '', ''),
(284, 4, 0, 'Theme Fixel for JShopping J25 & J30', '', 'jshopping_theme_fixel', 'custom', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml', '', ''),
(285, 4, 0, 'JA Tiris Kunena Theme for Joomla 3x', '', 'kunena_theme_mitius_j31', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius_j31.xml', '', ''),
(286, 4, 0, 'Mijoshop Modules Accordion', '', 'mijoshop_mod_accordion', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion.xml', '', '');
INSERT INTO `#__updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(287, 4, 0, 'Mijoshop V3 Modules Accordion', '', 'mijoshop_mod_accordion_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion_v3.xml', '', ''),
(288, 4, 0, 'Mijoshop Modules Slider', '', 'mijoshop_mod_slider', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider.xml', '', ''),
(289, 4, 0, 'Mijoshop V3 Modules Slider', '', 'mijoshop_mod_slider_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider_v3.xml', '', ''),
(290, 4, 0, 'JA Bookshop Theme for Mijoshop V3', '', 'mijoshop_theme_bookshop_v3', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mijoshop_theme_bookshop_v3.xml', '', ''),
(291, 4, 0, 'JA Google Chart Module', '', 'mod_jagooglechart', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml', '', ''),
(292, 4, 0, 'JA K2 v3 Filter Module for J33', '', 'mod_jak2v3filter', 'module', '', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml', '', ''),
(293, 4, 0, 'JA Promo Bar module', '', 'mod_japromobar', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml', '', ''),
(294, 4, 0, 'Ja Yahoo Finance', '', 'mod_jayahoo_finance', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml', '', ''),
(295, 4, 0, 'Ja Yahoo Weather', '', 'mod_jayahoo_weather', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml', '', ''),
(296, 4, 0, 'Plugin Ajax JA Content Type', '', 'jacontenttype', 'plugin', 'ajax', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml', '', ''),
(297, 4, 0, 'Plgin JA K2 import to Joomla Content', '', 'plg_jak2tocontent', 'plugin', 'plg_jak2tocontent', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j31/plg_jak2tocontent.xml', '', ''),
(298, 4, 0, 'JA K2 Extrafields', '', 'jak2extrafields', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2extrafields.xml', '', ''),
(299, 4, 0, 'JA K2 v3 Filter Plugin for J33', '', 'jak2v3filter', 'plugin', 'k2', 0, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml', '', ''),
(300, 4, 0, 'Plugin JA Content Type', '', 'jacontenttype', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml', '', ''),
(301, 4, 0, 'Purity III Template', '', 'purity_iii', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j31/purity_iii.xml', '', ''),
(302, 4, 0, 'Sample package for Uber App', '', 'uber_app', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_app.xml', '', ''),
(303, 4, 0, 'Sample package for Uber Bookstore', '', 'uber_bookstore', 'sample_package', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j31/uber_bookstore.xml', '', ''),
(304, 4, 0, 'Sample package for Uber Business', '', 'uber_business', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_business.xml', '', ''),
(305, 4, 0, 'Sample package for Uber Charity', '', 'uber_charity', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_charity.xml', '', ''),
(306, 4, 0, 'Sample package for Uber Church', '', 'uber_church', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_church.xml', '', ''),
(307, 4, 0, 'Sample package for Uber Construction', '', 'uber_construction', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_construction.xml', '', ''),
(308, 4, 0, 'Sample package for Uber Corporate', '', 'uber_corporate', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_corporate.xml', '', ''),
(309, 4, 0, 'Sample package for Uber Gym', '', 'uber_gym', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_gym.xml', '', ''),
(310, 4, 0, 'Sample package for Uber Home', '', 'uber_home', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_home.xml', '', ''),
(311, 4, 0, 'Sample package for Landing page', '', 'uber_landing', 'sample_package', '', 0, '2.1.0', '', 'http://update.joomlart.com/service/tracking/j31/uber_landing.xml', '', ''),
(312, 4, 0, 'Sample package for Uber Lawyer', '', 'uber_lawyer', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml', '', ''),
(313, 4, 0, 'Sample package for Uber Medicare', '', 'uber_medicare', 'sample_package', '', 0, '2.1.0', '', 'http://update.joomlart.com/service/tracking/j31/uber_medicare.xml', '', ''),
(314, 4, 0, 'Sample package for Uber Music', '', 'uber_music', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_music.xml', '', ''),
(315, 4, 0, 'Sample package for Uber Restaurant', '', 'uber_restaurant', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml', '', ''),
(316, 4, 0, 'Sample package for Uber Spa', '', 'uber_spa', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_spa.xml', '', ''),
(317, 4, 0, 'Sample package for Uber University', '', 'uber_university', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_university.xml', '', ''),
(318, 4, 0, 'Sample package for Uber Wedding', '', 'uber_wedding', 'sample_package', '', 0, '2.0.2', '', 'http://update.joomlart.com/service/tracking/j31/uber_wedding.xml', '', ''),
(319, 6, 0, 'Kunena Language Pack', 'Language Pack for Kunena Forum', 'pkg_kunena_languages', 'package', '', 0, '3.0.8', '', 'http://update.kunena.org/3.0/pkg_kunena_languages.xml', '', ''),
(320, 6, 0, 'Kunena Latest Module', '', 'mod_kunenalatest', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenalatest.xml', '', ''),
(321, 6, 0, 'Kunena Login Module', '', 'mod_kunenalogin', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenalogin.xml', '', ''),
(322, 6, 0, 'Kunena Search Module', '', 'mod_kunenasearch', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenasearch.xml', '', ''),
(323, 6, 0, 'Kunena Statistics Module', '', 'mod_kunenastats', 'module', '', 0, '3.0.1', '', 'http://update.kunena.org/3.0/mod_kunenastats.xml', '', ''),
(324, 6, 0, 'Content - Kunena Discuss', '', 'kunenadiscuss', 'plugin', 'content', 0, '3.0.7', '', 'http://update.kunena.org/3.0/plg_content_kunenadiscuss.xml', '', ''),
(325, 6, 0, 'Search - Kunena', '', 'kunena', 'plugin', 'search', 0, '3.0.1', '', 'http://update.kunena.org/3.0/plg_search_kunena.xml', '', ''),
(326, 7, 10051, 'AcyMailing Starter', 'Latest version of AcyMailing Starter', 'com_acymailing', 'component', '', 1, '4.9.3', '', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 'http://www.acyba.com', ''),
(327, 10, 0, 'Weblinks Extension Package', 'Joomla! CMS Weblinks Package', 'pkg_weblinks', 'package', '', 1, '3.4.0', '', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 'https://github.com/joomla-extensions/weblinks', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1434017211, ''),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1434017210, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1434017210, ''),
(4, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 1434017210, ''),
(5, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 1, 1434017210, ''),
(6, 'Kunena 3.0 Update Site', 'collection', 'http://update.kunena.org/3.0/list.xml', 1, 1434017210, ''),
(7, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1434017210, ''),
(8, 'Dutch Language Updates', 'collection', 'http://download.joomlacommunity.eu/downloads/updates/translationlist_3.xml', 1, 1434017210, ''),
(9, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1434017210, ''),
(10, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 1434017210, '');

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10113),
(3, 10116),
(3, 10119),
(3, 10122),
(4, 10000),
(4, 10030),
(5, 10001),
(6, 10022),
(7, 10051),
(8, 10116),
(9, 28),
(10, 801);

-- --------------------------------------------------------

--
-- Table structure for table `#__usergroups`
--

CREATE TABLE IF NOT EXISTS `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`) USING BTREE,
  KEY `idx_usergroup_title_lookup` (`title`) USING BTREE,
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`) USING BTREE,
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `#__usergroups`
--

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 24, 'Public'),
(2, 1, 8, 21, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 22, 23, 'Super Users'),
(9, 1, 2, 3, 'Guest'),
(10, 2, 17, 18, 'Private'),
(11, 2, 15, 16, 'Company'),
(12, 2, 19, 20, 'Store');

-- --------------------------------------------------------

--
-- Table structure for table `#__users`
--

CREATE TABLE IF NOT EXISTS `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`) USING BTREE,
  KEY `idx_block` (`block`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `#__users`
--

INSERT INTO `#__users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(150, 'Bowthemes', 'bowthemes', 'admin@gmail.com', '$2y$10$vGOZ/h5qlpb4JZbEOVcTvu0AH97/xrClGR5g6fo5/e0PW6GlnOz6y', 0, 1, '2014-06-02 01:54:09', '2015-06-11 09:50:36', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
(151, 'Trong Tam', 'tamdt@vsmarttech.com', 'tamdt@vsmarttech.com', '$2y$10$feFqlM2kdMb0C60sTU0ptOjDaN7CBaS94Tqmbnznmnx4vNPIbobfC', 0, 0, '2014-06-02 03:41:34', '2014-06-06 03:38:09', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
(152, 'Kien', 'kiennb', 'abcd@gmail.com', '$2y$10$yNL7pu3Qin/ZWro5mBaf6eeTEvRnYsUjxxER5YeNVQnMnxiME04yu', 0, 0, '2014-06-03 02:08:57', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0),
(153, 'hungtx', 'hungtx', 'hungtx@vsmarttech.com', '$2y$10$hkkJAubD.tNKzqsz5V5rpuHxGdoW4OKTOpf/7DuX6/l9AMdkWZXr6', 0, 0, '2014-11-13 04:12:48', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":"","update_cache_list":1}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__user_keys`
--

CREATE TABLE IF NOT EXISTS `#__user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`) USING BTREE,
  UNIQUE KEY `series_2` (`series`) USING BTREE,
  UNIQUE KEY `series_3` (`series`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_notes`
--

CREATE TABLE IF NOT EXISTS `#__user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_category_id` (`catid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `#__user_profiles`
--

CREATE TABLE IF NOT EXISTS `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `#__user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__user_usergroup_map`
--

INSERT INTO `#__user_usergroup_map` (`user_id`, `group_id`) VALUES
(150, 8),
(150, 10),
(151, 8),
(151, 11),
(152, 2),
(152, 10),
(153, 2),
(153, 11);

-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]'),
(6, 'Super Users', 0, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`) USING BTREE,
  KEY `idx_checkout` (`checked_out`) USING BTREE,
  KEY `idx_state` (`state`) USING BTREE,
  KEY `idx_catid` (`catid`) USING BTREE,
  KEY `idx_createdby` (`created_by`) USING BTREE,
  KEY `idx_featured_catid` (`featured`,`catid`) USING BTREE,
  KEY `idx_language` (`language`) USING BTREE,
  KEY `idx_xreference` (`xreference`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
