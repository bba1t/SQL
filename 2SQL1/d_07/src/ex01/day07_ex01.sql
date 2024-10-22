select 
    person.name as name, 
    COUNT(*) as count_of_visits
from person_visits 
    join person ON person_visits.person_id = person.id
group by name
ORDER BY count_of_visits desc, name asc
limit 4;