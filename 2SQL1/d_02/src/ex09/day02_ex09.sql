SELECT person.name AS name
FROM person_order
	JOIN person ON person.id = person_order.person_id
	JOIN menu ON menu.id = person_order.menu_id
	
WHERE menu.pizza_name IN ('pepperoni pizza', 'cheese pizza')
	AND person.gender = 'female'

GROUP BY person.name
HAVING COUNT(menu.pizza_name) = 2
ORDER BY 1;
