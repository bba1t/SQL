SELECT 
    tmp.address,
    tmp.formula,
    tmp.avg_age,
    (
        CASE 
            WHEN (formula > avg_age) THEN 'True'
            ELSE 'False'
        END
    ) as comparison
FROM (
    SELECT 
        person.address as address,
        round((max(person.age::numeric) - (min(person.age::numeric) / max(person.age::numeric))), 2) as formula,
        round(avg(person.age), 2) as avg_age
    FROM person
    GROUP BY person.address
) as tmp
ORDER BY 1;

