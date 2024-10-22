WITH DateRange AS (
	SELECT missing_dates::date
	FROM generate_series('2022-01-01'::date, '2022-01-10'::date, 
					 '1 day'::interval) AS missing_dates
)
SELECT DateRange.missing_dates::date
FROM DateRange
LEFT JOIN (
    SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2
) AS TmpTable ON missing_dates::date = TmpTable.visit_date
WHERE TmpTable.visit_date IS NULL
ORDER BY missing_dates::date;



