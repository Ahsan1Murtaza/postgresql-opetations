create table if not exists employees (
    id int,
    name varchar(255),
    department varchar(255),
    salary decimal(10, 2)
);

insert into employees 
(id, name, department, salary) 
values 
(1, 'Alice', 'HR', 60000),
(2, 'Bob', 'Engineering', 80000),
(2, 'Charlie', 'Marketing', 55000),
(4, 'David', 'Engineering', 75000);

select * from employees
order by name desc, id asc;
