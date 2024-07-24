CREATE DATABASE College1;

USE College1;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO student
VALUES
(101,"KHUSHI"),
(102,"RAM"),
(103,"Sita");

CREATE TABLE course(
id INT PRIMARY KEY,
course varchar(10)
);

INSERT INTO course 
VALUES
(101,"IT"),
(102,"CS"),
(103,"Maths"),
(104,"English");


SELECT *FROM student;
SELECT *FROM course;

SELECT *FROM student as s
INNER JOIN course as c
ON s.id=c.id;

ALTER TABLE student
ADD COLUMN Age INT;

INSERT INTO student 
(id,Age) 
VALUES
(101,18),
(102,20),
(103,18);

SELECT *FROM student as s
LEFT JOIN course as c
ON s.id =c.id;

SELECT 
*FROM student as s
RIGHT JOIN course as c
ON s.id=c.id;

SELECT *FROM student as s
LEFT JOIN course as c
ON s.id =c.id
UNION
SELECT 
*FROM student as s
RIGHT JOIN course as c
ON s.id=c.id;

SELECT *FROM student as s
LEFT JOIN course as c
ON s.id =c.id
Where c.id IS NULL;

SELECT *FROM student as s
RIGHT JOIN course as c
ON s.id =c.id
Where s.id IS NULL;

SELECT *FROM student as s
LEFT JOIN course as c
ON s.id =c.id
UNION
SELECT 
*FROM student as s
RIGHT JOIN course as c
ON s.id=c.id
Where c.id AND s.id IS NULL




-- SELF JOIN

