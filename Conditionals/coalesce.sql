select coalesce(null, 2, 1)

create table items(
    id serial primary key,
    name varchar(50),
    price numeric,
    discount numeric
);


insert into items (name, price, discount) values
('Item A', 10.00, 2.00),
('Item B', 20.00, null),
('Item C', null, 1.50);

select name, price, coalesce(price, 0) as price_with_default from items;


select name, price, price - coalesce(discount, 0) as net_price from items;