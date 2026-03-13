-- Creating and Managing Role Membership

CREATE TABLE contacts (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL
);
CREATE TABLE forecasts (
    year INT, 
    month INT, 
    amount NUMERIC
);

CREATE ROLE anil INHERIT LOGIN PASSWORD 'securePass1';

GRANT SELECT ON forecasts TO anil;

CREATE ROLE marketing NOINHERIT;
CREATE ROLE planning NOINHERIT;


GRANT ALL ON contacts TO marketing;
GRANT ALL ON forecasts TO planning;

GRANT marketing TO anil; -- This will allow "anil" to inherit the privileges of the "marketing" role
GRANT planning TO anil; -- This will allow "anil" to inherit the privileges of the "planning" role