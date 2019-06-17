INSERT INTO `test`.`notification`
(`notification_user_id`,
`notification_type`,
`notification_ref_user_id`,
`notification_ref_outfit_id`,
`notification_ref_comment_id`,
`notification_ref_combo`)
VALUES
('mEHouLXHWmg6zrIzOsefC7hcgOC3',
'new-comment',
'SKTFgptZ42TraMADOA2X8O9qVgR2',
null,
null,
'SKTFgptZ42TraMADOA2X8O9qVgR2-null-null') 
ON DUPLICATE KEY UPDATE `notification_created_at`=CURRENT_TIMESTAMP;
