WITH NotOrder AS (
	SELECT id AS menu_id
	FROM menu
	WHERE id NOT IN (
		SELECT menu_id
		FROM person_order
	)
	ORDER BY 1
)


SELECT menu.pizza_name AS pizza_name, menu.price AS price,
		pizzeria.name AS pizzeria_name
FROM NotOrder 
	JOIN menu ON menu.id = NotOrder.menu_id
	JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2;