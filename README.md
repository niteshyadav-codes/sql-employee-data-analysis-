# 🗄️ Employee Data Analytics — SQL Project

## 📌 Project Overview
Is project mein **300 employees ka data** MySQL Workbench
pe import karke pure SQL queries se verify aur analyze
kiya gaya hai. Koi external tool use nahi hua — sirf SQL.

---

## 🛠️ Tools Used
| Tool | Purpose |
|------|---------|
| MySQL Workbench | Query execution |
| SQL (MySQL) | Data analysis |
| GitHub | Project hosting |

---

## 🗂️ Database Structure

**Database:** `employee_analytics`  
**Table:** `employee`

| Column | Type | Constraint |
|--------|------|-----------|
| employee_id | INT | PRIMARY KEY |
| name | VARCHAR(100) | — |
| department | VARCHAR(50) | NOT NULL |
| city | VARCHAR(50) | NOT NULL |
| salary | INT | NOT NULL |
| experience | INT | NOT NULL |
| age | INT | NOT NULL |
| joining_year | YEAR | NOT NULL |

---

## ✅ Section 1: Data Verification

### 1.1 Total Records Check
- `COUNT(*)` se verify kiya ki exactly **300 rows** import hui hain
- Result 300 aaya → Import successful ✅

### 1.2 Empty Names Check
- `WHERE name IS NULL` se check kiya
- Kitne records mein name missing hai wo count kiya

### 1.3 Empty Departments Check
- `WHERE department IS NULL` se blank departments dhundhe
- Data quality ensure ki

### 1.4 Empty Cities Check
- `WHERE city IS NULL` se blank cities check ki
- Koi blank entry nahi milni chahiye

---

## 📊 Section 2: Data Quality Check

### Salary Range
- **Maximum Salary:** Subquery `(SELECT MAX(salary))` se dhundha
- **Minimum Salary:** Subquery `(SELECT MIN(salary))` se dhundha

### Age Range
- **Minimum Age:** Sabse young employee
- **Maximum Age:** Sabse senior employee

### Experience Range
- **Minimum Experience:** Naye employee
- **Maximum Experience:** Sabse experienced employee

---

## 📈 Section 3: Employee Statistics

| Query | Result |
|-------|--------|
| Total Employees | `COUNT(employee_id)` |
| Average Salary | `ROUND(AVG(salary), 2)` |
| Highest Salary | `MAX(salary)` |
| Lowest Salary | `MIN(salary)` |

---

## 🔍 Section 4: Filtering & Analysis

### City-wise Filtering
- **Delhi** employees ki poori list
- **Mumbai** employees ki poori list

### Salary Filtering
- **Salary > 50,000** wale employees ki count
- **Average se zyada** salary wale employees ki list
  - Subquery use ki: `WHERE salary > (SELECT AVG(salary))`

---

## 📁 File Structure
