SELECT *
FROM holiday;


SELECT MAX(price)
FROM holiday;

SELECT MIN(price)
FROM holiday;

SELECT MIN(price), MAX(price)
FROM holiday;

SELECT round(AVG(price))
FROM holiday;

SELECT destination_country, destination_city, MAX(price)
FROM holiday
GROUP BY destination_country, destination_city
ORDER BY destination_country;

SELECT destination_country, destination_city, MIN(price)
FROM holiday
GROUP BY destination_country, destination_city
ORDER BY MIN(price) DESC;

SELECT destination_country, SUM(price)
from holiday
GROUP BY destination_country
ORDER BY SUM(price) DESC;

SELECT 100 + 2;

SELECT 7 / 6;

SELECT 100 % 3;

SELECT FACTORIAL(10);

SELECT id, destination_country, destination_city, round(price,0)
FROM holiday;


