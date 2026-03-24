USE StudentManagementSystem;
-- Lab 1
-- Retrieve student details in ascending order of LastName
SELECT * FROM Student ORDER BY LastName ASC;

-- Lab 2
-- Count number of students based on Gender
SELECT Gender, COUNT(*) AS Total_Students FROM Student GROUP BY Gender;

-- ChatGPT Exercise
-- Library Books Scenario
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_name VARCHAR(100));

INSERT INTO Books VALUES
(1, 'SQL Basics', 'Shiva Kumar'),
(2, 'Advanced SQL', 'Ravi Kumar'),
(3, 'DBMS Concepts', 'Anita Rani'),
(4, 'Data Structures', 'Rakesh Reddy'),
(5, 'Networking', 'Anita Sharma');

SELECT author_name, COUNT(*) AS Total_Books
FROM Books
GROUP BY author_name
ORDER BY author_name ASC;
