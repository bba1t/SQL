SELECT 
    pizzeria.name as name,
    count(person_order.person_id) as count_of_orders,
    round(avg(menu.price)) as avg_price,
    max(menu.price) as max_price,
    min(menu.price) as min_price
from person_order
    join menu ON person_order.menu_id = menu.id
    join pizzeria ON menu.pizzeria_id = pizzeria.id
group by pizzeria.name
order by 1;