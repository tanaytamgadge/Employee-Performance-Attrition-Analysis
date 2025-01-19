-- Step 1: Create the database
CREATE DATABASE EmployeeDB;

-- Switch to the newly created database
USE EmployeeDB;

-- Step 2: Create the Employee table
CREATE TABLE EmployeeInformation (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    YearsAtCompany INT,
    MonthlyIncome DECIMAL(10, 2),
    PerformanceRating INT,
    PromotionStatus VARCHAR(10),
    Attrition VARCHAR(10),
    ReasonForLeaving VARCHAR(100),
    LastWorkingDay DATE
);

-- Step 3: Insert Employee records with details
INSERT INTO EmployeeInformation (Name, Department, Gender, Age, YearsAtCompany, MonthlyIncome, PerformanceRating, PromotionStatus, Attrition, ReasonForLeaving, LastWorkingDay)
VALUES
('Aarav Sharma', 'IT', 'Male', 30, 5, 60000.00, 4, 'Yes', 'No', NULL, NULL),
('Isha Patel', 'HR', 'Female', 28, 3, 50000.00, 5, 'Yes', 'No', NULL, NULL),
('Rohan Verma', 'Sales', 'Male', 35, 8, 70000.00, 3, 'No', 'Yes', 'Personal Reasons', '2024-11-15'),
('Priya Nair', 'Finance', 'Female', 32, 6, 65000.00, 4, 'No', 'No', NULL, NULL),
('Arjun Gupta', 'Marketing', 'Male', 27, 4, 55000.00, 3, 'Yes', 'No', NULL, NULL),
('Sanya Desai', 'IT', 'Female', 29, 2, 48000.00, 4, 'No', 'No', NULL, NULL),
('Vir Singh', 'Sales', 'Male', 40, 10, 80000.00, 5, 'Yes', 'No', NULL, NULL),
('Ananya Reddy', 'HR', 'Female', 34, 7, 70000.00, 3, 'No', 'Yes', 'Better Opportunity', '2024-12-01'),
('Siddharth Joshi', 'Marketing', 'Male', 33, 5, 60000.00, 2, 'No', 'Yes', 'Health Issues', '2024-10-25'),
('Madhavi Kumar', 'Finance', 'Female', 31, 3, 52000.00, 4, 'Yes', 'No', NULL, NULL),
('Kunal Yadav', 'HR', 'Male', 29, 2, 49000.00, 3, 'No', 'No', NULL, NULL),
('Vijay Kumar', 'Sales', 'Male', 34, 6, 71000.00, 5, 'Yes', 'No', NULL, NULL),
('Meera Rao', 'IT', 'Female', 25, 1, 47000.00, 4, 'No', 'No', NULL, NULL),
('Neha Agarwal', 'Finance', 'Female', 36, 8, 76000.00, 3, 'Yes', 'No', NULL, NULL),
('Shivansh Mehta', 'Marketing', 'Male', 32, 6, 68000.00, 2, 'Yes', 'No', NULL, NULL),
('Aarti Iyer', 'HR', 'Female', 29, 4, 56000.00, 4, 'No', 'Yes', 'Family Relocation', '2024-07-30'),
('Suresh Patil', 'Sales', 'Male', 38, 7, 69000.00, 4, 'No', 'No', NULL, NULL),
('Madhuri Singh', 'Finance', 'Female', 33, 5, 63000.00, 4, 'Yes', 'No', NULL, NULL),
('Harsh Agarwal', 'IT', 'Male', 32, 6, 64000.00, 5, 'No', 'No', NULL, NULL),
('Ravi Choudhary', 'HR', 'Male', 31, 4, 58000.00, 3, 'Yes', 'No', NULL, NULL),
('Swati Verma', 'Sales', 'Female', 28, 3, 55000.00, 2, 'No', 'Yes', 'Personal Reasons', '2024-09-30'),
('Nitin Gupta', 'Marketing', 'Male', 30, 5, 61000.00, 4, 'Yes', 'No', NULL, NULL),
('Shivani Bansal', 'IT', 'Female', 27, 4, 57000.00, 3, 'No', 'No', NULL, NULL),
('Rajesh Kumar', 'Finance', 'Male', 37, 9, 75000.00, 5, 'Yes', 'No', NULL, NULL),
('Anil Shah', 'HR', 'Male', 33, 6, 60000.00, 4, 'No', 'Yes', 'Higher Education', '2024-08-05'),
('Neeraj Sharma', 'Sales', 'Male', 29, 4, 58000.00, 3, 'No', 'No', NULL, NULL),
('Vandana Iyer', 'Marketing', 'Female', 31, 5, 62000.00, 2, 'No', 'Yes', 'Relocation', '2024-06-20'),
('Amit Soni', 'IT', 'Male', 28, 3, 54000.00, 4, 'No', 'Yes', 'Family Issues', '2024-07-10'),
('Kavya Joshi', 'HR', 'Female', 26, 2, 48000.00, 3, 'No', 'No', NULL, NULL),
('Abhishek Yadav', 'Sales', 'Male', 34, 8, 72000.00, 5, 'Yes', 'No', NULL, NULL),
('Chandni Patel', 'Finance', 'Female', 30, 4, 59000.00, 3, 'No', 'Yes', 'Personal Reasons', '2024-05-25'),
('Arvind Kumar', 'IT', 'Male', 39, 10, 81000.00, 4, 'Yes', 'No', NULL, NULL),
('Rupal Mehta', 'HR', 'Female', 32, 6, 65000.00, 5, 'Yes', 'No', NULL, NULL),
('Rajani Singh', 'Marketing', 'Female', 33, 7, 67000.00, 3, 'No', 'Yes', 'Job Mismatch', '2024-03-15'),
('Pankaj Desai', 'Sales', 'Male', 36, 9, 74000.00, 4, 'Yes', 'No', NULL, NULL),
('Simran Reddy', 'IT', 'Female', 29, 5, 62000.00, 3, 'No', 'No', NULL, NULL),
('Hitesh Gupta', 'Finance', 'Male', 30, 4, 57000.00, 4, 'Yes', 'No', NULL, NULL),
('Nidhi Agarwal', 'HR', 'Female', 34, 7, 67000.00, 5, 'Yes', 'No', NULL, NULL),
('Pooja Chauhan', 'Sales', 'Female', 29, 3, 53000.00, 3, 'No', 'Yes', 'Career Growth', '2024-04-10'),
('Vikram Yadav', 'Marketing', 'Male', 37, 9, 75000.00, 4, 'No', 'No', NULL, NULL),
('Bhumika Rani', 'Finance', 'Female', 31, 5, 59000.00, 5, 'Yes', 'No', NULL, NULL),
('Sunil Verma', 'IT', 'Male', 40, 12, 85000.00, 4, 'Yes', 'No', NULL, NULL),
('Sakshi Kapoor', 'HR', 'Female', 28, 3, 51000.00, 4, 'No', 'Yes', 'Personal Issues', '2024-02-05'),
('Ashish Nair', 'Sales', 'Male', 33, 6, 67000.00, 5, 'Yes', 'No', NULL, NULL),
('Rani Mehra', 'Marketing', 'Female', 29, 4, 56000.00, 3, 'No', 'Yes', 'Work Pressure', '2024-07-20'),
('Nikhil Sharma', 'HR', 'Male', 26, 2, 48000.00, 4, 'Yes', 'No', NULL, NULL),
('Disha Jain', 'IT', 'Female', 30, 5, 59000.00, 5, 'No', 'Yes', 'Education Pursuit', '2024-06-25');

-- Step 4: Verify the inserted data
SELECT * FROM EmployeeInformation LIMIT 10;
