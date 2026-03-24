-- =====================================================
-- Day10 Lab Assignment
-- =====================================================

USE StudentManagementSystem;

-- =====================================================
-- 1. FULL OUTER JOIN (MySQL Version)
-- MySQL does NOT support FULL OUTER JOIN directly
-- So we use LEFT JOIN + RIGHT JOIN with UNION ALL
-- =====================================================

SELECT 
    S.StudentID,
    S.FirstName,
    S.LastName,
    S.Email,
    E.EnrollmentID,
    E.CourseID
FROM Student S
LEFT JOIN Enrollment E
ON S.StudentID = E.StudentID

UNION ALL

SELECT 
    S.StudentID,
    S.FirstName,
    S.LastName,
    S.Email,
    E.EnrollmentID,
    E.CourseID
FROM Student S
RIGHT JOIN Enrollment E
ON S.StudentID = E.StudentID
WHERE S.StudentID IS NULL;

-- ChatGPT Exercise
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS inventory;

CREATE TABLE  inventory (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    StockQuantity INT
);

CREATE TABLE IF NOT EXISTS sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    SaleQuantity INT,
    SaleDate DATE
);

INSERT INTO inventory VALUES
(1,'Laptop',50),
(2,'Mouse',100),
(3,'Keyboard',75);

INSERT INTO sales VALUES
(201,1,2,'2024-01-10'),
(202,3,5,'2024-01-12'),
(205,4,1,'2024-01-15');  

-- FULL OUTER JOIN for Inventory & Sales

SELECT 
    i.ProductID,
    i.ProductName,
    i.StockQuantity,
    s.SaleID,
    s.SaleQuantity,
    s.SaleDate
FROM inventory i
LEFT JOIN sales s
ON i.ProductID = s.ProductID

UNION ALL

SELECT 
    i.ProductID,
    i.ProductName,
    i.StockQuantity,
    s.SaleID,
    s.SaleQuantity,
    s.SaleDate
FROM inventory i
RIGHT JOIN sales s
ON i.ProductID = s.ProductID
WHERE i.ProductID IS NULL;
