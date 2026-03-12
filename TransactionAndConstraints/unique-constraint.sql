CREATE TABLE person (
    id serial PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    email VARCHAR (50) UNIQUE
);
INSERT INTO person(first_name, last_name, email)
VALUES
    (
        'Raju',
        'Kumar',
        'rajukumar@gmail.com'
    );

SELECT * FROM person;