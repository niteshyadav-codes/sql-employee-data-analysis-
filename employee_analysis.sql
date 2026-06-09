-- ============================================================
--        EMPLOYEE DATA ANALYTICS PROJECT
--        Tool    : MySQL Workbench
--        Database: employee_analytics
-- ============================================================


-- ============================================================
-- SECTION 0: DATABASE & TABLE SETUP
-- ============================================================

CREATE DATABASE employee_analytics;
USE employee_analytics;

CREATE TABLE employee (
    employee_id   INT          PRIMARY KEY,
    name          VARCHAR(100),
    department    VARCHAR(50)  NOT NULL,
    city          VARCHAR(50)  NOT NULL,
    salary        INT          NOT NULL,
    experience    INT          NOT NULL,
    age           INT          NOT NULL,
    joining_year  YEAR         NOT NULL
);


-- ============================================================
-- SECTION 1: DATA VERIFICATION
-- ============================================================

-- 1.1 Total Records Check (Kya 300 rows import hui hain?)
SELECT COUNT(*) AS "Total Rows" 
FROM employee;

-- 1.2 Empty Names Check (Kitne records mein name missing hai?)
SELECT * 
FROM employee 
WHERE name IS NULL;

-- 1.3 Empty Departments Check (Department blank toh nahi?)
SELECT COUNT(*) AS "Blank Department Rows" 
FROM employee 
WHERE department IS NULL;

-- 1.4 Empty Cities Check (City blank toh nahi?)
SELECT COUNT(*) AS "Blank City Rows" 
FROM employee 
WHERE city IS NULL;


-- ============================================================
-- SECTION 2: DATA QUALITY CHECK
-- ============================================================

-- 2.1 Maximum Salary wala Employee
SELECT * 
FROM employee 
WHERE salary = (SELECT MAX(salary) FROM employee);

-- 2.2 Minimum Salary wala Employee
SELECT * 
FROM employee 
WHERE salary = (SELECT MIN(salary) FROM employee);

-- 2.3 Minimum Age wala Employee
SELECT * 
FROM employee 
WHERE age = (SELECT MIN(age) FROM employee);

-- 2.4 Maximum Age wala Employee
SELECT * 
FROM employee 
WHERE age = (SELECT MAX(age) FROM employee);

-- 2.5 Minimum Experience wala Employee
SELECT * 
FROM employee 
WHERE experience = (SELECT MIN(experience) FROM employee);

-- 2.6 Maximum Experience wala Employee
SELECT * 
FROM employee 
WHERE experience = (SELECT MAX(experience) FROM employee);


-- ============================================================
-- SECTION 3: EMPLOYEE STATISTICS
-- ============================================================

-- 3.1 Total Employees
SELECT COUNT(employee_id) AS "Total Employees" 
FROM employee;

-- 3.2 Average Salary
SELECT ROUND(AVG(salary), 2) AS "Average Salary" 
FROM employee;

-- 3.3 Highest Salary
SELECT MAX(salary) AS "Highest Salary" 
FROM employee;

-- 3.4 Lowest Salary
SELECT MIN(salary) AS "Lowest Salary" 
FROM employee;


-- ============================================================
-- SECTION 4: FILTERING & ANALYSIS
-- ============================================================

-- 4.1 Delhi ke saare Employees
SELECT * 
FROM employee 
WHERE city = 'Delhi';

-- 4.2 Mumbai ke saare Employees
SELECT * 
FROM employee 
WHERE city = 'Mumbai';

-- 4.3 Salary > 50,000 wale Employees ki Count
SELECT COUNT(*) AS "Employees With Salary > 50000" 
FROM employee 
WHERE salary > 50000;

-- 4.4 Average se Zyada Salary wale Employees
SELECT * 
FROM employee 
WHERE salary > (SELECT AVG(salary) FROM employee);


-- ============================================================
--                      END OF PROJECT
-- ============================================================