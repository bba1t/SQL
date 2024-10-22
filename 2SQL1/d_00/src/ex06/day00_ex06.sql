SELECT name,
	CASE
		WHEN name = 'Denis' OR name = 'Nataly' THEN 'True'
		ELSE 'False'
	END AS check_name
FROM person
WHERE id IN (
	SELECT person_id
	FROM person_order
	WHERE menu_id IN (13, 14, 18) AND order_date = '2022-01-07'
);
