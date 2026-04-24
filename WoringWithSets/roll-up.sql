create table courses (
    id int,
    name varchar(255),
    department varchar(255),
    price int
);

insert into courses values (1, 'Intro to SQL', 'Computer Science', 100);
insert into courses values (2, 'Advanced SQL', 'Computer Science', 150);
insert into courses values (3, 'Intro to Economics', 'Economics', 120);
insert into courses values (4, 'Advanced Economics', 'Economics', 180);


select name, department
from courses
group by ROLLUP(name, department)
order by name, department;