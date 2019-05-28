CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_user_id` varchar(50) NOT NULL,
  `notification_type` varchar(50) NOT NULL,
  `notification_reference_id` varchar(50) NOT NULL,
  `notification_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notification_updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notification_id`),
  UNIQUE KEY `notification_combo` (`notification_user_id`,`notification_type`,`notification_reference_id`),
  KEY `notification_user_id` (`notification_user_id`),
  CONSTRAINT `notification_imfk_1` FOREIGN KEY (`notification_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
