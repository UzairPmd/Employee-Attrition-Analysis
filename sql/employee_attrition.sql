-- ============================================
-- Employee Attrition Analysis using SQL
-- ============================================

-- Create Database
CREATE DATABASE employee_attrition;
-- Use Database
USE employee_attrition;

RENAME TABLE employee_attrition
TO employee_attrition_cleaned;

SELECT * FROM 
employee_attrition_cleaned
LIMIT 5;

-- Business Question 1
-- How many employees are there in the organization?
SELECT COUNT(*) AS total_employees
FROM employee_attrition_cleaned;

-- Business Question 2
-- How many employees have left the organization?
SELECT COUNT(*) as employee_left
FROM employee_attrition_cleaned 
WHERE Attrition='Yes';

-- Business Question 3
-- What is the overall employee attrition rate?
SELECT
ROUND(
COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0/
COUNT(*),2
) AS Attrition_Rate
FROM employee_attrition_cleaned;


-- Business Question 4
-- What is the average age of employees?
SELECT
ROUND(AVG(Age),2) AS Average_Age
FROM employee_attrition_cleaned;

-- Business Question 5
-- What is the average monthly income?
SELECT
ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition_cleaned;

-- Business Question 6
-- What is the average total working experience of employees?
SELECT
ROUND(AVG(TotalWorkingYears),2) AS Average_Experience
FROM employee_attrition_cleaned;

-- ============================================
-- Department Analysis
-- ============================================
-- Business Question 7
-- How many employees are there in each department?
SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM employee_attrition_cleaned
GROUP BY Department
ORDER BY Total_Employees DESC;



-- Business Question 8
-- Which department has the highest employee attrition?
SELECT Department,
COUNT(*) AS Employee_left
FROM employee_attrition_cleaned
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY employee_left DESC;



-- Business Question 9
-- Which department has the highest attrition rate?
SELECT Department,
ROUND(
COUNT(CASE WHEN Attrition='Yes'
THEN 1 END)*100/COUNT(*),2) AS Attrition_rate
FROM employee_attrition_cleaned
GROUP BY Department
ORDER BY Attrition_rate DESC;

-- Business Question 10
-- What is the average monthly income in each department?
SELECT Department,
ROUND(AVG(MonthlyIncome),2) AS Average_monthly_salary
FROM employee_attrition_cleaned
GROUP BY Department
ORDER BY Average_monthly_salary DESC;

-- Business Question 11
-- What is the average job satisfaction in each department?
SELECT
Department,
ROUND(AVG(JobSatisfaction),2) AS Average_Job_Satisfaction
FROM employee_attrition_cleaned
GROUP BY Department
ORDER BY Average_Job_Satisfaction DESC;

-- ============================================
-- Job Role Analysis
-- ============================================
-- Business Question 13
-- How many employees work in each job role?

SELECT
    JobRole,
    COUNT(*) AS Total_Employees
FROM employee_attrition_cleaned
GROUP BY JobRole
ORDER BY Total_Employees DESC;

-- Business Question 14
-- Which job roles have the highest number of employees leaving?

SELECT
    JobRole,
    COUNT(*) AS Employees_Left
FROM employee_attrition_cleaned
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;

-- Business Question 15
-- Which job role has the highest attrition rate?

SELECT
    JobRole,
    ROUND(
        COUNT(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employee_attrition_cleaned
GROUP BY JobRole
ORDER BY Attrition_Rate DESC;

-- Business Question 16
-- What is the average monthly income for each job role?

SELECT
    JobRole,
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition_cleaned
GROUP BY JobRole
ORDER BY Average_Monthly_Income DESC;

-- Business Question 17
-- What is the average job satisfaction for each job role?

SELECT
    JobRole,
    ROUND(AVG(JobSatisfaction),2) AS Average_Job_Satisfaction
FROM employee_attrition_cleaned
GROUP BY JobRole
ORDER BY Average_Job_Satisfaction DESC;

-- Business Question 18
-- What is the average work-life balance for each job role?
SELECT
    JobRole,
    ROUND(AVG(WorkLifeBalance),2) AS Average_WorkLife_Balance
FROM employee_attrition_cleaned
GROUP BY JobRole
ORDER BY Average_WorkLife_Balance DESC;

-- ============================================
-- Salary & Compensation Analysis
-- ============================================
-- Business Question 19
-- What is the overall average monthly income?
SELECT
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition_cleaned;

-- Business Question 20
-- Which employees earn more than the company average salary?

SELECT
    JobRole,
    Department,
    MonthlyIncome
FROM employee_attrition_cleaned
WHERE MonthlyIncome >
(
    SELECT AVG(MonthlyIncome)
    FROM employee_attrition_cleaned
)
ORDER BY MonthlyIncome DESC;

-- Business Question 21
-- What is the average monthly income based on employee attrition?

SELECT
    Attrition,
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition_cleaned
GROUP BY Attrition;

-- Business Question 22
-- What is the average salary for each job level?

SELECT
    JobLevel,
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition_cleaned
GROUP BY JobLevel
ORDER BY JobLevel;

-- Business Question 23
-- Which are the Top 10 highest-paid employees?

SELECT
    JobRole,
    Department,
    MonthlyIncome
FROM employee_attrition_cleaned
ORDER BY MonthlyIncome DESC
LIMIT 10;

-- Business Question 24
-- Which departments have the highest average salary?

SELECT
    Department,
    ROUND(AVG(MonthlyIncome),2) AS Average_Monthly_Income
FROM employee_attrition_cleaned
GROUP BY Department
ORDER BY Average_Monthly_Income DESC;


-- ============================================
-- Overtime & Work Analysis
-- ============================================
-- Business Question 25
-- What is the attrition rate among employees who work overtime?

SELECT
    OverTime,
    ROUND(
        COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0/COUNT(*),
        2
    ) AS Attrition_Rate
FROM employee_attrition_cleaned
GROUP BY OverTime;

-- Business Question 26
-- What is the average work-life balance based on overtime?

SELECT
    OverTime,
    ROUND(AVG(WorkLifeBalance),2) AS Average_WorkLife_Balance
FROM employee_attrition_cleaned
GROUP BY OverTime;

-- Business Question 27
-- How many employees work overtime in each department?

SELECT
    Department,
    COUNT(*) AS Overtime_Employees
FROM employee_attrition_cleaned
WHERE OverTime='Yes'
GROUP BY Department
ORDER BY Overtime_Employees DESC;

-- Business Question 28
-- Which business travel category has the highest attrition rate?

SELECT
    BusinessTravel,
    ROUND(
        COUNT(CASE WHEN Attrition='Yes' THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employee_attrition_cleaned
GROUP BY BusinessTravel
ORDER BY Attrition_Rate DESC;

-- Business Question 29
-- What is the average years at the company based on attrition?

SELECT
    Attrition,
    ROUND(AVG(YearsAtCompany),2) AS Average_Years_At_Company
FROM employee_attrition_cleaned
GROUP BY Attrition;

-- Business Question 30
-- Which job roles have the highest average overtime?

SELECT
    JobRole,
    COUNT(*) AS Overtime_Employees
FROM employee_attrition_cleaned
WHERE OverTime='Yes'
GROUP BY JobRole
ORDER BY Overtime_Employees DESC;