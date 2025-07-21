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

SELECT COUNT(*) FROM student;
SELECT COUNT(*) FROM student WHERE grade = 'A';
SELECT SUM(marks) FROM student;
SELECT SUM(marks) AS total_marks FROM student;
SELECT SUM(marks) FROM student WHERE grade="B";
SELECT * FROM student;
SELECT SUM(marks) AS total_marks
FROM student
WHERE name IN ('sneha', 'jitesh');
SELECT AVG(marks) FROM student;
SELECT MIN(marks) AS lowest_marks FROM student;
SELECT MIN(marks) AS min_delhi FROM student WHERE grade="A";

SELECT MAX(marks) AS highest_marks FROM student;
SELECT grade,COUNT(*) FROM student GROUP BY grade;
SELECT grade ,AVG(marks) FROM student GROUP BY grade;
SELECT grade,SUM(marks) FROM student GROUP BY grade;
SELECT grade,MIN(marks) FROM student GROUP BY grade;
SELECT grade,MAX(marks) FROM student GROUP BY grade;
SELECT grade, AVG(marks) AS avg_marks
FROM student
GROUP BY grade
HAVING AVG(marks) < 25;
SELECT grade, COUNT(*) AS num_students
FROM student
GROUP BY grade
HAVING COUNT(*) > 1;
SELECT * FROM student;
SELECT grade, AVG(marks) AS avg_marks
FROM student
GROUP BY grade
HAVING AVG(marks) > 20 AND COUNT(*) > 1;