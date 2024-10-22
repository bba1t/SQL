WITH Female AS (
	SELECT pizzeria.name AS pizzeria_name
	FROM person_visits
		JOIN person ON person_visits.person_id = person.id
		JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
	WHERE person.gender = 'female'
),
Male AS (
	SELECT pizzeria.name AS pizzeria_name
	FROM person_visits
		JOIN person ON person_visits.person_id = person.id
		JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
	WHERE person.gender = 'male'
)

(SELECT * FROM Female EXCEPT ALL SELECT * FROM Male)
	UNION ALL
(SELECT * FROM Male EXCEPT ALL SELECT * FROM Female)
ORDER BY 1;