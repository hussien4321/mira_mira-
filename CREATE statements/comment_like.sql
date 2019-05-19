CREATE TABLE `comment_like` (
  `comment_like_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_like_comment_id` int(11) NOT NULL,
  `comment_liker_user_id` varchar(50) NOT NULL,
  `comment_like_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_like_id`),
  UNIQUE KEY `comment_like_user_combo1` (`comment_like_comment_id`, `comment_liker_user_id`),
  KEY `comment_like_comment_id` (`comment_like_comment_id`),
  KEY `comment_liker_user_id` (`comment_liker_user_id`),
  CONSTRAINT `comment_lkfk_1` FOREIGN KEY (`comment_like_comment_id`) REFERENCES `outfit_comment` (`comment_id`) ON DELETE CASCADE,
  CONSTRAINT `comment_lkfk_2` FOREIGN KEY (`comment_liker_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;