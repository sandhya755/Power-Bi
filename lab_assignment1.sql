USE StudentManagementSystem;

-- Lab 1: Add Salary and Department columns
ALTER TABLE Employee
ADD Department VARCHAR(50);

-- Insert / Update data into new columns
UPDATE Employee SET Salary = 60000, Department = 'IT' WHERE emp_id = 1;
UPDATE Employee SET Salary = 45000, Department = 'HR' WHERE emp_id = 2;
UPDATE Employee SET Salary = 75000, Department = 'IT' WHERE emp_id = 3;
UPDATE Employee SET Salary = 30000, Department = 'Sales' WHERE emp_id = 4;

-- Retrieve employees from IT department
-- with salary greater than 50000

SELECT * FROM Employee WHERE Salary > 50000 AND Department = 'IT';