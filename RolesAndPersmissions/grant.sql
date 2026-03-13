create role "user1" login password 'user1_pass';

create table employees (
    employee_id serial primary key,
    employee_name varchar(100),
    department varchar(50)
);

select * from employees;

GRANT SELECT ON employees TO "user1"; -- This will allow "user1" to read data from the employees table.

GRANT INSERT, UPDATE, DELETE ON employees TO "user1"; -- This will allow "user1" to insert, update, and delete data in the employees table.