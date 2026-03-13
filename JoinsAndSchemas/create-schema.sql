create user alex with encrypted password 'password';


create schema if not exists "JoinsAndSchemas" authorization alex;

create table "JoinsAndSchemas".departments (
    department_id int primary key,
    department_name varchar(50)
);

select * from "JoinsAndSchemas".departments;

SELECT 
  * 
FROM 
    pg_catalog.pg_namespace
ORDER BY 
    nspname;