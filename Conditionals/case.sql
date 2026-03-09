create table employees (
    id serial primary key,
    name varchar(50),
    department varchar(50),
    salary numeric
);

insert into employees (name, department, salary) values
('Alice', 'HR', 50000),
('Bob', 'Engineering', 70000),
('Charlie', 'Marketing', 45000),
('David', 'Engineering', 80000),
('Eve', 'HR', 55000);

-- 1. Simple CASE
select name, department,
    case department
        when 'HR' then 'Human Resources'
        when 'Engineering' then 'Engineering Department'
        when 'Marketing' then 'Marketing Department'
        else 'Other Department'
    end as department_full_name
from employees;

-- 2. Searched / General CASE
select name, salary,
    case
        when salary < 50000 then 'Low'
        when salary between 50000 and 70000 then 'Medium'
        when salary > 70000 then 'High'
        else 'Unknown'
    end as salary_range
from employees;
