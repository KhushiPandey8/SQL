CREATE DATABASE IF NOT EXISTS xyz;
USE XYZ;
CREATE TABLE employee(
id int PRIMARY KEY,
name VARCHAR (30),
salary INT NOT NULL);

INSERT INTO employee
(id,name,salary)
VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);
SELECT* FROM Employee;

CREATE TABLE temp1(
id INT UNIQUE,
name VARCHAR(20));
INSERT INTO  temp1 VALUES(2,"khushi");
INSERT INTO temp1 VALUES(12,"HUi");
SELECT* FROM temp1;

CREATE TABLE temp2(
id INT,
name VARCHAR(20),
city VARCHAR(30),
PRIMARY KEY (id,name));
INSERT INTO temp2 VALUES(1,"kai","mumbai");
INSERT INTO temp2 VALUES(2,"soobin","delhi");
INSERT INTO temp2 VALUES(2,"yeon","jaipur");
SELECT* FROM temp2;

-- foreign key
-- CREATE TABLE temp3(
-- id INT,
-- FOREIGN KEY (name) REFERENCES temp2(name))
-- ;

-- default use
CREATE TABLE temp4 (
id INT,
salary INT DEFAULT 25000);
INSERT INTO temp4 (id) VALUES(101);
select *from temp4;