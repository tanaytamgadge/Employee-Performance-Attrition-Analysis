-- Step 1: Create the database
CREATE DATABASE EmployeeDB_3;

-- Switch to the newly created database
USE EmployeeDB_3;

-- Step 2: Create the EmployeeDetails table
CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    EmployeeType VARCHAR(50),
    EducationLevel VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Department VARCHAR(50),
    JoiningDate DATE,
    MonthlyIncome DECIMAL(10, 2),
    PerformanceRating INT,
    Location VARCHAR(50)
);

-- Step 3: Insert details
INSERT INTO EmployeeDetails (Name, EmployeeType, EducationLevel, Gender, Age, Department, JoiningDate, MonthlyIncome, PerformanceRating, Location)
VALUES
('Amit Sharma', 'Full-time', 'Bachelors', 'Male', 30, 'IT', '2020-03-12', 65000.00, 4, 'Bangalore'),
('Neha Gupta', 'Part-time', 'Masters', 'Female', 28, 'HR', '2021-06-15', 50000.00, 3, 'Delhi'),
('Vikram Patel', 'Contract', 'Bachelors', 'Male', 35, 'Sales', '2019-07-20', 70000.00, 5, 'Mumbai'),
('Ritu Singh', 'Full-time', 'Masters', 'Female', 32, 'Finance', '2018-02-10', 68000.00, 4, 'Chennai'),
('Aakash Mehta', 'Full-time', 'Bachelors', 'Male', 29, 'Marketing', '2020-08-22', 62000.00, 3, 'Pune'),
('Richa Verma', 'Contract', 'Bachelors', 'Female', 34, 'IT', '2021-01-10', 54000.00, 2, 'Bangalore'),
('Karan Yadav', 'Full-time', 'Bachelors', 'Male', 31, 'HR', '2017-09-05', 59000.00, 4, 'Delhi'),
('Divya Soni', 'Part-time', 'Masters', 'Female', 30, 'Sales', '2022-01-25', 48000.00, 3, 'Hyderabad'),
('Siddharth Mehta', 'Full-time', 'Bachelors', 'Male', 33, 'Finance', '2016-04-18', 75000.00, 5, 'Chennai'),
('Pooja Nair', 'Full-time', 'Masters', 'Female', 27, 'Marketing', '2019-11-10', 55000.00, 4, 'Mumbai'),
('Akash Joshi', 'Part-time', 'Bachelors', 'Male', 29, 'HR', '2020-06-15', 48000.00, 3, 'Noida'),
('Sanya Deshmukh', 'Contract', 'Masters', 'Female', 31, 'Sales', '2021-08-20', 51000.00, 3, 'Pune'),
('Anil Kumar', 'Full-time', 'Bachelors', 'Male', 38, 'IT', '2015-12-01', 85000.00, 5, 'Bangalore'),
('Nisha Reddy', 'Full-time', 'Masters', 'Female', 32, 'Finance', '2018-03-10', 65000.00, 4, 'Delhi'),
('Jaydeep Bhatt', 'Part-time', 'Bachelors', 'Male', 30, 'Marketing', '2022-03-12', 54000.00, 3, 'Mumbai'),
('Tanvi Gupta', 'Full-time', 'Masters', 'Female', 28, 'HR', '2021-01-20', 52000.00, 4, 'Noida'),
('Ravindra Joshi', 'Contract', 'Bachelors', 'Male', 35, 'Sales', '2020-07-15', 65000.00, 5, 'Hyderabad'),
('Priya Patil', 'Full-time', 'Bachelors', 'Female', 33, 'IT', '2019-09-10', 70000.00, 4, 'Pune'),
('Ashok Sharma', 'Full-time', 'Bachelors', 'Male', 36, 'Finance', '2014-05-25', 90000.00, 5, 'Delhi'),
('Madhavi Rao', 'Part-time', 'Masters', 'Female', 30, 'HR', '2021-04-10', 56000.00, 4, 'Chennai'),
('Sandeep Verma', 'Full-time', 'Bachelors', 'Male', 29, 'Marketing', '2020-01-15', 58000.00, 3, 'Mumbai'),
('Minal Nair', 'Full-time', 'Masters', 'Female', 31, 'Sales', '2019-06-05', 64000.00, 4, 'Bangalore'),
('Siddharth Kapoor', 'Contract', 'Bachelors', 'Male', 37, 'Finance', '2018-02-05', 75000.00, 4, 'Hyderabad'),
('Shweta Soni', 'Full-time', 'Masters', 'Female', 30, 'IT', '2021-11-10', 58000.00, 3, 'Chennai'),
('Rajesh Kumar', 'Part-time', 'Bachelors', 'Male', 32, 'Sales', '2020-09-22', 59000.00, 3, 'Pune'),
('Kriti Gupta', 'Full-time', 'Masters', 'Female', 27, 'HR', '2020-02-10', 56000.00, 4, 'Mumbai'),
('Aditya Singh', 'Full-time', 'Bachelors', 'Male', 33, 'Marketing', '2017-07-15', 72000.00, 5, 'Noida'),
('Shubham Kumar', 'Part-time', 'Masters', 'Male', 34, 'Sales', '2019-12-18', 53000.00, 3, 'Bangalore'),
('Vandana Mehta', 'Full-time', 'Bachelors', 'Female', 32, 'IT', '2020-03-05', 65000.00, 4, 'Delhi'),
('Himanshu Yadav', 'Full-time', 'Bachelors', 'Male', 31, 'Finance', '2017-01-05', 70000.00, 5, 'Mumbai'),
('Nivedita Sharma', 'Contract', 'Masters', 'Female', 29, 'HR', '2021-05-25', 54000.00, 3, 'Chennai'),
('Sourabh Verma', 'Full-time', 'Bachelors', 'Male', 30, 'Sales', '2020-08-15', 59000.00, 4, 'Hyderabad'),
('Sweta Mishra', 'Part-time', 'Bachelors', 'Female', 30, 'Marketing', '2022-02-18', 56000.00, 3, 'Bangalore'),
('Dinesh Rao', 'Full-time', 'Masters', 'Male', 34, 'IT', '2018-04-01', 80000.00, 5, 'Noida'),
('Ananya Deshmukh', 'Full-time', 'Masters', 'Female', 28, 'HR', '2020-01-20', 51000.00, 3, 'Hyderabad'),
('Vikas Verma', 'Contract', 'Bachelors', 'Male', 30, 'Sales', '2021-03-10', 60000.00, 4, 'Delhi'),
('Anjali Patel', 'Full-time', 'Masters', 'Female', 31, 'Finance', '2016-07-01', 73000.00, 5, 'Mumbai'),
('Harish Kumar', 'Full-time', 'Bachelors', 'Male', 35, 'IT', '2019-11-20', 72000.00, 5, 'Pune'),
('Kanika Sharma', 'Contract', 'Masters', 'Female', 30, 'HR', '2020-10-15', 57000.00, 4, 'Chennai'),
('Manoj Patel', 'Full-time', 'Bachelors', 'Male', 33, 'Sales', '2017-09-22', 64000.00, 4, 'Noida'),
('Parul Gupta', 'Full-time', 'Masters', 'Female', 28, 'IT', '2021-02-05', 59000.00, 3, 'Bangalore'),
('Amit Joshi', 'Part-time', 'Bachelors', 'Male', 31, 'Finance', '2021-11-22', 58000.00, 3, 'Hyderabad'),
('Shruti Patil', 'Full-time', 'Masters', 'Female', 30, 'Sales', '2020-04-15', 65000.00, 5, 'Chennai'),
('Vishal Kumar', 'Contract', 'Bachelors', 'Male', 37, 'HR', '2019-07-15', 72000.00, 4, 'Delhi'),
('Komal Verma', 'Full-time', 'Masters', 'Female', 29, 'Finance', '2020-12-01', 60000.00, 4, 'Mumbai'),
('Harshit Patel', 'Full-time', 'Bachelors', 'Male', 34, 'IT', '2018-01-18', 80000.00, 5, 'Pune'),
('Ishita Soni', 'Part-time', 'Bachelors', 'Female', 32, 'Sales', '2021-04-15', 53000.00, 3, 'Hyderabad'),
('Aman Kumar', 'Full-time', 'Masters', 'Male', 33, 'Finance', '2016-06-20', 75000.00, 5, 'Delhi'),
('Radhika Yadav', 'Full-time', 'Bachelors', 'Female', 28, 'HR', '2021-05-05', 52000.00, 4, 'Chennai'),
('Tejas Patil', 'Contract', 'Masters', 'Male', 31, 'Sales', '2020-08-25', 60000.00, 4, 'Bangalore'),
('Anjali Reddy', 'Full-time', 'Bachelors', 'Female', 30, 'IT', '2021-06-12', 58000.00, 3, 'Mumbai'),
('Suman Mehta', 'Full-time', 'Masters', 'Female', 35, 'Sales', '2017-03-10', 68000.00, 4, 'Pune');

-- Step 4: Verify the inserted data
SELECT * FROM EmployeeDetails LIMIT 10;
