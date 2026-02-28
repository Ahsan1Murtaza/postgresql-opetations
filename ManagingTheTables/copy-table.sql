create table houses (
    id serial primary key,
    address varchar(255) not null,
    price numeric(10, 2) not null,
    bedrooms integer not null,
    bathrooms integer not null
);

insert into houses (address, price, bedrooms, bathrooms) values
('123 Main St', 250000.00, 3, 2),
('456 Elm St', 350000.00, 4, 3),
('789 Oak St', 150000.00, 2, 1);

select * from houses;


-- Copy table structure and data
create table houses_copy1 as table houses;
select * from houses_copy1;


-- Copy table structure only
create table houses_copy2 as table houses with no data;
select * from houses_copy2;


-- copy table structure and partial data
create table houses_copy3 as
select * from houses
where price > 200000;
select * from houses_copy3;