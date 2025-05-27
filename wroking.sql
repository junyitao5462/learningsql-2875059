
SELECT first_name, last_name,shirt_or_hat, state_code ,team
FROM people 
WHERE state_code LIKE 'C%' OR state_code LIKE '%N'
ORDER BY last_name DESC
lIMIT 50;




 