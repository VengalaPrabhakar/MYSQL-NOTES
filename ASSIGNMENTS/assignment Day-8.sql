use da8;

CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );


INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
 select*from products;
 
 -- Select Queries
 -- =================
--  Add ₹20 to the price of every product.
UPDATE PRODUCTS SET PRICE=PRICE+20;

-- . Display half of each product's quantity.
UPDATE PRODUCTS SET QTY=QTY/2;

-- . Display double the quantity of every product.
UPDATE PRODUCTS SET QTY=QTY*2;

-- . Find the remaining quantity after selling 10 units.
SELECT NAME,QTY-10 AS REMAINING_QTY FROM PRODUCTS;

--  Divide the price equally among 5 people.
SELECT NAME,PRICE/5 AS PRICE_PER_PERSON FROM PRODUCTS;

--  Display products whose price is an even number.
SELECT*FROM PRODUCTS WHERE PRICE%2=0;

-- . Display products whose quantity is divisible by 5.
SELECT*FROM PRODUCTS WHERE QTY%5=0;

-- . Calculate the price after giving a 10% discount.
SELECT NAME,PRICE-(PRICE*10/100)AS DISCOUNT_PRICE FROM PRODUCTS;

-- . Calculate the price after adding ₹15 and then 18% GST.
SELECT NAME,PRICE+15*1.18 AS FINAL_PRICE  FROM PRODUCTS;

-- . Display the remaining quantity after selling half the stock.
SELECT NAME,QTY/2 AS REMAINING_QTY FROM PRODUCTS;
SELECT*FROM PRODUCTS;
-- Update Queries
-- ===================

-- . Increase the quantity of Pen by 50.
UPDATE PRODUCTS SET QTY=QTY+50 WHERE NAME='PEN';

-- . Reduce the quantity of Pencils by 25.
UPDATE PRODUCTS SET QTY=QTY-25 WHERE NAME='PENCIL';

-- . Increase the price of Scale by 10%.
UPDATE PRODUCTS SET PRICE=PRICE*1.10 WHERE NAME='SCALE';

-- . Double the quantity of Sharpener.
UPDATE PRODUCTS SET QTY=QTY*2 WHERE NAME='SHARPENER';
-- . Reduce the price of Crayons by ₹15.
SELECT*FROM PRODUCTS;
-- Delete Queries
-- ==============
SET SQL_SAFE_UPDATES=0;
-- . Delete products whose price is less than ₹10.
DELETE FROM PRODUCTS WHERE PRICE<10;

-- . Delete the Marker record.
DELETE FROM PRODCUTS WHERE NAME='MARKER';

-- . Delete products whose quantity is greater than 300.
DELETE FROM PRODUCTS WHERE QTY=QTY>300;

-- . Delete products whose price is greater than ₹100.
DELETE FROM PRODUCTS WHERE PRICE>100;
SELECT*FROM EMPLOYEES;


-- Relational Operators
-- ======================
CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );


INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);
 SELECT*FROM STUDENTSCORES;
 
-- Select Queries
-- ---------------
-- . Display students who scored 60 or less.
SELECT*FROM STUDENTSCORES WHERE MARKS<60;

--  Display students who scored more than 70.
SELECT*FROM STUDENTSCORES WHERE MARKS>70;

-- . Display students who scored less than or equal to 75.
SELECT*FROM STUDENTSCORES WHERE MARKS<=75;

-- . Display students who scored exactly 100.
SELECT*FROM STUDENTSCORES WHERE MARKS=100;

-- . Display students who did not score 40.
SELECT*FROM STUDENSCORES WHERE MARKS!=40;

-- . Display students who scored more than or equal to 90.
SELECT*FROM STUDENTSCORES WHERE MARKS>=90;

-- . Display students who scored less than 65.
SELECT*FROM STUDENTSCORES WHERE MARKS<65;

SELECT*FROM STUDENTSCORES;
-- Update Queries
SET SQL_SAFE_UPDATES=0;
-- ================
-- . Set marks to 100 for students who scored exactly 95.
UPDATE STUDENTSCORES SET MARKS=100 WHERE MARKS=95;

-- . Increase marks by 15 for students scoring below 60.
UPDATE STUDENTSCORES SET MARKS=MARKS+15 WHERE MARKS<60;

-- . Add 5 marks for students scoring above 75.
UPDATE STUDENTSCORES SET MARKS=MARKS+5 WHERE MARKS>75;

-- . Reduce 3 marks for students scoring above 95.
UPDATE STUDENTSCORES SET MARKS=MARKS-3 WHERE MARKS>95;

-- . Set marks to 75 for students scoring below 50.
UPDATE STUDENTSCORES SET MARKS=75 WHERE MARKS<50;

-- . Increase marks by 8 for students scoring exactly 64.
UPDATE STUDENTSCORES SET MARKS=8 WHERE MARKS=64;

-- . Reduce 5 marks for students scoring 100.
UPDATE STUDENTSCORES SET MARKS=MARKS-5 WHERE MARKS=100;

SELECT*FROM STUDENTSCORES;
-- Delete Queries

-- ================

-- . Delete students who scored exactly 76.
DELETE FROM STUDENTSCORES WHERE MARKS=76;

