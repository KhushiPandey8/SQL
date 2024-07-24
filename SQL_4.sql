CREATE DATABASE college2;
USE college2;
CREATE TABLE student2(
id INT PRIMARY KEY,
name VARCHAR(20),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(10)
-- constraint grade check (grade>=60 AND city="Mumbai") 
);

INSERT INTO student2
(id,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",50,"D","Mumbai"),
(103,"Chetna",40,"E","Delhi"),
(104,"Yeonjun",93,"A","Mumbai"),
(105,"teayhune",90,"A","Hydrabad"),
(106,"beogyme",70,"B","Noida"),
(107,"lisa",93,"A","Noida"),
(108,"ryujin",96,"A","Jaipur"),
(109,"deniel",91,"A","Delhi"),
(110,"kris",80,"B","Kanpur"),
(111,"jordan",90,"A","Bhopal"),
(112,"jimin",70,"C","Kanpur");

SELECT * FROM student2;

SELECT id,name,city FROM student2;

SELECT DISTINCT city FROM student2;
-- Clause
-- Where Clause 
SELECT * FROM student2 WHERE marks>60;
SELECT * FROM student2 WHERE marks>70 AND city="Mumbai";
SELECT *FROM student2 WHERE marks+10>100;
SELECT *FROM student2 WHERE marks>70 AND grade="A";
SELECT *FROM student2 WHERE marks>70 OR grade="A";
SELECT *FROM student2 WHERE marks BETWEEN 80 AND 90;
SELECT *FROM student2 WHERE city IN("Mumbai","Delhi","Noida","Udaipur");
SELECT *FROM student2 WHERE city NOT IN("Mumbai","Delhi","Noida","Udaipur");
SELECT *FROM student2 LIMIT 6;
SELECT *FROM student2 WHERE marks>80 LIMIT 6;

-- ORDER BY CLAUSE
SELECT * FROM student2  ORDER BY city ASC;
SELECT * FROM student2  ORDER BY marks dESC LIMIT 4;
SELECT MAX(marks) FROM student2;
SELECT MIN(marks) FROM student2;
SELECT AVG(marks) FROM student2;
SELECT count(id) FROM student2;

SELECT city ,COUNT(id)FROM student2 GROUP BY city;
SELECT city ,name,COUNT(id)FROM student2 GROUP BY city,name;
SELECT city ,marks,COUNT(id)FROM student2 GROUP BY city,marks;
SELECT city ,AVG(marks)FROM student2 GROUP BY city ORDER BY city DESC ;
SELECT grade,count(id) FROM student2 GROUP BY grade ORDER BY grade;

SELECT city,COUNT(id) FROM student2
GROUP BY city  HAVING max(marks)>90;

SET SQL_SAFE_UPDATES = 0;

UPDATE student2
SET grade="O"
WHERE grade="A";

UPDATE student2
SET Marks=89
WHERE id=110;

UPDATE student2
SET grade="B"
WHERE marks BETWEEN 80 AND 90;

UPDATE student2
SET Marks=msarks+1;

DELETE FROM student2
WHERE marks<50;

--  ADD Col
ALTER TABLE student2
ADD COLUMN age INT NOT NULL;

ALTER TABLE student2
DROP COLUMN age;

ALTER TABLE student2
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student2
MODIFY COLUMN age VARCHAR(2);

INSERT INTO student2 VALUES(123,"xing",99,"A","mumbai",10);

SELECT *FROM student2;

ALTER TABLE student2
CHANGE age stu_age INT;
INSERT INTO student2 VALUES(133,"xing-xing",94,"A","mumbai",100);

ALTER TABLE student2
DROP COLUMN stu_age;

ALTER TABLE student2
RENAME TO student;



ALTER TABLE student
RENAME TO student2;

-- SELECT *FROM student;

TRUNCATE TABLE student;

ALTER TABLE student2
CHANGE Full_Name Name varchar(50);

