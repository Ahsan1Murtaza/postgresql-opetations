create table room1 (
    id int,
    name varchar(255)
);

create table room2 (
    id int,
    name varchar(255)
);

insert into room1 values (1, 'Alice');
insert into room1 values (2, 'Bob');

insert into room2 values (2, 'Bob');
insert into room2 values (3, 'Charlie');

select * from room1
intersect
select * from room2;