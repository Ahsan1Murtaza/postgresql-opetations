CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO customer (first_name, last_name, email) VALUES
('Kevin', 'Hart', 'kevin@example.com'),
('Karen', 'Smith', 'karen@example.com'),
('Kunal', 'Mehta', 'kunal@example.com'),
('Jennifer', 'Lopez', 'jennifer@example.com'),
('Jenifer', 'Aniston', 'jenifer@example.com'),
('Barbara', 'Jones', 'barbara@example.com'),
('Barry', 'Lovelace', 'barry@example.com'),
('Albert', 'Crouse', 'albert@example.com'),
('Alexander', 'Fennell', 'alex@example.com'),
('Amber', 'Dixon', 'amber@example.com'),
('Sherlock', 'Holmes', 'sherlock@example.com'),
('Theresa', 'May', 'theresa@example.com');




select * from customer
where first_name not like '_her%';