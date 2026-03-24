USE StudentManagementSystem;
-- Task 1: Create Person table

CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    age INT);

-- Task 2: Create Employee table

CREATE TABLE Employee2 (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT);

-- Task 3: Insert data into Person
INSERT INTO Person VALUES
(1,'Ravi','Kumar',25),
(2,'Anita','Sharma',30);

-- Task 4: Insert data into Employee2
INSERT INTO Employee2 VALUES
(3,'Suresh','Reddy',35),
(4,'Meena','Patel',28);

-- Task 5: UNION of Person and Employee2 tables
SELECT FirstName, LastName, age FROM Person
UNION
SELECT first_name, last_name, age FROM Employee2;
