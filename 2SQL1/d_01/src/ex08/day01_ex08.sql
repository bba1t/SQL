SELECT person_order.order_date, 
	CONCAT(person.name, ' (возраст: ', person.age, ')') AS person_information
FROM person_order AS person_order(idx, id, menu_id, order_date)
NATURAL JOIN person
ORDER BY 1, 2;