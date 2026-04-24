create table patients (
    id int,
    name varchar(255),
    age int,
    city varchar(255)
);

insert into patients values (1, 'Alice', 30, 'New York');
insert into patients values (2, 'Bob', 25, 'Los Angeles');
insert into patients values (3, 'Charlie', 35, 'Chicago');
insert into patients values (4, 'David', 28, 'New York');


select name
from patients
where age > any (select age from patients where city = 'New York');
