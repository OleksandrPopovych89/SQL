SELECT *
FROM employee;

DELETE
FROM employee
WHERE id = 10;

SELECT *
FROM employee;


SELECT *
FROM employee
WHERE id = '300';

UPDATE employee
SET first_name = 'Alex',
    last_name  = 'Fry',
    email      = 'fry@gmail.com'
WHERE id = '2';

INSERT INTO employee (id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES ('1', 'John', 'Doe', 'Male', 'john@ukr.net', DATE '2019-12-10', 'Ukraine')
ON CONFLICT (first_name) DO NOTHING;


UPDATE employee
SET first_name = 'Zena'
WHERE id = '19';

SELECT *
FROM employee
WHERE id = '3';


DELETE
FROM employee
WHERE email LIKE '%google%'
  AND country_of_birth = 'China';



SELECT *
FROM employee
WHERE id = '3000';

INSERT INTO employee (id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES ('3000', 'John', 'Doe', 'Man', 'john@gmaail', DATE '2019-12-10', 'Ukraine')
ON CONFLICT (id) DO UPDATE SET email  = excluded.email,
                               gender = excluded.gender;


INSERT INTO employee (id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
VALUES ('3000', 'Joy', 'Doe', 'Female', 'joy@gmaail', DATE '2019-12-10', 'Ukraine')
ON CONFLICT (id) DO UPDATE SET email  = excluded.email,
                               first_name = excluded.first_name,
                               gender = excluded.gender
;
