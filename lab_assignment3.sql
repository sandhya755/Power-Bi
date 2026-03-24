USE StudentManagementSystem;
SELECT Department, AVG(Salary) AS Average_Salary FROM Employee GROUP BY Department;

-- ChatGPT Exercise
-- Calculate average age of employees in each department
SELECT Department, AVG(age) AS Average_Age FROM Employee GROUP BY Department;