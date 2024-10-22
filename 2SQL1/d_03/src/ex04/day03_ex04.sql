WITH Female AS (
	SELECT pizzeria.name AS pizzeria_name
	FROM person_order
		JOIN person ON person_order.person_id = person.id
		JOIN menu ON person_order.menu_id = menu.id
		JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	WHERE person.gender = 'female'
),
Male AS (
	SELECT pizzeria.name AS pizzeria_name
	FROM person_order
		JOIN person ON person_order.person_id = person.id
		JOIN menu ON person_order.menu_id = menu.id
		JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
	WHERE person.gender = 'male'
)

(SELECT * FROM Female EXCEPT SELECT * FROM Male)
	UNION
(SELECT * FROM Male EXCEPT SELECT * FROM Female)
ORDER BY 1;