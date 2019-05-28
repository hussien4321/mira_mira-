CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `notification_token` varchar(360) DEFAULT NULL,
  `last_seen_notification_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profile_pic_url` text,
  `date_of_birth` datetime NOT NULL,
  `gender_is_male` tinyint(4) NOT NULL,
  `boosts` int(11) NOT NULL DEFAULT '0',
  `is_subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `subscription_end_date` datetime DEFAULT NULL,
  `user_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `notification_token_UNIQUE` (`notification_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
