CREATE TABLE students (
    student_id serial PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    marks INT
);

INSERT INTO students (
    student_id,
    full_name,
    marks
)
VALUES
    (1, 'Rahul Kumar', NULL),
    (2, 'Abishek Nayak', 5),
    (3, 'Chandra Gupta', 6),
    (4, 'Sanju Sharma', 8);

BEGIN;
    UPDATE students
    SET marks = 2
    WHERE 
    student_id = 1 ;
        
COMMIT;

SELECT * FROM students ORDER BY student_id;