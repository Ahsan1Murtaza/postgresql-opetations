create table undergrad (
    id int,
    name varchar(255)
);

create table postgrad (
    id int,
    name varchar(255)
);

insert into undergrad values (1, 'Alice');
insert into undergrad values (2, 'Bob');

insert into postgrad values (3, 'Charlie');
insert into postgrad values (4, 'David');

select * from undergrad
union
select * from postgrad;