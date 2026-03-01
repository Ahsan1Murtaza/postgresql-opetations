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


select * from developers
limit 3