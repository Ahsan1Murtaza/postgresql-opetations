select CURRENT_DATE

create table delivery (
    id int,
    product varchar(50),
    delivery_date date DEFAULT CURRENT_DATE
);

insert into delivery values (1, 'Laptop');
insert into delivery values (2, 'Phone');

SELECT * FROM delivery;