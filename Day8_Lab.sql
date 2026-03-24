USE StudentManagementSystem;
-- DAY 8 - LAB
-- Retrieve student details along with enrollment information using INNER JOIN

SELECT 
    s.StudentID,
    s.FirstName,
	s.LastName,
    e.EnrollmentID,
    e.CourseID
FROM Student s
INNER JOIN Enrollment e
ON s.StudentID = e.StudentID;

-- ChatGPT Exercise
-- Retrieve student names and course names using INNER JOIN on Student, Enrollment and Course

SELECT 
    s.FirstName,
    s.LastName,
    c.CourseTitle
FROM Student s
INNER JOIN Enrollment e
ON s.StudentID = e.StudentID
INNER JOIN Course c
ON e.CourseID = c.CourseID;
