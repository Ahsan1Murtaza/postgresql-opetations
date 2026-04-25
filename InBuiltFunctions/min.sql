create table students (
    id int,
    name varchar(50),
    score int
);

insert into students values (1, 'Alice', 85);
insert into students values (2, 'Bob', 90);
insert into students values (3, 'Charlie', 78);
insert into students values (4, 'David', 78);


select min(score) as lowest_score from students;