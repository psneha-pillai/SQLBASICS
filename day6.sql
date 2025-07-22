CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT,
    grade CHAR(1)
);

INSERT INTO student VALUES
(101, 'sneha', 20, 'B'),
(102, 'jitesh', 23, 'A'),
(103, 'sunil', 19, 'C'),
(104, 'shashi', 12, 'F');

CREATE TABLE results (
    rollno INT,
    subject VARCHAR(50),
    marks INT
);

INSERT INTO results (rollno, subject, marks) VALUES
(101, 'Math', 80),
(101, 'Science', 85),
(102, 'Math', 60),
(104, 'Science', 75),
(105, 'Math', 90);

-- INNER JOIN
SELECT student.rollno
FROM student
INNER JOIN results ON student.rollno = results.rollno;

-- LEFT JOIN
SELECT student.rollno
FROM student
LEFT JOIN results ON student.rollno = results.rollno;

-- Simulated RIGHT JOIN using flipped LEFT JOIN
SELECT student.rollno
FROM results
LEFT JOIN student ON student.rollno = results.rollno;