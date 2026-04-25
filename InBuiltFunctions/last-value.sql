CREATE TABLE team_sales (
    employee_name VARCHAR(50),
    sales_amount INT
);

INSERT INTO team_sales VALUES 
('John', 5000), 
('Sarah', 7500), 
('Mike', 6200), 
('Zoe', 8000);


SELECT 
    employee_name,
    sales_amount,
    LAST_VALUE(sales_amount) OVER (
        ORDER BY sales_amount ASC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) as final_benchmark
FROM team_sales;