SELECT menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name, menu.price AS price
FROM pizzeria
	JOIN (
		SELECT pizza_name, pizzeria_id, price
		FROM menu
		WHERE pizza_name IN ('mushroom pizza', 'pepperoni pizza')
	) AS menu ON pizzeria.id = menu.pizzeria_id
	
ORDER BY 1, 2;