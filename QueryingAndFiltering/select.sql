create table employees (
    id int primary key,
    name varchar(255),
    department varchar(255),
    salary decimal(10, 2)
);

insert into employees 
(id, name, department, salary) 
values 
(1, 'Alice', 'HR', 60000),
(2, 'Bob', 'Engineering', 80000),
(3, 'Charlie', 'Marketing', 55000),
(4, 'David', 'Engineering', 75000);

select name from employees;

select name, department from employees
where department = 'Engineering';


select name, salary from employees
where salary > 60000;
