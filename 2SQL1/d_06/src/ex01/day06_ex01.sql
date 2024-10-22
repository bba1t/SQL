INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT 
    ROW_NUMBER() OVER() as id,
    person_order.person_id as person_id,
    menu.pizzeria_id as pizzeria_id,
    (
        CASE 
            WHEN count(*) = 1 THEN 10.5
            WHEN count(*) = 2 THEN 22 
            ELSE  30
        END
    ) as discount

FROM person_order JOIN menu ON person_order.menu_id = menu.id
GROUP BY person_id, pizzeria_id;
 
-- Вставляя значения в таблицу с помощью селекта, значения бнерутся из другой таблицы или таблиц 