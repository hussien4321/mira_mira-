SELECT *,
(1) AS 'is_following'
FROM user, user_follow
WHERE follower_user_id=user_id  
AND followed_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2';