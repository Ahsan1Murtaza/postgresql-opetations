CREATE ROLE abhishek
LOGIN 
PASSWORD '12345';

create table employee (
    id serial primary key,
    name varchar(50),
    department varchar(50)
);
insert into employee (name, department) values
('Abhishek', 'IT'),
('John Doe', 'HR'),
('Jane Smith', 'Finance');

GRANT SELECT ON employee TO abhishek; -- This will allow "abhishek" to read data from the employee table.

GRANT INSERT, UPDATE, DELETE ON employee TO abhishek; -- This will allow "abhishek" to insert, update, and delete data in the employee table.

REVOKE SELECT ON employee FROM abhishek; -- This will revoke the SELECT privilege from "abhishek" on the employee table.

REVOKE ALL ON employee FROM abhishek; -- This will revoke all privileges from "abhishek" on the employee table, including SELECT, INSERT, UPDATE, and DELETE.