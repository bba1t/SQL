select DISTINCT person.name
from person_order   
    join person ON person_order.person_id = person.id
order by 1;