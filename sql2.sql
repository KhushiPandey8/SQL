CREATE DATABASE Employee;
CREATE DATABASE IF NOT EXISTS Employee;
CREATE DATABASE student;
CREATE DATABASE  IF NOT EXISTS student; 
DROP DATABASE IF EXISTS Employee;
CREATE DATABASE Employee;
USE Employee;
CREATE TABLE person(
id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL);
INSERT INTO person VALUES(1,"khushi",20);
INSERT INTO person VALUES(2,"xing-xing",19);
SELECT *FROM person;
INSERT INTO person VALUES(3,"li hui",23);
INSERT INTO person VALUES(4,"jennie",25);
INSERT INTO person (id,name,age)
VALUES
(11,"gun",40),
(12,"Rose",26),
(13,"Sakura",28);