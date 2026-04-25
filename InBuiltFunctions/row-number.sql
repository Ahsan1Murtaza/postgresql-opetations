create table employes (
    id int,
    name varchar(50),
    department varchar(50),
    salary int
);

insert into employes values (1, 'Alice', 'HR', 50000),
                         (2, 'Bob', 'Engineering', 70000),
                         (3, 'Charlie', 'HR', 55000),
                         (4, 'David', 'Engineering', 75000),
                         (5, 'Eve', 'HR', 60000);

-- Row number without partitioning
SELECT 
    name,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num
FROM employes;


-- Row number with partitioning by department
SELECT 
    name,
    department,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) as dept_row_num
FROM employes;


-- Row number with partitioning with CTE
WITH DeptRank AS (
    SELECT 
        name,
        department,
        salary,
        ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) as dept_row_num
    FROM employes
)
SELECT * FROM DeptRank
WHERE dept_row_num = 1; -- Get the top earner from each department