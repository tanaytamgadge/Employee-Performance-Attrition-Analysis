-- Step 1: Create the database
CREATE DATABASE EmployeeDB_2;

-- Switch to the newly created database
USE EmployeeDB_2;

-- Step 2: Create the EmployeeDetails table
CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    YearsAtCompany INT,
    MonthlyIncome DECIMAL(10, 2),
    Designation VARCHAR(50),
    Location VARCHAR(50),
    MaritalStatus VARCHAR(10),
    NumberOfChildren INT,
    Hobbies VARCHAR(100)
);

-- Step 3: Insert Employee details
INSERT INTO EmployeeDetails (Name, Department, Gender, Age, YearsAtCompany, MonthlyIncome, Designation, Location, MaritalStatus, NumberOfChildren, Hobbies)
VALUES
('Aakash Singh', 'IT', 'Male', 30, 5, 65000.00, 'Software Engineer', 'Bangalore', 'Single', 0, 'Reading, Traveling'),
('Meera Soni', 'HR', 'Female', 28, 3, 55000.00, 'HR Manager', 'Delhi', 'Married', 1, 'Gardening, Cooking'),
('Ravi Patel', 'Sales', 'Male', 33, 7, 72000.00, 'Sales Executive', 'Mumbai', 'Married', 2, 'Cycling, Sports'),
('Neha Sharma', 'Finance', 'Female', 32, 6, 68000.00, 'Financial Analyst', 'Chennai', 'Single', 0, 'Painting, Music'),
('Vikram Mehta', 'Marketing', 'Male', 27, 4, 58000.00, 'Marketing Manager', 'Pune', 'Single', 0, 'Photography, Movies'),
('Sonia Verma', 'IT', 'Female', 29, 2, 49000.00, 'System Analyst', 'Bangalore', 'Single', 0, 'Reading, Yoga'),
('Karan Kumar', 'Sales', 'Male', 40, 10, 75000.00, 'Regional Sales Manager', 'Hyderabad', 'Married', 3, 'Running, Hiking'),
('Ritu Gupta', 'HR', 'Female', 35, 8, 71000.00, 'HR Executive', 'Noida', 'Married', 2, 'Traveling, Cooking'),
('Pankaj Yadav', 'Marketing', 'Male', 31, 6, 62000.00, 'Content Strategist', 'Mumbai', 'Single', 0, 'Music, Reading'),
('Aarti Reddy', 'Finance', 'Female', 33, 5, 60000.00, 'Tax Consultant', 'Chennai', 'Married', 1, 'Traveling, Cooking'),
('Akash Patel', 'IT', 'Male', 29, 3, 53000.00, 'Network Engineer', 'Bangalore', 'Single', 0, 'Cycling, Music'),
('Divya Joshi', 'HR', 'Female', 31, 6, 62000.00, 'HR Manager', 'Delhi', 'Married', 1, 'Yoga, Hiking'),
('Rohan Nair', 'Sales', 'Male', 34, 7, 71000.00, 'Sales Manager', 'Pune', 'Married', 2, 'Photography, Movies'),
('Siddharth Desai', 'Finance', 'Male', 38, 9, 76000.00, 'Investment Banker', 'Mumbai', 'Married', 1, 'Traveling, Music'),
('Madhavi Chawla', 'Marketing', 'Female', 29, 4, 56000.00, 'Brand Manager', 'Hyderabad', 'Single', 0, 'Dancing, Music'),
('Abhishek Soni', 'IT', 'Male', 32, 5, 60000.00, 'Software Developer', 'Bangalore', 'Single', 0, 'Traveling, Coding'),
('Shruti Yadav', 'Sales', 'Female', 27, 2, 48000.00, 'Sales Associate', 'Chennai', 'Single', 0, 'Reading, Traveling'),
('Radhika Patil', 'Finance', 'Female', 36, 8, 74000.00, 'Financial Planner', 'Delhi', 'Married', 2, 'Yoga, Cooking'),
('Kunal Sharma', 'HR', 'Male', 33, 7, 70000.00, 'HR Business Partner', 'Mumbai', 'Single', 0, 'Movies, Reading'),
('Sweta Gupta', 'Marketing', 'Female', 30, 5, 59000.00, 'Marketing Executive', 'Pune', 'Married', 1, 'Traveling, Cooking'),
('Shivendra Mishra', 'IT', 'Male', 29, 3, 54000.00, 'IT Consultant', 'Noida', 'Single', 0, 'Photography, Sports'),
('Tanya Jain', 'Sales', 'Female', 32, 4, 56000.00, 'Sales Manager', 'Delhi', 'Married', 2, 'Cooking, Reading'),
('Vikash Reddy', 'HR', 'Male', 35, 7, 68000.00, 'HR Specialist', 'Chennai', 'Married', 1, 'Sports, Reading'),
('Minal Deshmukh', 'IT', 'Female', 30, 5, 65000.00, 'Data Scientist', 'Bangalore', 'Single', 0, 'Music, Dance'),
('Pradeep Kumar', 'Sales', 'Male', 40, 10, 73000.00, 'Sales Head', 'Hyderabad', 'Married', 3, 'Reading, Hiking'),
('Anjali Joshi', 'Marketing', 'Female', 28, 3, 55000.00, 'Digital Marketing Lead', 'Mumbai', 'Single', 0, 'Traveling, Music'),
('Jaydeep Bhatt', 'Finance', 'Male', 33, 6, 67000.00, 'Accountant', 'Delhi', 'Married', 2, 'Photography, Hiking'),
('Simran Mehta', 'IT', 'Female', 31, 4, 60000.00, 'Cloud Engineer', 'Bangalore', 'Single', 0, 'Traveling, Cooking'),
('Manoj Kumar', 'HR', 'Male', 34, 7, 71000.00, 'HR Generalist', 'Pune', 'Single', 0, 'Music, Coding'),
('Sarita Patel', 'Sales', 'Female', 29, 3, 58000.00, 'Sales Executive', 'Mumbai', 'Married', 1, 'Photography, Cooking'),
('Kishore Reddy', 'Marketing', 'Male', 35, 8, 71000.00, 'SEO Specialist', 'Delhi', 'Married', 1, 'Cycling, Sports'),
('Arun Verma', 'Finance', 'Male', 36, 9, 74000.00, 'Financial Consultant', 'Chennai', 'Married', 2, 'Traveling, Yoga'),
('Jyothi Rao', 'IT', 'Female', 28, 3, 52000.00, 'Software Tester', 'Bangalore', 'Single', 0, 'Dancing, Traveling'),
('Tarun Kumar', 'HR', 'Male', 33, 5, 59000.00, 'Talent Acquisition', 'Noida', 'Single', 0, 'Gaming, Reading'),
('Meenakshi Nair', 'Sales', 'Female', 30, 6, 61000.00, 'Sales Executive', 'Mumbai', 'Married', 1, 'Traveling, Cooking'),
('Anil Sharma', 'Finance', 'Male', 39, 8, 72000.00, 'Investment Advisor', 'Hyderabad', 'Married', 2, 'Reading, Hiking'),
('Nisha Singh', 'Marketing', 'Female', 32, 7, 69000.00, 'Marketing Strategist', 'Delhi', 'Single', 0, 'Photography, Sports'),
('Naveen Mehta', 'IT', 'Male', 30, 4, 59000.00, 'Java Developer', 'Bangalore', 'Single', 0, 'Traveling, Sports'),
('Pooja Yadav', 'Sales', 'Female', 28, 5, 56000.00, 'Sales Coordinator', 'Chennai', 'Single', 0, 'Cooking, Reading'),
('Nitin Reddy', 'HR', 'Male', 32, 7, 68000.00, 'HR Analyst', 'Hyderabad', 'Married', 1, 'Yoga, Running'),
('Rashmi Verma', 'Finance', 'Female', 33, 6, 64000.00, 'Financial Analyst', 'Delhi', 'Single', 0, 'Traveling, Movies'),
('Karthik Reddy', 'Sales', 'Male', 35, 8, 71000.00, 'Area Sales Manager', 'Mumbai', 'Married', 1, 'Running, Reading'),
('Neeraj Bhatt', 'IT', 'Male', 30, 5, 60000.00, 'Data Analyst', 'Bangalore', 'Single', 0, 'Cycling, Music'),
('Sushmita Nair', 'Marketing', 'Female', 29, 4, 58000.00, 'Social Media Executive', 'Pune', 'Single', 0, 'Dancing, Reading'),
('Sandeep Kumar', 'Finance', 'Male', 37, 9, 74000.00, 'Tax Specialist', 'Hyderabad', 'Married', 2, 'Running, Yoga'),
('Shubham Joshi', 'HR', 'Male', 30, 6, 65000.00, 'HR Consultant', 'Delhi', 'Single', 0, 'Reading, Traveling'),
('Vishal Patel', 'Sales', 'Male', 33, 7, 71000.00, 'Regional Sales Executive', 'Chennai', 'Married', 1, 'Music, Running');

-- Step 4: Verify the inserted data
SELECT * FROM EmployeeDetails LIMIT 10;
