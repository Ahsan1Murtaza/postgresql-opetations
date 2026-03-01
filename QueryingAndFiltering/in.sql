CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);

CREATE TABLE rental (
    rental_id INT PRIMARY KEY,
    inventory_id INT,
    customer_id INT,
    staff_id INT
);

insert into customer values (1, 'john', 'don'),
(2, 'aslam', 'nun');

insert into rental values (101, 102, 2, 303);

select first_name, last_name from customer
where customer_id in (
    select customer_id from rental
);