SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
	JOIN (
		SELECT person_id, pizzeria_id
		FROM person_visits
		WHERE visit_date = '2022-01-08'
	) AS person_visits ON person_visits.pizzeria_id = pizzeria.id
	
	JOIN person ON person_visits.person_id = person.id
	JOIN menu ON menu.pizzeria_id = pizzeria.id

WHERE person.name = 'Dmitriy' AND menu.price < 800;