USE StudentManagementSystem;
-- Task 1: Retrieve students born after June 16, 2009
SELECT * FROM Student WHERE DateOfBirth > '2009-06-16';

-- Task 2: Retrieve students whose first name starts with 'A' or 'J'
SELECT * FROM Student WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%';

-- Task 3: Retrieve students whose first name is NOT 'Alice' AND email contains '@example.com'
SELECT * FROM Student WHERE FirstName <> 'Alice' AND Email LIKE '%@example.com';