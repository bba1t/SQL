SELECT object_name
FROM
    (SELECT pizza_name AS object_name, '2' AS source_table FROM menu
        UNION ALL
    SELECT name AS object_name, '1' AS source_table FROM person
    ) AS output
ORDER BY source_table, object_name;