-- . Delete students who scored exactly 100.
DELETE FROM STUDENTSCORES WHERE MARKS=100;

-- . Delete students who scored less than 65.
DELETE FROM STUDENTSCORES WHERE MARKS<65;

-- . Delete students who scored greater than or equal to 90.
DELETE FROM STUDENTSCORES WHERE MARKS>=90;

-- . Delete students who scored exactly 73.
DELETE FROM STUDENTSCORES WHERE MARKS=73;

-- . Delete students who scored exactly 48.
DELETE FROM STUDENTSCORES WHERE MARKS=48;

-- . Delete students who scored between 70 and 80 (using comparison operators).
DELETE FROM STUDENTSCORES WHERE MARKS>=70 AND MARKS>=80;

SELECT*FROM STUDENTSCORES;


-- Logical Operators

-- ===================

CREATE TABLE Employees1 (
 id INT,
 name VARCHAR(100),
 department VARCHAR(100),
 salary INT,
 isactive BOOLEAN
 );

INSERT INTO Employees1 VALUES
 (1, 'Rahul Sharma', 'IT', 50000, TRUE),
 (2, 'Priya Reddy', 'HR', 30000, TRUE),
 (3, 'Amit Kumar', 'Finance', 45000, FALSE),
 (4, 'Sneha Patel', 'IT', 35000, TRUE),
 (5, 'Vikram Singh', 'Finance', 28000, TRUE),
 (6, 'Anjali Mehta', 'HR', 32000, FALSE),
 (7, 'Kiran Rao', 'IT', 60000, TRUE),
 (8, 'Pooja Verma', 'Marketing', 27000, TRUE),
 (9, 'Ramesh Naidu', 'Sales', 38000, TRUE),
 (10, 'Deepika Joshi', 'Finance', 52000, TRUE),
 (11, 'Suresh Babu', 'Marketing', 29000, FALSE),
 (12, 'Neha Kapoor', 'HR', 41000, TRUE),
 (13, 'Arjun Reddy', 'IT', 55000, FALSE),
 (14, 'Lakshmi Devi', 'Sales', 33000, TRUE),
 (15, 'Nikhil Jain', 'IT', 47000, TRUE);
SELECT*FROM EMPLOYEES1;

-- Select Queries

-- ============

-- . Display inactive employees or employees earning less than 30000.
SELECT*FROM EMPLOYEES1 WHERE SALARY<30000;

-- . Display Marketing employees with salary greater than 25000.
SELECT*FROM EMPLOYEES1 WHERE DEPARTMENT='MARKETING' AND SALARY>30000;

-- . Display employees who are not in the Finance department.
SELECT*FROM EMPLOYEES1 WHERE DEPARTMENT!='FINANCE';

-- . Display active employees earning more than 50000.
SELECT*FROM EMPLOYEES1 WHERE SALARY>50000 AND ISACTIVE='ACTIVE';

-- . Display employees from Sales or HR departments.
SELECT*FROM EMPLOYEES1 WHERE DEPARTMENT='SALES' OR DEPARTMENT='HR'; 

-- . Display employees who are inactive and belong to the IT department.
SELECT*FROM EMPLOYEES1 WHERE ISACTIVE='INACTIVE' AND DEPARTMENT='IT';

-- . Display employees whose salary is less than 40000 and are active.
SELECT*FROM EMPLOYEES1 WHERE SALARY<40000 AND ISACTIVE='ACTIVE';

-- Update Queries

-- =============
SET SQL_SAFE_UPDATES=0;
-- . Activate all inactive Marketing employees.
UPDATE EMPLOYYES1 SET ISACTIVE='ACTIVATE' AND DEPARTMENT='MARKETING';

--  Reduce salary by 2000 for inactive employees.
UPDATE EMPLOYEES1 SET SALARY=SALARY-2000 OR ISACTIVE='INACTIVE';

-- . Increase salary by 15% for active employees earning more than 50000.
UPDATE EMPLOYEES1 SET SALARY=SALARY*1.15 OR ISACTIVE='ACTIVE'OR SALARY>50000;

-- . Make all Finance employees active.
UPDATE employees1 SET ISACTIVE='Active' AND department = 'Finance'; -- 

-- . Increase salary by 1000 for IT or Sales employees.
UPDATE EMPLOYEES1 SET SALARY=SALARY+1000 OR DEPARTMENT='IT' AND DEPARTMENT='SALES';
SELECT *FROM EMPLOYEES1;

-- Delete Queries
-- =================

-- . Delete Sales employees or inactive employees.
DELETE FROM EMPLOYEES1 WHERE DEPARTMENT='SALES';

-- . Delete active employees earning more than 55000.
DELETE FROM employees1 WHERE SALARY>55000;

-- . Delete employees who are not in the IT or HR departments.
DELETE FROM EMPLOYEES1 WHERE DEPARTMENT NOT IN('HR','IT');

-- . Delete employees whose salary is below 30000 and are inactive.
DELETE FROM EMPLOYEES1 WHERE SALARY<3000 AND isactive='0';

-- . Delete employees from the Marketing department or whose salary is greater than 50000.
DELETE FROM EMPLOYEES1 WHERE DEPARTMENT='MARKETING' OR SALARY>50000;



