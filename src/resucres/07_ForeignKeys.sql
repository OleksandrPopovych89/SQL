CREATE TABLE bicycle
(
    id    BIGSERIAL      NOT NULL PRIMARY KEY,
    make  VARCHAR(100)   NOT NULL,
    typo  VARCHAR(100)   NOT NULL,
    price NUMERIC(19, 2) NOT NULL
);

SELECT *
FROM bicycle;

ALTER TABLE employee
    ADD bicycle_id BIGINT REFERENCES bicycle (id);

ALTER TABLE employee
    ADD UNIQUE (bicycle_id);

INSERT INTO bicycle(make, typo, price)
VALUES ('Indi ATB', 'Mountain Bike', '100.00');

INSERT INTO bicycle(make, typo, price)
VALUES ('Apollo Cafe', 'Women Hybrid Bike', '160.00');

INSERT INTO bicycle(make, typo, price)
VALUES ('Brampton ', 'Folding Bike', '1045.00');

SELECT *
FROM employee
WHERE id = '3'
;

UPDATE employee
SET bicycle_id = '2'
WHERE id = '3';