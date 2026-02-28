create temp table temp_users (
    id serial primary key,
    username varchar(50) not null,
    email varchar(255) not null
);

insert into temp_users (username, email) values
('temp_user1', 'temp_user1@example.com'),
('temp_user2', 'temp_user2@example.com');

select * from temp_users;





