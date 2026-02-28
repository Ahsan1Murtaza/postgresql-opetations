create table store (
    id int primary key,
    name varchar(50),
    location varchar(50)
);

insert into store (id, name, location)
values
    (1, 'Walmart', 'New York'),
    (2, 'Target', 'Los Angeles'),
    (3, 'Costco', 'Chicago');

-- Describe the structure of the table
SELECT column_name, data_type, is_nullable, column_default
FROM information_schema.columns
WHERE table_name = 'store';