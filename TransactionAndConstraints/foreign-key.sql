create table departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT
);


create table employees (
    employee_id INTEGER PRIMARY KEY,
    employee_name TEXT,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE CASCADE
);



INSERT INTO departments(department_id, department_name)
VALUES
    ('1', 'HR'),
    ('2', 'Finance'),
    ('3', 'IT');

INSERT INTO employees(employee_id, employee_name, department_id)
VALUES
    ('101', 'Alice', '1'),
    ('102', 'Bob', '2'),
    ('103', 'Charlie', '3');
    -- ('104', 'David', '4'); -- This will fail due to foreign key constraint

SELECT * FROM departments;
SELECT * FROM employees;

select e.employee_name, d.department_name from
employees e join departments d on e.department_id = d.department_id;

select * from
employees e join departments d on e.department_id = d.department_id;


DELETE FROM departments WHERE department_id = 1;