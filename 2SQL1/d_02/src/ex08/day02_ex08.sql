SELECT person.name AS name
FROM person_order
	JOIN person ON person.id = person_order.person_id
	JOIN menu ON menu.id = person_order.menu_id
	
WHERE menu.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
	AND person.gender = 'male'
	AND (person.address IN ('Moscow', 'Samara'))

ORDER BY 1 DESC;
