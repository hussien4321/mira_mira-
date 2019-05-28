UPDATE `test`.`user`
SET `notification_token` = null
WHERE `notification_token` = '_________NOTIFICATION_TOKEN__________';


UPDATE `test`.`user`
SET `notification_token` = '_________NOTIFICATION_TOKEN__________' 
WHERE `user_id` = '___________USER_ID_______';