CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `name` varchar(25) NOT NULL,
  `profile_pic_url` varchar(256) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `gender_is_male` tinyint(4) NOT NULL,
  `boosts` int(11) NOT NULL DEFAULT '0',
  `is_subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `subscription_end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
