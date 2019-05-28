CREATE TABLE `outfit` (
  `outfit_id` int(11) NOT NULL AUTO_INCREMENT,
  `poster_user_id` varchar(50) NOT NULL,
  `style` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `outfit_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `outfit_updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `has_images_uploaded` tinyint(4) NOT NULL DEFAULT '0',
  `image_url_1` text,
  `image_url_2` text,
  `image_url_3` text,
  `images_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`outfit_id`),
  KEY `poster_user_id` (`poster_user_id`),
  CONSTRAINT `outfit_ibfk_1` FOREIGN KEY (`poster_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
