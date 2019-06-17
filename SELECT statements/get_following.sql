SELECT *,
(SELECT COUNT(*) FROM user_follow u2 WHERE u2.follower_user_id=u1.followed_user_id AND u2.follower_user_id=u1.followed_user_id LIMIT 1) AS 'is_following'
FROM user, user_follow u1
WHERE u1.followed_user_id=user_id  
AND u1.follower_user_id='SKTFgptZ42TraMADOA2X8O9qVgR2';