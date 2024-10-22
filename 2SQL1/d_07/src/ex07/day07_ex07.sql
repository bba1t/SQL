select round(avg(global_rating), 4) as global_rating
from (
    SELECT sum(rating) as global_rating
    from pizzeria
    group by name
) tmp;