-- Create table zoo_1
CREATE TABLE zoo_1 (
    id INT PRIMARY KEY,
    animal VARCHAR(100) NOT NULL
);

-- Create table zoo_2
CREATE TABLE zoo_2 (
    id INT PRIMARY KEY,
    animal VARCHAR(100) NOT NULL
);

-- Insert data into zoo_1
INSERT INTO zoo_1 (id, animal)
VALUES
    (1, 'Lion'),
    (2, 'Tiger'),
    (3, 'Wolf'),
    (4, 'Fox');

-- Insert data into zoo_2
INSERT INTO zoo_2 (id, animal)
VALUES
    (1, 'Tiger'),
    (2, 'Lion'),
    (3, 'Rhino'),
    (4, 'Panther');

SELECT * FROM zoo_1;
SELECT * FROM zoo_2;

-- Perform LEFT JOIN
SELECT *
FROM zoo_1
LEFT JOIN zoo_2 ON zoo_1.animal = zoo_2.animal;