SELECT menu.pizza_name AS pizza_name, menu.price AS price, 
	pizzeria.name AS pizzeria_name, person_visits.visit_date AS visit_date
FROM menu
	JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	
	JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
	
	JOIN person ON person_visits.person_id = person.id
	
WHERE (menu.price BETWEEN 800 AND 1000)
		AND person.name = 'Kate'
		
ORDER BY 1, 2, 3;
