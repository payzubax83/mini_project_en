
/*Task #2
Create new mini_project data bases. This database will have 2 tables:
1) T_TAB1 – products with description (product type, quantity, later and seller)
2) T_TAB2 – employee names, their age and salary.
The structure and data type in each table are as follows (rows in tables must be added by query):*/

CREATE DATABASE mini_project;

USE mini_project;

CREATE TABLE T_TAB1 (
id INT UNIQUE,
goods_type VARCHAR(15),
quantity INT,
amount INT,
seller_name VARCHAR(10)
);

INSERT INTO T_TAB1 (id, goods_type, quantity, amount, seller_name)
VALUES (1, 'Mobile phone', 2, 400000, 'MIKE'),
       (2, 'Keyboard', 1, 10000, 'MIKE'),
       (3, 'Mobile phone', 1, 50000, 'JANE'),
       (4, 'Monitor', 1, 110000, 'JOE'),
       (5, 'Monitor', 2, 80000, 'JANE'),
       (6, 'Mobile phone', 1, 130000, 'JOE'),
       (7, 'Mobile phone', 1, 60000, 'ANNA'),
       (8, 'Printer', 1, 90000, 'ANNA'),
       (9, 'Keyboard', 2, 10000, 'ANNA'),
       (10, 'Printer', 1, 80000, 'MIKE');
       
SELECT * FROM t_tab1;

CREATE TABLE T_TAB2 (
id INT UNIQUE,
`name` VARCHAR(15),
salary INT,
age INT
);

INSERT INTO T_TAB2 (id, `name`, salary, age)
VALUES (1, 'ANNA', 110000, 27),
       (2, 'JANE', 80000, 25),
       (3, 'MIKE', 120000, 25),
       (4, 'JOE', 70000, 24),
       (5, 'RITA', 120000, 29);
       
SELECT * FROM t_tab2;

/*1.	Write a query that will return a list of unique product categories (GOODS_TYPE). 
How many unique product categories will the query return?*/

SELECT * 
FROM t_tab1; -- First, let's look at the table

SELECT distinct goods_type 
FROM t_tab1;  

-- Result: There are 4 unique product categories

/*2.	Write a query that will return the total number and total cost of mobile phones sold.
What total number and total cost did the query return? */

SELECT * 
FROM t_tab1; -- First, let's look at the table

SELECT COUNT(*) AS total_number_of_phones_sold  -- 4pcs total mobile phones sold
       , SUM(amount) AS total_cost_of_phones_sold  -- the total cost of mobile phones is 640,000
FROM t_tab1
WHERE goods_type = 'Mobile phone';

-- Result: 4 mobile phones sold in total, total cost of mobile phones is 640000

/*3.	Write a query that will return a list of employees with a salary > 100000.
What number of employees did the query return? */

SELECT * 
FROM t_tab2;  -- First, let's look at the table

SELECT id 
       , name 
       , salary 
FROM t_tab2
HAVING salary > 100000; 

-- Result: There are 3 employees with a salary > 100000

/*4.Write a query that will return the minimum and maximum age of employees, as well as the minimum and maximum salary.*/

SELECT * 
FROM t_tab2;  -- First, let's look at the table

SELECT MIN(age) AS min_age
       , MAX(age) AS max_age
       , MIN(salary) AS min_salary
       , MAX(salary) AS max_salary
FROM t_tab2;

-- Result: Minimum age of employee is 24, maximum age of employee is 29, minimum salary is 70000, maximum salary is 120000

#5.Write a query that will return the average number of keyboards and printers sold.

SELECT * 
FROM t_tab1;  -- First, let's look at the table

SELECT goods_type AS good
       , AVG(quantity) AS average_quantity
FROM t_tab1
WHERE goods_type IN ('Keyboard', 'Printer')
GROUP BY goods_type;

-- Result: Average quantity of Keyboard is 1.5000, average quantity of Printer is 1.0000 

#6.Write a query that will return the employee's name and the total cost of the goods sold by him.

SELECT * 
FROM t_tab1;  -- First, let's look at the table

SELECT seller_name AS 'Employee name' 
       , SUM(amount) AS 'Total cost of goods sold'  
FROM t_tab1
GROUP BY seller_name
ORDER BY SUM(amount) DESC;

/*Result: By Mike total cost of goods sold is 490000, By Joe total cost of goods sold is 240000, 
By Anna total cost of goods sold is 160000 and by Jane total cost of goods sold is 130000*/

/*7.Write a query that will return the employee name, product type, product quantity, product cost, employee salary and age of MIKE.*/

SELECT * 
FROM t_tab1;  -- First, let's look at the table

SELECT * 
FROM t_tab2;  

SELECT t1.seller_name 
       , t1.goods_type 
	   , t1.quantity 
       , t1.amount 
       , t2.salary 
       , t2.age
FROM t_tab1 t1
	JOIN t_tab2 t2 ON t1.seller_name = t2.name
WHERE t2.name = 'MIKE';    

-- Result: returned 3 rows

#8.Write a query that will return the name and age of an employee who has not sold anything. How many such employees are there?

SELECT * 
FROM t_tab1;  -- First, let's look at the table

SELECT * 
FROM t_tab2;

SELECT t2.name 
       , 2.age
FROM t_tab2 t2
	LEFT JOIN t_tab1 t1 ON t1.seller_name = t2.name
WHERE t1.seller_name IS NULL;

-- Result: 1 employee, her name is Rita, she is 29 years old

/*9.Write a query that will return the name of an employee and their salary with an age of
less than 26 years? How many rows does the query return? */

SELECT t2.name
	, t2.salary
FROM t_tab2 t2
WHERE age < 26
ORDER BY t2.salary DESC;

-- Result: returned 3 rows

#10.How many rows will the following query return:

SELECT * 
FROM T_TAB1 t
	JOIN T_TAB2 t2 ON t2.name = t.seller_name
WHERE t2.name = 'RITA';  

-- Result: returned an empty string
       
       
       
