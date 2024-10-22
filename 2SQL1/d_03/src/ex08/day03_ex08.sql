INSERT INTO menu(id, pizzeria_id, pizza_name, price)
VALUES (
	(select MAX(id+1) from menu), 
	(select id from pizzeria where name = 'Dominos'), 
	'sicilian pizza', 
	900
);