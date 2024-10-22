SELECT
    person.name as name,
    menu.pizza_name as pizza_name,
    menu.price as price,
    ROund( (menu.price * (1 - (person_discounts.discount/100)) ) ) as discount_price,
    pizzeria.name as pizzeria_name
FROM person_order
    JOIN person ON person_order.person_id = person.id
    JOIN menu ON person_order.menu_id = menu.id
    JOIN person_discounts ON person_discounts.person_id = person.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id

ORDER BY name, pizza_name;

