create sequence employee_id_seq
increment by 5
start 10
maxvalue 25
-- owned by employees.id;

drop SEQUENCE employee_id_seq cascade;
drop table employees cascade;

create table employees(
    -- id integer primary key ,
    id integer primary key default nextval('employee_id_seq'),
    name varchar(100) not null
)

-- insert into employees(id, name) values (nextval('employee_id_seq'), 'Alice');
-- insert into employees(id, name) values (nextval('employee_id_seq'), 'Bob');
insert into employees(id, name) values ('Charlie');
insert into employees(id, name) values ('David');

select * from employees;