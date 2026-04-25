create table students (
    id int,
    name varchar(50),
    score int
);

insert into students values (1, 'Alice', 85);
insert into students values (2, 'Bob', 90);
insert into students values (3, 'Charlie', 78);
insert into students values (4, 'David', 78);

SELECT DISTINCT FIRST_VALUE(name) OVER (ORDER BY score) 
FROM students;


SELECT 
    name, 
    score,
    FIRST_VALUE(name) OVER (ORDER BY score DESC) as topper,
    (FIRST_VALUE(score) OVER (ORDER BY score DESC) - score) as gap_from_first
FROM students;