CREATE DATABASE Assignment;
USE Assignment;

CREATE TABLE Student
(
 StudentId CHAR(4) PRIMARY KEY,
 StudentName VARCHAR(30) NOT NULL,
 StudentEmail VARCHAR(60) UNIQUE,
 StudentAddress VARCHAR(250),
 StudentAge INT CHECK(StudentAge>16)

);


CREATE TABLE library(
   bookID CHAR(4) PRIMARY KEY,
   WhoTake char(4),
   bookName VARCHAR(20) NOT NULL,
   AVAILABLE BOOLEAN DEFAULT true,
   
   FOREIGN KEY (WhoTake) REFERENCES Student(StudentId)
 );
 
CREATE TABLE FEES
(
  feesID CHAR(4) PRIMARY KEY,
  feesGiverID CHAR(4),
  bookID CHAR(4),
  feesAmount INT DEFAULT(0),
  
  constraint FOREIGN KEY (feesGiverID) REFERENCES Student(StudentId),
  constraint FOREIGN KEY (bookID) REFERENCES library(bookID)
);


CREATE TABLE Employee(
  EmployeeID CHAR(4) PRIMARY KEY,
  FirstName VARCHAR(25),
  LastName VARCHAR(25),
  Age INT,
  Department VARCHAR(30)
);

INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('1',"John","Doe",28,'Sales');

INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('2',"Jane","Smith",32,'Marketing');

INSERT INTO Employee(,FirstName,LastName,Age,Department)
VALUES('3',"Michael","Johnson",35,'Finance');

INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('4',"Sarah","Brown",30,'HR');

INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('5',"William","Davis",25,'Engineering');

INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('6',"Emily","Wilson",28,'Sales');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('7',"Robert","Lee",33,'Marketing');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('8',"Laura","Hall",29,'Finance');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department)
VALUES('9',"Thomas","White",31,'HR');
INSERT INTO Employee(EmployeeID,FirstName,LastName,Age,Department) 
VALUES('10',"Olivia","Clark",27,'Engineering');

SELECT DISTINCT Department
FROM Employee;

SELECT LastName
FROM Employee
ORDER BY Age DESC;

SELECT LastName
FROM Employee
WHERE Age>30 AND Department ="Marketing";

SELECT * FROM Employee;

SELECT FirstName , LastName 
FROM Employee
WHERE FirstName OR LastName LIKE "%son" or "%son%" or "son%";


SELECT * FROM Employee
WHERE Department ="Engineering";

SET SQL_SAFE_UPDATES =0;
DELETE  FORM Employee 
where  EmployeeID = 1;
