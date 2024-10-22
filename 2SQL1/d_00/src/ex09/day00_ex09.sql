SELECT
	(SELECT name FROM person WHERE person.id = pv.person_id) AS person_name,
    (SELECT name FROM pizzeria WHERE pizzeria.id = pv.pizzeria_id) AS pizzeria_name
FROM (
	SELECT person_id, pizzeria_id, visit_date
	FROM person_visits
	WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09'
) AS pv;






/*
1) После функции фром создается таблица pv, которая хранит персон и пизза айди, и все
дальнейшие действия будут происходить вот с этой таблицей
2) Потом просто вызываю и сравниваю
*/
