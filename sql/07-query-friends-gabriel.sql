SELECT
	CASE
		WHEN b.name = 'Gabriel' THEN a.name
		WHEN a.name = 'Gabriel' THEN b.name
	END AS friends_with_gabriel
	FROM friend
	JOIN student a
	ON a.id = friend.id1
	JOIN student b
	ON b.id = friend.id2
	WHERE a.name = 'Gabriel' OR b.name = 'Gabriel';
