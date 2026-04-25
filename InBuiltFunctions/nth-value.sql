create table students (
    id int,
    name varchar(50),
    score int
);

insert into students values (1, 'Alice', 85);
insert into students values (2, 'Bob', 90);
insert into students values (3, 'Charlie', 78);


SELECT 
    name, 
    score,
    NTH_VALUE(name, 2) OVER (
        ORDER BY score DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) as runner_up,
    (score - NTH_VALUE(score, 2) OVER (
        ORDER BY score DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )) as gap_from_silver
FROM students;