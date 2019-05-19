INSERT INTO `test`.`outfit_save`
(`save_outfit_id`,
`save_user_id`)
VALUES
(4,
'0123456789') 
ON DUPLICATE KEY UPDATE `save_outfit_id` = `save_outfit_id`;
