create table students (
    id int primary key,
    first_name varchar(255),
    last_name varchar(255),
    marks int,
    grade varchar(10)
);


insert into students (id, first_name, last_name, marks, grade) values (1, 'John', 'Doe', 85, 'A');
insert into students (id, first_name, last_name, marks, grade) values (2, 'Jane', 'Doe', 75, 'B');
insert into students (id, first_name, last_name, marks, grade) values (3, 'Jim', 'Beam', 65, 'C');
insert into students (id, first_name, last_name, marks, grade) values (4, 'Jack', 'Daniels', 90, 'A');

select * from students;

-- Updating single row
update students
set grade = 'A+'
where marks = 90;

select * from students;

-- Updating multiple rows
update students
set last_name = 'Smith'
where last_name = 'Doe';

-- updating multiple columns
update students
set marks = 80, grade = 'B+'
where last_name = 'Smith';

select * from students;