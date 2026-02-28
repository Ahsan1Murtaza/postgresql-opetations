create table students(
    id serial primary key,
    name varchar(100) not null,
    age integer not null,
    grade varchar(10) not null
);

-- temp table has more precedence than permanent table
create temp table students(
    id serial primary key,
    name varchar(100) not null
);

insert into students(name) values ('Alice');

select * from students;
