USE StudentManagementSystem;

CREATE TABLE Student_Day9 (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    Email VARCHAR(100));

-- CREATE NEW ENROLLMENT TABLE
CREATE TABLE Enrollment_Day9 (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student_Day9(StudentID));

-- Students
INSERT INTO Student_Day9 VALUES
(1, 'John Doe', 'john@email.com'),
(2, 'Jane Smith', 'jane@email.com'),
(3, 'Bob Johnson', 'bob@email.com');

-- Enrollments (Scenario 1)
INSERT INTO Enrollment_Day9 VALUES
(101, 1, 'MATH101'),
(102, 1, 'HIST201'),
(103, 2, 'PHYS301'),
(104, 2, 'CHEM401');

-- RIGHT OUTER JOIN
SELECT 
    s.StudentID,
    s.FirstName,
    s.Email,
    e.EnrollmentID,
    e.CourseID
FROM Student_Day9 s
RIGHT JOIN Enrollment_Day9 e
ON s.StudentID = e.StudentID;

-- SCENARIO 2 DATA
-- Additional enrollment 
INSERT INTO Enrollment_Day9 VALUES
(105, 4, 'ENG501');

-- LEFT JOIN
SELECT 
    s.StudentID,
    s.FirstName,
    s.Email,
    e.EnrollmentID,
    e.CourseID
FROM Student_Day9 s
LEFT JOIN Enrollment_Day9 e
ON s.StudentID = e.StudentID;

