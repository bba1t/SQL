( 
    SELECT 
        pizzeria.name as name, 
        count(pizzeria.id) as count,
        'visit' as action_type
    from person_visits
        JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
    GROUP BY name
    ORDER BY 2 DESC
    limit 3
)
union ALL
(
    SELECT 
        pizzeria.name as name, 
        count(pizzeria.id) as count,
        'order' as action_type
    from person_order
        join menu ON person_order.menu_id = menu.id
        JOIN pizzeria on menu.pizzeria_id = pizzeria.id
    GROUP BY name
    ORDER BY 2 DESC
    limit 3
)
ORDER BY action_type, count DESC;

