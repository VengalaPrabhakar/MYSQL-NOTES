 use da8;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    city VARCHAR(50)
);


INSERT INTO employees
(emp_id, emp_name, department, job_role, salary, joining_date, city)
VALUES
(101, 'Ravi Kumar', 'IT', 'Developer', 45000, '2023-01-15', 'Vizag'),
(102, 'Priya Sharma', 'HR', 'HR Manager', 55000, '2022-06-20', 'Hyderabad'),
(103, 'Kiran Reddy', 'IT', 'Tester', 40000, '2023-03-10', 'Vizag'),
(104, 'Sneha Rao', 'Finance', 'Accountant', 48000, '2021-11-25', 'Chennai'),
(105, 'Arun Kumar', 'IT', 'Developer', 60000, '2020-08-18', 'Bangalore'),
(106, 'Divya Reddy', 'HR', 'Recruiter', 35000, '2024-01-05', 'Vizag'),
(107, 'Suresh Babu', 'Sales', 'Executive', 42000, '2022-09-12', 'Hyderabad'),
(108, 'Anjali Devi', 'IT', 'Developer', 70000, '2019-05-30', 'Chennai'),
(109, 'Mahesh Kumar', 'Sales', 'Manager', 65000, '2020-02-14', 'Bangalore'),
(110, 'Lakshmi Rao', 'Finance', 'Analyst', 52000, '2023-07-22', 'Hyderabad');

SELECT*FROM EMPLOYEES;
SET SQL_SAFE_UPDATES=0;

Update Questions

-- 1. Update the salary of Ravi Kumar to 50000.

UPDATE EMPLOYEES SET SALARY=50000 WHERE EMP_NAME=('RAVI KUMAR');

-- 2. Increase the salary by 10% for all IT employees.

UPDATE EMPLOYEES SET SALARY=SALARY*1.10 WHERE DEPARTMENT='IT';

-- 3. Change Priya Sharma's city to Vizag.

UPDATE EMPLOYEES SET CITY='VIZAG' WHERE EMP_NAME='PRIYA SHARMA';

-- 4. Change Kiran Reddy's job role to Senior Tester.

UPDATE EMPLOYEES SET JOB_ROLE='SENIOR TESTER' WHERE EMP_NAME='KIRAN REDDY';

-- 5. Increase the salary by 5000 for all HR employees.

UPDATE EMPLOYEES SET SALARY=SALARY+5000 WHERE DEPARTMENT='HR';

-- 6. Change the city of all employees working in Vizag to Hyderabad.

UPDATE EMPLOYEES SET CITY='HYDERABAD' WHERE CITY='VIZAG';

-- 7. Change Arun Kumar's department to Development.

UPDATE EMPLOYEES SET DEPARTMENT='DEVELOPMENT' WHERE EMP_NAME='ARUN KUMAR';

-- 8. Increase the salary by 15% for employees earning less than 45000.

UPDATE EMPLOYEES SET SALARY=SALARY*1.15 WHERE SALARY=SALARY<45000;

-- 9. Change Anjali Devi's job role to Senior Developer.

UPDATE EMPLOYEES SET JOB_ROLE='SENIOR DEVELOPER' WHERE EMP_NAME='ANJALI DEVI';

-- 10. Update the city of all Finance employees to Bangalore.

UPDATE EMPLOYEES SET CITY='BANGALORE' WHERE DEPARTMENT='FINANCE';

SELECT*FROM EMPLOYEES;
Delete Questions

-- 1. Delete the employee whose ID is 106.

DELETE FROM EMPLOYEES WHERE EMP_ID=106;

-- 2. Delete all employees from the Finance department.

DELETE FROM EMPLOYEES WHERE DEPARTMENT='FINANCE';

-- 3. Delete employees earning less than 40000.

DELETE FROM EMPLOYEES WHERE SALARY=SALARY<40000;


-- 4. Delete all employees working in Vizag.

DELETE FROM EMPLOYEES WHERE CITY='VIZAG';

-- 5. Delete the employee named Suresh Babu.

DELETE FROM EMPLOYEES WHERE EMP_NAME='SURESH BABU';

-- 6. Delete employees who joined before January 1, 2020. 

SELECT * FROM employees WHERE joining_date < '2020-01-01';

-- 7. Delete all employees working as Recruiters.

DELETE FROM EMPLOYEES WHERE JOB_ROLE='RECRUITERS';

-- 8. Delete employees from the Sales department earning less than 50000.

DELETE FROM EMPLOYEES WHERE DEPARTMENT='SALES'<50000;
-- 9. Delete the employee or employees who have the lowest salary.

DELETE FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);

-- 10. Delete all employees whose city is Chennai.

DELETE FROM EMPLOYEES WHERE CITY='CHENNAI';

Select (DQL) Questions

-- 1. Display all employees from the employees table.

SELECT*FROM EMPLOYEES;

-- 2. Display employees working in the IT department.

SELECT* FROM EMPLOYEES WHERE DEPARTMENT='IT';

-- 3. Display employees earning more than 50000.

SELECT*FROM EMPLOYEES WHERE SALARY>'50000';

-- 4. Display only employee names and salaries.

SELECT EMP_NAME,SALARY FROM EMPLOYEES;

-- 5. Display employees who are from Vizag.

SELECT *FROM EMPLOYEES WHERE CITY='VIZAG';

-- 6. Display employees who joined after January 1, 2022.

SELECT *FROM EMPLOYEES WHERE JOINING_DATE> '2022-01-01';

-- 7. Display employees earning between 40000 and 60000.

SELECT *FROM EMPLOYEES WHERE SALARY BETWEEN 40000 AND 50000;

-- 8. Display employees whose names end with Kumar.

SELECT *FROM EMPLOYEES WHERE  EMP_NAME LIKE '%KUMAR';

-- 9. Display all employees in descending order of salary.

SELECT *FROM employees ORDER BY salary DESC;

-- 10. Display the highest-paid employee.

SELECT *FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);