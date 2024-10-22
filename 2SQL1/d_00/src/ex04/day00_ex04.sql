SELECT CONCAT(name, '  (', CONCAT('age: ', age, ', ', 'gender: ','''', gender, '''',', ', 'address: ','''', address,''''), ')') 
AS person_information 
FROM person
WHERE name = 'Anna'
ORDER BY person_information asc;