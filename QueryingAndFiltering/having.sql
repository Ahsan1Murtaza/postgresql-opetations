CREATE TABLE payment (
    payment_id SERIAL PRIMARY KEY,
    customer_id INT,
    staff_id INT,
    amount NUMERIC(10,2),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO payment (customer_id, staff_id, amount) VALUES
(1, 1, 100.00),
(1, 1, 150.00),
(2, 1, 50.00),
(2, 2, 40.00),
(3, 2, 300.00),
(4, 2, 20.00),
(4, 1, 30.00),
(5, 1, 400.00),
(6, 2, 10.00),
(6, 2, 15.00),
(7, 1, 500.00),
(8, 2, 5.00);


select customer_id, sum(amount) as total_amount
from payment
group by customer_id
having sum(amount) > 100;

-- it is always used with group by clause, 
-- it is used to filter the groups based on the condition provided in having clause. 
-- It is used to filter the groups based on the aggregate function like sum, count, avg, max, min etc.