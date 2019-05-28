INSERT INTO `test`.`outfit_impression`
(`impression_outfit_id`,
`impression_user_id`,
`impression_value`)
VALUES
(7, '0123456789', 0)
ON DUPLICATE KEY UPDATE `impression_value` = 0;