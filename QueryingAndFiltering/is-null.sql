create table books (
    id serial primary key,
    title varchar(255) not null,
    author varchar(255) not null,
    published_date date
);


insert into books (title, author, published_date) values
('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10');
insert into books (title, author) values
('To Kill a Mockingbird', 'Harper Lee');

select * from books
where published_date is null;
