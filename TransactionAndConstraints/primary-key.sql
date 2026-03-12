CREATE TABLE books (
    book_id INTEGER PRIMARY KEY, -- Primary key combines not null and unique constraints
    title TEXT,
    price INTEGER
);

INSERT INTO books(book_id, title, price)
VALUES
    ('101', 'Jobs', '2000'),
    ('102', 'Geeta', '250'),
    ('103', 'Ramayana', '354'),
    ('104', 'Vedas', '268');

SELECT * FROM books;