SELECT age, gender
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;


SELECT first_name, last_name, 'old man' AS Risk
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION
SELECT first_name, last_name, 'old lady' AS Risk
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION 
SELECT first_name, last_name, 'highly paid employee' AS Risk
FROM employee_salary
WHERE salary > 70000
ORDER BY First_name, last_name
;


SELECT name, park_id, 'Late comers' AS Timing
FROM employees
WHERE salary > 30000 AND hire_date <= 2012
UNION
SELECT name, park_id, 'After date' AS Timing
FROM parks
WHERE open_year > 2010 AND location = 'F'
UNION 
SELECT name, park_id, 'early date' AS Timing
FROM events
WHERE event_date > 2010
ORDER BY name, park_id
;