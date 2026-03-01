create table developers(
    id int,
    name varchar(250),
    language varchar(250),
    role varchar(250)
);

insert into developers values(1, 'john', 'java', 'android'),
(2, 'aslam', 'csharp', 'windows'),
(3, 'lily', 'javascript', 'frontend'),
(4, 'asad', 'python', 'backend');

select * from developers where role = 'frontend';

select * from developers where language = 'javascript' and name = 'lily';

select * from developers where language = 'javascript' or name = 'aslam';

select * from developers where name in ('john', 'lily', 'charles');


select * from developers where name like 'as%';

select * from developers where length(name) between 3 and 4;

select * from developers where name <> 'john';