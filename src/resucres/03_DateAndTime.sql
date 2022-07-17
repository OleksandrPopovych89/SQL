SELECT now();

SELECT now():: DATE;
SELECT now():: TIME;

SELECT now() - INTERVAL '1 YEAR';
SELECT now() - INTERVAL '100 YEAR';


SELECT now() - INTERVAL '10 MONTHS';
SELECT now() - INTERVAL '10 DAYS';
SELECT now() + INTERVAL '100 MONTH';

SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(DOW FROM NOW());


SELECT first_name,
       last_name,
       gender,
       country_of_birth,
       date_of_birth,
       AGE(now(), date_of_birth) AS age
FROM employee;

