select CURRENT_TIME

select CURRENT_TIME(2)

create table delivery (
    id int,
    product varchar(50),
    delivery_date date DEFAULT CURRENT_DATE,
    delivery_time TIME DEFAULT CURRENT_TIME
);

insert into delivery values (1, 'Laptop');
insert into delivery values (2, 'Phone');

SELECT * FROM delivery;