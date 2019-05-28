REPLACE `test`.`notification`
(`notification_user_id`,
`notification_type`,
`notification_reference_id`)
VALUES
('______USER_ID______',
'_____TYPE_____',
'____SOME_ID____')
ON DUPLICATE KEY UPDATE `notification_user_id` = '______USER_ID______'
