INSERT INTO `test`.`comment_like`
(`comment_like_comment_id`,
`comment_liker_user_id`)
VALUES
(18,
'0123456789') 
ON DUPLICATE KEY UPDATE `comment_like_comment_id` = `comment_like_comment_id`;
