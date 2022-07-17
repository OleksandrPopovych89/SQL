SELECT *
FROM employee
LIMIT 1;

insert into employee (id, first_name, last_name, gender, email, date_of_birth, country_of_birth)
values ('1', 'Homerus', 'Greschik', 'Daun', 'hgreschik0@examiner.com', '2022-07-05', 'Brazil');

ALTER TABLE employee
    DROP CONSTRAINT employee_pkey;

SELECT *
FROM employee
WHERE id = '1';

ALTER TABLE employee
    ADD PRIMARY KEY (id);

DELETE
FROM employee
WHERE id = '1';

