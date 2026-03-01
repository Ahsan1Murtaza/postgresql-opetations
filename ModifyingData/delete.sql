create table flowers (
    id int primary key,
    name varchar(255),
    color varchar(255)
);

insert into flowers (id, name, color) values (1, 'Rose', 'Red');
insert into flowers (id, name, color) values (2, 'Tulip', 'Yellow');
insert into flowers (id, name, color) values (3, 'Lily', 'White');
insert into flowers (id, name, color) values (4, 'Daisy', 'Pink');

delete from flowers
where name = 'Tulip';

select * from flowers;