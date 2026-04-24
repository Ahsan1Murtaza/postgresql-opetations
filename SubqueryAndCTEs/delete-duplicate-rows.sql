create table basket (
    id int,
    product varchar(255),
    price int
);

insert into basket values (1, 'Apple', 1);
insert into basket values (2, 'Banana', 1);
insert into basket values (3, 'Apple', 1);
insert into basket values (4, 'Orange', 2);
insert into basket values (5, 'Banana', 1);
insert into basket values (6, 'Apple', 1);


delete from basket
where id in (
select id from (
select id, ROW_NUMBER() over (partition by product order by id) as row_number from basket)
where row_number > 1
);

select * from basket;