CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR (255) NOT NULL,
    last_name VARCHAR (255) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) 
    REFERENCES employee (employee_id) 
    ON DELETE CASCADE
);

INSERT INTO employee (employee_id, first_name, last_name, manager_id) VALUES
    (1, 'Sandeep', 'Jain', NULL),
    (2, 'Abhishek', 'Kelenia', 1),
    (3, 'Harsh', 'Aggarwal', 1),
    (4, 'Raju', 'Kumar', 2),
    (5, 'Nikhil', 'Aggarwal', 2),
    (6, 'Anshul', 'Aggarwal', 2),
    (7, 'Virat', 'Kohli', 3),
    (8, 'Rohit', 'Sharma', 3);

select * from
employee e inner join employee m on e.employee_id = m.manager_id;