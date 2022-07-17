SELECT *
FROM employee
ORDER BY id DESC;

SELECT *
FROM employee
LIMIT 150;

SELECT *
FROM employee
OFFSET 100 LIMIT 150;

SELECT *
FROM employee
OFFSET 10 FETCH FIRST 5 ROW ONLY;

SELECT *
FROM employee
WHERE country_of_birth = 'Ukraine'
   OR country_of_birth = 'United Kingdom'
   OR country_of_birth = 'Brazil'
ORDER BY country_of_birth DESC;

SELECT *
FROM employee
WHERE country_of_birth IN ('China', 'Argentina', 'Israel')
ORDER BY country_of_birth DESC;

SELECT *
FROM employee
WHERE date_of_birth BETWEEN '2021-01-01' AND '2022-01-01';

SELECT *
FROM employee
WHERE email LIKE '%.com';

SELECT *
FROM employee
WHERE country_of_birth LIKE 'U%';

SELECT *
FROM employee
WHERE country_of_birth iLIKE 'u%';


SELECT country_of_birth, count(*)
FROM employee
GROUP BY country_of_birth;

SELECT *
FROM employee
WHERE country_of_birth = 'Ukraine'
   OR country_of_birth = 'United Kingdom';

SELECT *
FROM employee
WHERE country_of_birth IN ('Ukraine', 'China')
ORDER BY country_of_birth DESC;


SELECT id, first_name AS mane, last_name AS surname, gender AS sex, email, date_of_birth, country_of_birth AS country
FROM employee;

SELECT id, first_name, last_name, gender, COALESCE(email, 'not applicable'), date_of_birth, country_of_birth
FROM employee;



