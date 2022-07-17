SELECT *
FROM employee
         INNER JOIN bicycle on employee.bicycle_id = bicycle.id;



SELECT employee.first_name, bicycle.make, bicycle.typo, bicycle.price
FROM employee
         JOIN bicycle ON employee.bicycle_id = bicycle.id;


SELECT *
FROM employee
         LEFT JOIN bicycle ON bicycle_id = employee.bicycle_id;

SELECT *
FROM employee
         LEFT JOIN bicycle ON employee.bicycle_id = bicycle.id
WHERE bicycle_id IS NOT NULL;

SELECT *
FROM employee
         RIGHT JOIN bicycle ON employee.bicycle_id = bicycle.id;

SELECT *
FROM employee
         FULL OUTER JOIN bicycle ON employee.bicycle_id = bicycle.id;
