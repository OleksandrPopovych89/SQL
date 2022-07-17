/*
 Creating database.
 */

CREATE DATABASE myDb;

/*
 Creating schema.
 */
CREATE SCHEMA  mySchema;

/*
 Creating a table.
 */
CREATE TABLE employees
(
    id            int,
    department_id int,
    salary        int
);


/*
New query which query will show employees sorted highest salary to lowest
 */
SELECT department_id
FROM employees
WHERE salary > 5000
GROUP BY department_id;


/*
New query which query will show ids of departments with average salary greater than 5000
 */
SELECT department_id
FROM employees
GROUP BY department_id
HAVING avg(salary) > 5000;

/*
 New query which query will show number of employees in each department
 */
SELECT department_id, count(*)
FROM employees
GROUP BY department_id;
;

/*
 New query which query will select all employee ids with salary greater than 5000
 */
SELECT *
FROM employees
WHERE salary > 5000;
;