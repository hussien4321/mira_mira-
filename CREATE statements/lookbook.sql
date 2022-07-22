CREATE TABLE `lookbook` (
  `lookbook_id` int(11) NOT NULL AUTO_INCREMENT,
  `lookbook_name` varchar(100) NOT NULL,
  `lookbook_description` text,
  `lookbook_user_id` varchar(50) NOT NULL,
  `lookbook_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`lookbook_id`),
  KEY `lookbook_user_id` (`lookbook_user_id`),
  CONSTRAINT `lookbook_usfk_1` FOREIGN KEY (`lookbook_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;