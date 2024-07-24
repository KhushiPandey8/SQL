CREATE DATABASE Department;
USE Department;
CREATE TABLE course(
id INT PRIMARY KEY,
name VARCHAR (50)
);
INSERT INTO course
VALUES
(101,"IT"),
(102,"CS");
UPDATE course
SET id=103
WHERE id=102;

SELECT * FROM course;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dep_id INT,
FOREIGN KEY (dep_id) REFERENCES course(id)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);

DROP table teacher;

INSERT INTO teacher
VALUES
(11,"Adam",101),
(12,"Eve",102);


SELECT *FROM teacher;
DELETE from teacher
where id=101;

-- ALTER

