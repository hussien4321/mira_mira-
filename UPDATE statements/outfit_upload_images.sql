UPDATE `test`.`outfit`
SET
`has_images_uploaded` = 1,
`image_url_1` = 'https://i.pinimg.com/originals/1d/11/e8/1d11e863ca548ddbde82ff6742d7236c.jpg',
`image_url_2` = NULL,
`image_url_3` = NULL
WHERE `outfit_id` = 5;
