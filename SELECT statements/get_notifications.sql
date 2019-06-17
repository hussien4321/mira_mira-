SELECT * FROM `notification`
LEFT JOIN `user`
ON `notification_ref_user_id`=`user_id`
LEFT JOIN `outfit`
ON `notification_ref_outfit_id`=`outfit_id`
LEFT JOIN `outfit_comment`
ON `notification_ref_comment_id`=`comment_id`
WHERE `notification_user_id` = 'mEHouLXHWmg6zrIzOsefC7hcgOC3' 
ORDER BY `notification_created_at` DESC