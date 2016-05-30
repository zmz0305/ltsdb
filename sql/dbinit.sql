CREATE DATABASE `lts`;
USE `lts`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `fullname` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `enabled` char(1) NOT NULL DEFAULT 'y',
  `notes` varchar(256) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `account_UNIQUE` (`account`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
	`rowid` int(11) NOT NULL AUTO_INCREMENT,
    `url` varchar(256) NOT NULL,
    `address` varchar(256) NOT NULL,
    `num_bedroom` int(11) NOT NULL,
    `num_bathroom` int(11) NOT NULL,
    `price` int(11) NOT NULL,
    `state` varchar(15) NOT NULL,
    `city` varchar(30) NOT NULL,
    `school` varchar(128) DEFAULT NULL,
	`zip` int(11) NOT NULL,

    PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

