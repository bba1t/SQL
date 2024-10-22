SELECT person_id 
FROM person_visits
WHERE pizzeria_id = 2 OR visit_date IN ('2022-01-06', '2022-01-07', '2022-01-08', '2022-01-09')
GROUP BY person_id;