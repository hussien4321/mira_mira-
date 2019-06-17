SELECT *,
(SELECT COUNT(*) FROM user_follow WHERE followed_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2') AS 'number_of_followers',
(SELECT COUNT(*) FROM user_follow WHERE follower_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2') AS 'number_of_following',
(SELECT COUNT(*) FROM outfit WHERE poster_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2') AS 'number_of_outfits',
(SELECT COUNT(impression_value) FROM outfit, outfit_impression WHERE poster_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2' AND outfit_id=impression_outfit_id AND impression_value=1) AS 'number_of_likes',
(SELECT COUNT(*) FROM user_follow WHERE followed_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2' AND follower_user_id='mEHouLXHWmg6zrIzOsefC7hcgOC3' LIMIT 1) AS 'is_following',
(SELECT COUNT(*) FROM notification WHERE notification_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2' AND notification_created_at>last_seen_notification_at) AS 'number_of_new_notifications'
FROM user
WHERE user_id='SKTFgptZ42TraMADOA2X8O9qVgR2'
LIMIT 1;