--
-- Table structure for table `shares`
--

CREATE TABLE IF NOT EXISTS `shares` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `rem_host` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `our_result` enum('Y','N') NOT NULL,
  `upstream_result` enum('Y','N') DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `solution` varchar(257) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `difficulty` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `upstream_result` (`upstream_result`),
  KEY `our_result` (`our_result`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Table structure for table `pool_worker`
--

CREATE TABLE IF NOT EXISTS `pool_worker` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `account_id` int(255) NOT NULL,
  `username` char(50) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `hashrate` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
