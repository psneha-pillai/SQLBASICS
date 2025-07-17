CREATE TABLE student (
    name VARCHAR(10),
    roll INT,
    marks INT NOT NULL,
    grade CHAR(1)
);

-- Correct table name and use proper INSERT syntax
INSERT INTO student VALUES
    ('SNEHA', 1, 22, 'B'),
    ('AYUSH', 2, 30, 'A'),
    ("preethi",3,21,"B"),
    ("jitesh",22,30,"A"),
    ("SWAPNA",5,10,"F");

-- Query to display data
SELECT * FROM student;
