
SELECT first_name, last_name,shirt_or_hat, state_code ,team
FROM people 
WHERE state_code LIKE 'C%' OR state_code LIKE '%N'
ORDER BY last_name DESC
lIMIT 50;


-- GROUP AND COUNT 
SELECT first_name, COUNT (first_name)
FROM people
GROUP BY first_name
ORDER BY COUNT (first_name) DESC;

--compound select
SELECT first_name, last_name, quiz_points 
FROM people 
WHERE quiz_points=(SELECT MAX(quiz_points) FROM people);

-- alias
SELECT first_name as firstname, UPPER(last_name) as surname 
FROM people
WHERE first_name ='Wanda';
 
 -- quiz
 SELECT state_name AS STATE, MAX (quiz_points) AS MAXPOINTS, AVG (quiz_points) AS
 AVGPOINTS
 FROM people
 JOIN states ON states.state_abbrev = people.state_code
 GROUP BY state_code
 ORDER BY AVGPOINTS DESC;     --can use alias here