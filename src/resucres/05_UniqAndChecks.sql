SELECT email, count(*)
FROM employee
GROUP BY email
HAVING count(*) > 1
ORDER BY count(*) DESC;



SELECT *
FROM employee
WHERE first_name LIKE '%Homerus%';


SELECT DISTINCT gender
FROM employee;

ALTER TABLE employee
    ADD CONSTRAINT gender_constraint
        CHECK ( gender = 'Female' OR gender = 'Man' OR gender = 'Male');

DELETE
FROM employee
WHERE gender IN ('Bigender');



Insert into employee (first_name, last_name, gender, email, date_of_birth, country_of_birth)
values ('WHomerus', 'Sippson', 'Man', 'Homer62@sipsons.com', '2022-07-05', 'USA');

SELECT *
FROM employee;

ALTER TABLE employee
    ADD CONSTRAINT unique_email_address UNIQUE (email);

DELETE
FROM employee
WHERE id = '1001';

