UPDATE user 
SET has_new_feed_outfits=1
WHERE user_id IN (SELECT follower_user_id FROM user_follow WHERE followed_user_id='_________USER_ID_______') 