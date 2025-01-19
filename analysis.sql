-- 1. Department-wise Salary and Performance Rating Distribution
SELECT 
    Department, 
    PerformanceRating, 
    COUNT(EmployeeID) AS NumberOfEmployees, 
    AVG(MonthlyIncome) AS AverageSalary,
    MIN(MonthlyIncome) AS MinSalary, 
    MAX(MonthlyIncome) AS MaxSalary,
    ROUND(AVG(MonthlyIncome) / (SELECT AVG(MonthlyIncome) FROM EmployeeDB_1 WHERE Department = e.Department), 2) AS SalaryToDepartmentAvgRatio
FROM 
    (SELECT Department, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Department, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Department, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Department, PerformanceRating
ORDER BY 
    Department, PerformanceRating;

-- 2. Salary Trends Over Time Across Departments
SELECT 
    Department, 
    YEAR(JoiningDate) AS JoiningYear,
    AVG(MonthlyIncome) AS AverageSalary,
    MIN(MonthlyIncome) AS MinSalary,
    MAX(MonthlyIncome) AS MaxSalary
FROM 
    (SELECT Department, JoiningDate, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Department, JoiningDate, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Department, JoiningDate, MonthlyIncome FROM EmployeeDB_3) AS AllEmployeeData
GROUP BY 
    Department, YEAR(JoiningDate)
ORDER BY 
    Department, JoiningYear;

-- 3. Employee Retention by Performance Rating
SELECT 
    Department, 
    PerformanceRating,
    COUNT(EmployeeID) AS NumberOfEmployees,
    ROUND((COUNT(EmployeeID) * 100.0 / (SELECT COUNT(*) FROM EmployeeDB_1 WHERE Department = e.Department)), 2) AS RetentionPercentage
FROM 
    (SELECT Department, PerformanceRating, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Department, PerformanceRating, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Department, PerformanceRating, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Department, PerformanceRating
ORDER BY 
    Department, PerformanceRating;

-- 4. Gender Pay Gap Across Departments
SELECT 
    Department, 
    Gender, 
    AVG(MonthlyIncome) AS AverageSalary,
    ROUND(AVG(MonthlyIncome) / (SELECT AVG(MonthlyIncome) FROM EmployeeDB_1 WHERE Department = e.Department), 2) AS GenderSalaryGapRatio
FROM 
    (SELECT Department, Gender, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Department, Gender, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Department, Gender, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    Department, Gender
ORDER BY 
    Department, Gender;

-- 5. Top 5 Performers with Salary Details
SELECT 
    EmployeeID, 
    Name, 
    Department, 
    PerformanceRating, 
    MonthlyIncome
FROM 
    (SELECT EmployeeID, Name, Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT EmployeeID, Name, Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT EmployeeID, Name, Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_3) AS e
WHERE 
    PerformanceRating = 5
ORDER BY 
    MonthlyIncome DESC
LIMIT 5;

-- 6. Salary Distribution by Location
SELECT 
    Location, 
    AVG(MonthlyIncome) AS AverageSalary,
    MIN(MonthlyIncome) AS MinSalary, 
    MAX(MonthlyIncome) AS MaxSalary
FROM 
    (SELECT Location, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Location, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Location, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    Location
ORDER BY 
    Location;

-- 7. Employee with the Highest Salary by Location
SELECT 
    Location, 
    EmployeeID, 
    Name, 
    MonthlyIncome
FROM 
    (SELECT Location, EmployeeID, Name, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Location, EmployeeID, Name, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Location, EmployeeID, Name, MonthlyIncome FROM EmployeeDB_3) AS e
WHERE 
    MonthlyIncome = (SELECT MAX(MonthlyIncome) FROM EmployeeDB_1 WHERE Location = e.Location)
ORDER BY 
    Location;

-- 8. Education Level Distribution by Performance Rating
SELECT 
    EducationLevel, 
    PerformanceRating, 
    COUNT(EmployeeID) AS NumberOfEmployees
FROM 
    (SELECT EducationLevel, PerformanceRating, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT EducationLevel, PerformanceRating, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT EducationLevel, PerformanceRating, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    EducationLevel, PerformanceRating
ORDER BY 
    EducationLevel, PerformanceRating;

-- 9. Correlation Between Age, Salary, and Performance Rating
SELECT 
    Department, 
    AVG(Age) AS AverageAge, 
    AVG(MonthlyIncome) AS AverageSalary, 
    AVG(PerformanceRating) AS AveragePerformanceRating
FROM 
    (SELECT Age, MonthlyIncome, PerformanceRating, Department FROM EmployeeDB_1
     UNION ALL
     SELECT Age, MonthlyIncome, PerformanceRating, Department FROM EmployeeDB_2
     UNION ALL
     SELECT Age, MonthlyIncome, PerformanceRating, Department FROM EmployeeDB_3) AS e
GROUP BY 
    Department
ORDER BY 
    Department;

-- 10. Salary Group Classification by Performance Rating
SELECT 
    Department, 
    PerformanceRating,
    COUNT(CASE WHEN MonthlyIncome > 70000 THEN 1 END) AS HighSalaryEmployees,
    COUNT(CASE WHEN MonthlyIncome BETWEEN 50000 AND 70000 THEN 1 END) AS MediumSalaryEmployees,
    COUNT(CASE WHEN MonthlyIncome < 50000 THEN 1 END) AS LowSalaryEmployees
FROM 
    (SELECT Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    Department, PerformanceRating
ORDER BY 
    Department, PerformanceRating;

-- 11. Department-wise Headcount and Salary Summary
SELECT 
    Department,
    COUNT(EmployeeID) AS Headcount,
    AVG(MonthlyIncome) AS AverageSalary,
    MIN(MonthlyIncome) AS MinSalary,
    MAX(MonthlyIncome) AS MaxSalary
FROM 
    (SELECT Department, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Department, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Department, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Department
ORDER BY 
    Department;

-- 12. Department-wise Employee Age Distribution
SELECT 
    Department, 
    COUNT(CASE WHEN Age < 25 THEN 1 END) AS Under25,
    COUNT(CASE WHEN Age BETWEEN 25 AND 35 THEN 1 END) AS Between25And35,
    COUNT(CASE WHEN Age BETWEEN 36 AND 45 THEN 1 END) AS Between36And45,
    COUNT(CASE WHEN Age > 45 THEN 1 END) AS Above45
FROM 
    (SELECT Department, Age FROM EmployeeDB_1
     UNION ALL
     SELECT Department, Age FROM EmployeeDB_2
     UNION ALL
     SELECT Department, Age FROM EmployeeDB_3) AS e
GROUP BY 
    Department
ORDER BY 
    Department;

-- 13. Employees with Highest Salary and Performance Rating
SELECT 
    EmployeeID, 
    Name, 
    Department, 
    PerformanceRating, 
    MonthlyIncome
FROM 
    (SELECT EmployeeID, Name, Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT EmployeeID, Name, Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT EmployeeID, Name, Department, PerformanceRating, MonthlyIncome FROM EmployeeDB_3) AS e
WHERE 
    PerformanceRating = 5
ORDER BY 
    MonthlyIncome DESC
LIMIT 5;

-- 14. Employee Job Satisfaction vs Salary
SELECT 
    JobSatisfaction, 
    AVG(MonthlyIncome) AS AverageSalary, 
    COUNT(EmployeeID) AS NumberOfEmployees
FROM 
    (SELECT JobSatisfaction, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT JobSatisfaction, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT JobSatisfaction, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    JobSatisfaction
ORDER BY 
    JobSatisfaction;

-- 15. Department-wise Salary Distribution and Performance Rating Trends
SELECT 
    Department, 
    PerformanceRating, 
    AVG(MonthlyIncome) AS AverageSalary, 
    COUNT(EmployeeID) AS EmployeeCount,
    ROUND(AVG(MonthlyIncome) / (SELECT AVG(MonthlyIncome) FROM EmployeeDB_1 WHERE Department = e.Department), 2) AS SalaryToDeptAvgRatio
FROM 
    (SELECT Department, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Department, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Department, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Department, PerformanceRating
ORDER BY 
    Department, PerformanceRating;
  
-- 16. Employee Salary vs Age Group
SELECT 
    CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 35 THEN '25-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE 'Above 45'
    END AS AgeGroup,
    AVG(MonthlyIncome) AS AverageSalary,
    COUNT(EmployeeID) AS NumberOfEmployees
FROM 
    (SELECT Age, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Age, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Age, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    AgeGroup
ORDER BY 
    AgeGroup;

-- 17. Top 10 Highest Paying Departments
SELECT 
    Department,
    AVG(MonthlyIncome) AS AverageSalary
FROM 
    (SELECT Department, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Department, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Department, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    Department
ORDER BY 
    AverageSalary DESC
LIMIT 10;

-- 18. Employee Promotion Rate by Performance Rating
SELECT 
    PerformanceRating,
    COUNT(CASE WHEN YearsAtCompany > 3 THEN 1 END) AS PromotedEmployees,
    ROUND(COUNT(CASE WHEN YearsAtCompany > 3 THEN 1 END) * 100.0 / COUNT(EmployeeID), 2) AS PromotionRate
FROM 
    (SELECT PerformanceRating, YearsAtCompany, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT PerformanceRating, YearsAtCompany, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT PerformanceRating, YearsAtCompany, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    PerformanceRating
ORDER BY 
    PerformanceRating DESC;

-- 19. Training and Development Impact on Salary Growth
SELECT 
    Department,
    COUNT(CASE WHEN TrainingCompleted = 'Yes' THEN 1 END) AS EmployeesWithTraining,
    AVG(CASE WHEN TrainingCompleted = 'Yes' THEN MonthlyIncome ELSE NULL END) AS AvgSalaryWithTraining,
    AVG(CASE WHEN TrainingCompleted = 'No' THEN MonthlyIncome ELSE NULL END) AS AvgSalaryWithoutTraining
FROM 
    (SELECT Department, TrainingCompleted, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Department, TrainingCompleted, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Department, TrainingCompleted, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    Department
ORDER BY 
    AvgSalaryWithTraining DESC;

-- 20. Employee Attrition Rate by Age and Department
SELECT 
    Department,
    CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 35 THEN '25-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE 'Above 45'
    END AS AgeGroup,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS EmployeesLeft,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(EmployeeID), 2) AS AttritionRate
FROM 
    (SELECT Department, Age, Attrition, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Department, Age, Attrition, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Department, Age, Attrition, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Department, AgeGroup
ORDER BY 
    Department, AgeGroup;

-- 21. Job Role-Specific Compensation Analysis
SELECT 
    JobRole,
    AVG(MonthlyIncome) AS AvgSalary,
    COUNT(EmployeeID) AS EmployeeCount,
    MIN(MonthlyIncome) AS MinSalary,
    MAX(MonthlyIncome) AS MaxSalary
FROM 
    (SELECT JobRole, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT JobRole, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT JobRole, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    JobRole
ORDER BY 
    AvgSalary DESC;

-- 22. Performance Rating Distribution by Gender
SELECT 
    Gender,
    PerformanceRating,
    COUNT(EmployeeID) AS NumberOfEmployees,
    ROUND(COUNT(EmployeeID) * 100.0 / (SELECT COUNT(*) FROM EmployeeDB_1 WHERE Gender = e.Gender), 2) AS RatingDistributionPercentage
FROM 
    (SELECT Gender, PerformanceRating, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Gender, PerformanceRating, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Gender, PerformanceRating, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Gender, PerformanceRating
ORDER BY 
    Gender, PerformanceRating;

-- 23. Attrition Rate Based on Job Level
SELECT 
    JobLevel,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS EmployeesLeft,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(EmployeeID), 2) AS AttritionRate
FROM 
    (SELECT JobLevel, Attrition, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT JobLevel, Attrition, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT JobLevel, Attrition, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    JobLevel
ORDER BY 
    JobLevel;

-- 24. Gender-Based Job Role Distribution
SELECT 
    Gender, 
    JobRole,
    COUNT(EmployeeID) AS NumberOfEmployees
FROM 
    (SELECT Gender, JobRole, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Gender, JobRole, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Gender, JobRole, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Gender, JobRole
ORDER BY 
    Gender, JobRole;

-- 25. Average Salary by Job Role and Performance Rating
SELECT 
    JobRole,
    PerformanceRating,
    AVG(MonthlyIncome) AS AverageSalary
FROM 
    (SELECT JobRole, PerformanceRating, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT JobRole, PerformanceRating, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT JobRole, PerformanceRating, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    JobRole, PerformanceRating
ORDER BY 
    JobRole, PerformanceRating DESC;

-- 26. Salary Increase Based on Number of Promotions
SELECT 
    PromotionsReceived,
    AVG(MonthlyIncome) AS AverageSalary,
    COUNT(EmployeeID) AS EmployeeCount
FROM 
    (SELECT PromotionsReceived, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT PromotionsReceived, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT PromotionsReceived, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    PromotionsReceived
ORDER BY 
    PromotionsReceived DESC;

-- 27. Employee's Job Satisfaction vs Performance Rating
SELECT 
    JobSatisfaction,
    PerformanceRating,
    COUNT(EmployeeID) AS NumberOfEmployees,
    AVG(MonthlyIncome) AS AverageSalary
FROM 
    (SELECT JobSatisfaction, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT JobSatisfaction, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT JobSatisfaction, PerformanceRating, MonthlyIncome, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    JobSatisfaction, PerformanceRating
ORDER BY 
    JobSatisfaction, PerformanceRating;

-- 28. Employee Attrition Prediction Based on YearsAtCompany
SELECT 
    Department, 
    ROUND(AVG(YearsAtCompany), 2) AS AverageTenure,
    COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) AS EmployeesLeft,
    ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(EmployeeID), 2) AS AttritionRate
FROM 
    (SELECT Department, Attrition, YearsAtCompany, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Department, Attrition, YearsAtCompany, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Department, Attrition, YearsAtCompany, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Department
ORDER BY 
    AttritionRate DESC;

-- 29. Average Salary by Age Group and Department
SELECT 
    Department,
    CASE 
        WHEN Age < 25 THEN 'Under 25'
        WHEN Age BETWEEN 25 AND 35 THEN '25-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        ELSE 'Above 45'
    END AS AgeGroup,
    AVG(MonthlyIncome) AS AverageSalary
FROM 
    (SELECT Department, Age, MonthlyIncome FROM EmployeeDB_1
     UNION ALL
     SELECT Department, Age, MonthlyIncome FROM EmployeeDB_2
     UNION ALL
     SELECT Department, Age, MonthlyIncome FROM EmployeeDB_3) AS e
GROUP BY 
    Department, AgeGroup
ORDER BY 
    Department, AgeGroup;

-- 30. Employee Promotion by Location
SELECT 
    Location, 
    COUNT(CASE WHEN PromotionsReceived > 0 THEN 1 END) AS PromotedEmployees,
    COUNT(EmployeeID) AS TotalEmployees,
    ROUND(COUNT(CASE WHEN PromotionsReceived > 0 THEN 1 END) * 100.0 / COUNT(EmployeeID), 2) AS PromotionRate
FROM 
    (SELECT Location, PromotionsReceived, EmployeeID FROM EmployeeDB_1
     UNION ALL
     SELECT Location, PromotionsReceived, EmployeeID FROM EmployeeDB_2
     UNION ALL
     SELECT Location, PromotionsReceived, EmployeeID FROM EmployeeDB_3) AS e
GROUP BY 
    Location
ORDER BY 
    PromotionRate DESC;


    
    
    
    
    
    

