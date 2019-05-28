SELECT * , 
(SELECT SUM(`impression_value`) 
FROM `test`.`outfit_impression` 
WHERE `outfit_id`=`impression_outfit_id`) AS 'likes_count',
(SELECT COUNT(`comment_id`) 
FROM `test`.`outfit_comment` 
WHERE `comment_id`=`comment_outfit_id`) AS 'comments_count'
FROM `outfit`, `user` 
WHERE `poster_user_id`=`user_id` AND 
`has_images_uploaded` = 1 
ORDER BY `outfit_created_at` ASC