CREATE TABLE `user_follow` (
  `follow_id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_user_id` varchar(50) NOT NULL,
  `followed_user_id` varchar(50) NOT NULL,
  `follow_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`follow_id`),
  UNIQUE KEY `follow_user_combo1` (`follower_user_id`,`followed_user_id`),
  KEY `follower_user_id` (`follower_user_id`),
  KEY `followed_user_id` (`followed_user_id`),
  CONSTRAINT `follow_usfk_1` FOREIGN KEY (`follower_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `follow_usfk_2` FOREIGN KEY (`followed_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
