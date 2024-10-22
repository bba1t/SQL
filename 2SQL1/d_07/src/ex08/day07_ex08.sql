select 
    person.address as address,
    pizzeria.name as name,
    count(person_order.person_id) as count_of_orders
from person_order
    join person on person_order.person_id = person.id
    JOIN menu ON person_order.menu_id = menu.id
    join pizzeria on menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name, person.address
order by 1, 2;