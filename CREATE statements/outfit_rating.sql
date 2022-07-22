CREATE TABLE `outfit_rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_value` int(11) NOT NULL,
  `rating_outfit_id` int(11) NOT NULL,
  `rating_user_id` varchar(50) NOT NULL,
  `rating_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `rating_outfit_user_combo1` (`rating_outfit_id`,`rating_user_id`),
  KEY `rating_outfit_id` (`rating_outfit_id`),
  KEY `rating_user_id` (`rating_user_id`),
  CONSTRAINT `rating_imfk_1` FOREIGN KEY (`rating_outfit_id`) REFERENCES `outfit` (`outfit_id`) ON DELETE CASCADE,
  CONSTRAINT `rating_imfk_2` FOREIGN KEY (`rating_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;