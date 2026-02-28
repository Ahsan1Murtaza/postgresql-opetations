create table account(
    user_id serial primary key,
    username varchar(50) not null,
    password varchar(50) not null,
    email varchar(255) not null,
    created_on timestamp not null,
    last_login timestamp
);


