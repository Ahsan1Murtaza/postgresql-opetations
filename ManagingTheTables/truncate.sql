create table books (
    id serial primary key,
    title varchar(255) not null,
    author varchar(255) not null,
    published_date date
);

insert into books (title, author, published_date) values
('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10'),
('To Kill a Mockingbird', 'Harper Lee', '1960-07-11');

select * from books;

truncate table books;

select * from books;