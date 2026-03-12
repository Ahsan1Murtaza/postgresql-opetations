create table students (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT,
    age INTEGER CHECK (age >= 18) -- Check constraint to ensure age is 18 or older
);

INSERT INTO students(student_id, student_name, age)
VALUES
    ('101', 'Alice', '20'),
    -- ('102', 'Bob', '17'), -- This will fail due to check constraint
    ('103', 'Charlie', '22'); 

SELECT * FROM students;