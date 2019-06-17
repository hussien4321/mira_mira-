INSERT INTO `test`.`user_follow`
(`follower_user_id`,
`followed_user_id`)
VALUES
('_______USER_ID_______',
'_______USER_ID_______') 
ON DUPLICATE KEY UPDATE `followed_user_id` = `followed_user_id`;