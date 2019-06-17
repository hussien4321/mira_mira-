SELECT * ,
(SELECT COUNT(`comment_like_id`) 
FROM `comment_like` 
WHERE `comment_like_comment_id` = `comment_id`) AS 'comment_likes_count',
(SELECT COUNT(`comment_like_id`) 
FROM `comment_like` 
WHERE `comment_like_comment_id` = `comment_id` AND `comment_liker_user_id` = 'CURRENT-----USER----ID') AS 'comment_is_liked'
FROM `outfit_comment`, `user` WHERE `commenter_user_id` = `user_id`
ORDER BY `comment_created_at` DESC