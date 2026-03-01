create table employees (
    id int primary key,
    name varchar(255),
    department varchar(255)
);

insert into employees (id, name, department) values (1, 'Alice', 'HR');

select * from employees;