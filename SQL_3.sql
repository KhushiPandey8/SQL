-- Sample Database
CREATE DATABASE college;
USE college;
CREATE TABLE students(
rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR (1),
city VARCHAR(20));
INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",50,"D","Mumbai"),
(103,"Chetna",40,"E","Delhi"),
(104,"Yeonjun",93,"A","Mumbai");
INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(105,"teayhune",90,"A","Mumbai"),
(106,"beogyme",70,"B","Mumbai"),
(107,"lisa",93,"A","Mumbai"),
(108,"ryujin",96,"A","Mumbai");
select * from students;
select name,marks from students;
select distinct city From students;


-- Where clause

select *
From Students
Where city = "Mumbai" AND marks >80;

SELECT AVG(marks) FROM students;
SELECT name ,marks FROM students WHERE marks>76.25;


SELECT AVG(marks) FROM students;
SELECT name ,marks FROM students WHERE marks>(SELECT AVG(marks) FROM students);

SELECT rollno,name FROM students WHERE (rollno%2=0);

SELECT rollno,name FROM students WHERE rollno IN(102,104,106,108);
SELECT rollno,name FROM students WHERE rollno IN(SELECT rollno FROM students WHERE (rollno%2=0));

SELECT * FROM students Where city="mumbai";

SELECT MAX(marks) FROM(SELECT * FROM students Where city="mumbai") as t;

CREATE VIEW view1 AS
SELECT  rollno,name FROM students;

SELECT * FROM view1;


