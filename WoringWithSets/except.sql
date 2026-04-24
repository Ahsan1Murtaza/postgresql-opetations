create table A(
    id int,
    name varchar(255)
);

create table B(
    id int,
    name varchar(255)
);

insert into A values (1, 'Alice');
insert into A values (2, 'Bob');

insert into B values (2, 'Bob');
insert into B values (3, 'Charlie');

select * from A
except
select * from B;