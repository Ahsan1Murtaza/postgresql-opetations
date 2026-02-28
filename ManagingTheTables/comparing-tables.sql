CREATE TABLE foo (
    ID INT PRIMARY KEY,
    NAME VARCHAR (50)
);

INSERT INTO foo (ID, NAME)
VALUES
    (1, 'a'),
    (2, 'b');


CREATE TABLE bar (
    ID INT PRIMARY KEY,
    NAME VARCHAR (50)
);

INSERT INTO bar (ID, NAME)
VALUES
    (1, 'a'),
    (2, 'c');

drop table bar;

-- EXCEPT operator returns the rows from the first query 
-- that are not present in the second query.
SELECT ID,NAME
FROM foo
EXCEPT  SELECT ID,NAME
FROM bar;


-- FULL OUTER JOIN returns all rows from both tables, 
-- matching rows from both sides where available. 
SELECT id, name
FROM foo
FULL OUTER JOIN bar USING (id, name)
WHERE 
foo.id IS NULL
OR bar.id IS NULL;

-- This query returns only the differences between the two tables 
-- by joining everything and then filtering out the rows that actually matched.