create table users(
    id serial primary key, -- auto-incrementing integer
    username varchar(50) not null,
    password varchar(50) not null
);

insert into users(username, password)
values ('john_doe', 'password123'),
       ('jane_smith', 'securepass456');
    
select * from users;


DROP TABLE users;

-- without serial
create SEQUENCE user_id_seq; -- Creates a sequence named 'user_id_seq' for generating unique IDs
CREATE TABLE users (
    id integer PRIMARY KEY DEFAULT nextval('user_id_seq'),
    username varchar(50) NOT NULL,
    password varchar(50) NOT NULL
);
