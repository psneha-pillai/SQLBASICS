CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(10),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
INSERT INTO student VALUES
(101,"ANIL",78,"C","PUNE"),
(102,"SNHEA",93,"A","MUMBAI"),
(103,"PILLAI",83,"B","MUMBAI"),
(104,"PINKY",90,"A","DELHI"),
(105,"SONU",12,"F","DELHI"),
(106,"FARH",82,"B","DELHI");
--SELECT * FROM student WHERE marks>30 LIMIT 3;
SELECT * FROM student ORDER BY city ASC;