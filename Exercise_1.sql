CREATE DATABASE record;
USE record;
CREATE TABLE Addmissionform(
id INT PRIMARY KEY,
name VARCHAR(20),
course VARCHAR(50),
totalfees INT,
contactno INT ,
address VARCHAR(30)
);

INSERT INTO Addmissionform
(id,name,course,totalfess,contactno,address)
VALUES
(1,"khushi","ICSE",60000,12345,"nallasopara"),
(2,"Xing-Xing","DAnalyst",100000,23445,"Shinghai"),
(3,"kai","ICSE",70000,89000,"mumbai"),
(4,"Lia","DMining",60000,34679,"delhi"),
(5,"Casey","English",50000,45345,"Tokyo"),
(6,"Nant","ICSE",90000,12222,"Vasai"),
(7,"khushi","DMining",120000,23451,"Virar"),
(8,"Meng","Gra Des",60000,12345,"Tokyo"),
(9,"Jordan","English",60000,56785,"Paris"),
(10,"Mohak","Gra Des",60000,12295,"Noida");

SELECT *FROM Addmissionform;
UPDATE Addmissionform
SET totalfess=130000
where id=8;

ALTER TABLE Addmissionform
CHANGE totalfess Total_Fees INT;

UPDATE Addmissionform
SET totalfess = Totalfess;
DELETE FROM Addmissionform
where id = 4;
SET SQL_SAFE_UPDATES = 0;
UPDATE Addmissionform
set course = "java"
where course = " ";
CREATE TABLE Biling(
num INT,
Total_fees INT,
Balance_fees INT,
paid_fees INT);
SET SQL_SAFE_UPDATES = 0;
INSERT INTO biling
(num,Total_fees,Balancefees,paid_fees)
VALUES
(1,60000,15000,35000),
(2,1


