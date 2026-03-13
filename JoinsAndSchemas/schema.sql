create schema "hr";
create schema "sales";


alter schema hr rename to "human_resources";
alter schema sales rename to "sales_department";

create table human_resources.employees (
    employee_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    department_id int
);

create table sales_department.employees (
    employee_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    department_id int
);

insert into human_resources.employees (employee_id, first_name, last_name, department_id) values
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 1),
(3, 'Alice', 'Johnson', 2);

insert into sales_department.employees (employee_id, first_name, last_name, department_id) values
(1, 'Bob', 'Brown', 1),
(2, 'Charlie', 'Davis', 1),
(3, 'Eve', 'Wilson', 2);

select * from human_resources.employees;
select * from sales_department.employees;

drop schema human_resources cascade; -- This will drop the human_resources schema along with all its tables and data.
drop schema sales_department restrict; -- This will fail because the sales_department schema is not empty. You need to drop the tables first or use cascade.