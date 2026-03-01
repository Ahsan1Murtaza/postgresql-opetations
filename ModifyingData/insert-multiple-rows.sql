create table books (
    id int primary key,
    title varchar(255),
    author varchar(255),
    published_year int
);

insert into books (id, title, author, published_year) 
values (1, 'To Kill a Mockingbird', 'Harper Lee', 1960),
    (2, '1984', 'George Orwell', 1949),
    (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925);


select * from books;