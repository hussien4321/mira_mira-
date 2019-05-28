UPDATE `test`.`outfit`
SET
`has_images_uploaded` = IF(`images_count`=2, 1, `has_images_uploaded`),
`image_url_2` = 'https://cdn-production.looklive.com/gos_GWy5CNjBCWag8jDsr-4Buxw=/0x0:2200x3300/400x610/2fd7870c-65b5-4526-ae4c-80d234aed9d6'
WHERE `outfit_id` = 13;

//2 - IMAGE_INDEX_TO_UPDATE