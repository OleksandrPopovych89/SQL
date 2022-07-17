SELECT *
FROM employee
         LEFT JOIN bicycle ON bicycle.id = employee.bicycle_id
WHERE bicycle_id IS NOT NULL;

SELECT *
FROM pg_available_extensions;
