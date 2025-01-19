Employee Performance & Attrition Analysis

Project Overview
This project analyzes employee performance and attrition based on factors such as employee type, education, gender, department, salary, and performance ratings. The dataset combines 204 records from three employee databases.

Dataset Features
EmployeeID: Unique identifier.
EmployeeType: Full-time, Part-time, Contract.
EducationLevel: Bachelors, Masters.
Gender: Male, Female.
Age: Age of the employee.
Department: IT, HR, Sales, Marketing, Finance.
JoiningDate: Date of joining.
MonthlyIncome: Monthly salary.
PerformanceRating: Rating (1-5).
Location: Location of the employee.

Key Insights
Employee Performance: 66% of employees have ratings of 4 or 5.
Salary: IT and Finance have the highest salaries (₹75,000 and ₹72,000, respectively).
Department Distribution: IT (23%), HR (18%), Sales (21%), Marketing (22%), Finance (16%).
Location Insights: Bangalore is the highest-paying location (₹72,000).
Gender: Balanced gender distribution (51% male, 49% female).

Recommendations
Salary Prediction: Build models to predict salary based on attributes.
Retention Analysis: Explore retention strategies for high performers.
Performance Reviews: Refine performance evaluation processes.

Setup Instructions
Install dependencies:
 pip install pandas numpy matplotlib seaborn
POSTGRESQL LATEST VERSION

Load data into Python using pandas.read_csv() or pandas.read_sql().

Conclusion
The analysis provides insights into employee performance, salary distribution, and factors affecting retention. It can guide HR in improving employee satisfaction and retention strategies.

