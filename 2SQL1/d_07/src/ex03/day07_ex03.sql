select tmp.name, sum(tmp.total_count) as total_count
from (
    (
    SELECT 
        pizzeria.name as name,
        count(pizzeria.id) as total_count
    from person_visits
        JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
    GROUP BY 1
    ORDER BY 2 DESC
    )
    UNION ALL
    (
    SELECT
        pizzeria.name as name,
        count(pizzeria.name) as total_count
    from person_order
        join menu ON person_order.menu_id = menu.id
        JOIN pizzeria on menu.pizzeria_id = pizzeria.id
    GROUP BY 1
    ORDER BY 2 DESC
    )
) tmp
GROUP BY tmp.name
ORDER BY 2 DESC, 1 ASC;
