CREATE DATABASE company;

USE company;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(30),
manager_id INT
);
INSERT INTO employee
VALUES
(101,"Adam",103),
(102,"Bob",104),
(103,"Tom",101),
(104,"Casey",101);

SELECT *FROM employee;

SELECT a.name as manager_name,b.name
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

SELECT name FROM employee
UNION
SELECT name FROM employee;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;