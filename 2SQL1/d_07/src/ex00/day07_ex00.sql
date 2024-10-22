select person_id, COUNT(*) as count_of_visits
from person_visits
group by person_id
ORDER BY 2 DESC, 1;