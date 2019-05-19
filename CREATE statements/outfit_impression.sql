CREATE TABLE `outfit_impression` (
  `impression_id` int(11) NOT NULL AUTO_INCREMENT,
  `impression_outfit_id` int(11) NOT NULL,
  `impression_user_id` varchar(50) NOT NULL,
  `impression_value` int(11) NOT NULL,
  `impression_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `impression_updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`impression_id`),
  UNIQUE KEY `outfit_user_combo1` (`impression_outfit_id`,`impression_user_id`),
  KEY `impression_outfit_id` (`impression_outfit_id`),
  KEY `impression_user_id` (`impression_user_id`),
  CONSTRAINT `outfit_imfk_1` FOREIGN KEY (`impression_outfit_id`) REFERENCES `outfit` (`outfit_id`) ON DELETE CASCADE,
  CONSTRAINT `outfit_imfk_2` FOREIGN KEY (`impression_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
