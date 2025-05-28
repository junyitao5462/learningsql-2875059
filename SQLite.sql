-- SQLite
SELECT first_name, COUNT (first_name)
FROM people
GROUP BY first_name
ORDER BY COUNT (first_name) DESC;