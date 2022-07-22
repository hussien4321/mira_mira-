CREATE TABLE `user_block` (
  `block_id` int(11) NOT NULL AUTO_INCREMENT,
  `blocking_user_id` varchar(50) NOT NULL,
  `blocked_user_id` varchar(50) NOT NULL,
  `block_created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`block_id`),
  UNIQUE KEY `block_user_combo1` (`blocking_user_id`,`blocked_user_id`),
  KEY `blocking_user_id` (`blocking_user_id`),
  KEY `blocked_user_id` (`blocked_user_id`),
  CONSTRAINT `block_usfk_1` FOREIGN KEY (`blocking_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `block_usfk_2` FOREIGN KEY (`blocked_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;