create database student;
CREATE DATABASE stu;
DROP DATABASE stu;
USE student;
CREATE TABLE child(
id INT PRIMARY KEY,
name VARCHAR(20),
age INT NOT NULL);
INSERT INTO child VALUES(1,"khushi",20);
INSERT INTO child VALUES(2,"xing",30);
SELECT * FROM child;
