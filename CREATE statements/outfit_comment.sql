CREATE TABLE `outfit_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_outfit_id` int(11) NOT NULL,
  `commenter_user_id` varchar(50) NOT NULL,
  `comment_body` TEXT NOT NULL,
  `comment_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `comment_outfit_id` (`comment_outfit_id`),
  KEY `commenter_user_id` (`commenter_user_id`),
  CONSTRAINT `outfit_cmfk_1` FOREIGN KEY (`comment_outfit_id`) REFERENCES `outfit` (`outfit_id`) ON DELETE CASCADE,
  CONSTRAINT `outfit_cmfk_2` FOREIGN KEY (`commenter_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
