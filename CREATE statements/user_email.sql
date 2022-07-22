CREATE TABLE `user_email` (
  `user_email_user_id` varchar(50) NOT NULL,
  `user_email_address` varchar(150) NOT NULL,
  `user_email_is_subscribed` tinyint(4) NOT NULL DEFAULT '1',
  UNIQUE KEY `user_email_user_id_UNIQUE` (`user_email_user_id`),
  CONSTRAINT `user_email_usfk_1` FOREIGN KEY (`user_email_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;