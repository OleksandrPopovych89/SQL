CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

SELECT uuid_generate_v4();

CREATE TABLE passport
(
    passport_serial  UUID         NOT NULL PRIMARY KEY,
    issue_date       DATE         NOT NULL,
    expire_data      DATE         NOT NULL,
    country_of_issue VARCHAR(150) NOT NULL
);

INSERT INTO passport (passport_serial, issue_date, expire_data, country_of_issue)
VALUES (uuid_generate_v4(), '2020-03-19', '2045-03-19', 'USA');

SELECT * FROM passport;