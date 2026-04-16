
CREATE DATABASE Company;
GO

USE Company;
GO


CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    HireDate DATE,
    JobTitle NVARCHAR(100),
    Salary DECIMAL(10, 2),
    Department NVARCHAR(50)
);
GO


INSERT INTO Employees (FirstName, LastName, Email, PhoneNumber, HireDate, JobTitle, Salary, Department)
VALUES 
('Eli', 'Memmedov', 'ali@company.az', '050-123-45-67', '2021-03-15', 'Software Engineer', 2200.00, 'IT'),
('Leyla', 'Hesenova', 'leyla@company.az', '055-987-65-43', '2019-07-10', 'HR Assistant', 1800.00, 'HR'),
('Orxan', 'Eliyev', 'orkhan@company.az', '070-555-44-33', '2022-01-20', 'System Admin', 2600.00, 'IT'),
('Aysel', 'Huseynova', 'aysel@gmail.com', '051-111-22-33', '2018-11-05', 'Financial Analyst', 2100.00, N'Maliyyə'),
('Murad', 'Quliyev', 'murad@company.az', '050-999-88-77', '2023-05-12', 'Intern', 1200.00, 'IT'),
('Samirə', 'Rzayeva', 'samira@company.az', '077-444-55-66', '2020-09-01', 'Accountant', 1400.00, N'Maliyyə');
GO



SELECT * FROM Employees;


SELECT * FROM Employees WHERE Salary > 2000;


SELECT * FROM Employees WHERE Department = 'IT';


SELECT * FROM Employees ORDER BY Salary DESC;


SELECT FirstName, Salary FROM Employees;
SELECT * FROM Employees WHERE HireDate > '2020-12-31';

SELECT * FROM Employees WHERE Email LIKE '%company.az%';





SELECT MAX(Salary) AS MaxSalary FROM Employees;


SELECT MIN(Salary) AS MinSalary FROM Employees;


SELECT AVG(Salary) AS AvgSalary FROM Employees;
SELECT COUNT(*) AS TotalEmployees FROM Employees;


SELECT SUM(Salary) AS TotalSalary FROM Employees;


SELECT Department, COUNT(*) AS EmployeeCount 
FROM Employees 
GROUP BY Department;


SELECT Department, AVG(Salary) AS AvgSalary 
FROM Employees 
GROUP BY Department;


SELECT Department, MAX(Salary) AS MaxSalary 
FROM Employees 
GROUP BY Department;

UPDATE Employees 
SET Salary = 2800 
WHERE EmployeeID = 1;

UPDATE Employees 
SET Salary = Salary * 1.10 
WHERE Department = 'IT';


UPDATE Employees 
SET JobTitle = N'HR Meneceri' 
WHERE FirstName = N'Leyla' AND LastName = N'Həsənova';




DELETE FROM Employees 
WHERE EmployeeID = 5;

DELETE FROM Employees 
WHERE Salary < 1500;




SELECT * FROM Employees 
WHERE FirstName LIKE '%a%';


SELECT * FROM Employees 
WHERE Salary BETWEEN 2000 AND 2500;


SELECT * FROM Employees 
WHERE Department IN (N'Maliyyə', 'IT');