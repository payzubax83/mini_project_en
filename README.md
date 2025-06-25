# Data analysis on sales of goods, categories, employees, their salaries, age and other characteristics in MySQL
## Project Objective
Analysis of sales of goods, categories, employees, their salaries, age and other characteristics

## Dataset used
Dataset was not used, instead 2 tables were created manually in MySQL using MySQL project 2_en.docx file.
- <a href="https://github.com/payzubax83/mini_project_en/blob/main/MySQL%20project%202_en.docx">MySQL project 2_en</a>

##  Questions (KPIs)
- Write a query that returns a list of unique product categories (GOODS_TYPE). How many unique product categories does the query return? 
- Write a query that returns the total quantity and total cost of sold mobile phones. What total quantity and total cost does the query return? 
- Write a query that returns a list of employees with a salary > 100,000. How many employees does the query return? 
- Write a query that returns the minimum and maximum age of employees, as well as the minimum and maximum salary. 
- Write a query that returns the average quantity of sold keyboards and printers. 
- Write a query that returns the employee's name and the total cost of goods sold by them. 
- Write a query that returns the employee's name, product type, quantity of goods, cost of goods, salary, and age for the employee MIKE. 
- Write a query that returns the name and age of employees who have not sold anything. How many such employees are there? 
- Write a query that returns the name and salary of employees younger than 26 years old. How many rows does the query return? 
- How many rows will the following query return the following query?
SELECT * 
FROM T_TAB1 t
	JOIN T_TAB2 t2 ON t2.name = t.seller_name
WHERE t2.name = 'RITA';

## Process
- Create a new MySQL database mini_project. 
- Create 2 tables in MySQL with data inputs using MySQL project 2_en.docx file. 
- After creating the database and table, complete the abovementioned queries one by one

## SQL script
- <a href="https://github.com/payzubax83/mini_project_en/blob/main/MySQL%20project%202_en.sql">MySQL project 2_en</a>

## Project insight
- There are 4 unique product categories
- 4 mobile phones sold in total, total cost of mobile phones is 640000
- There are 3 employees with a salary > 100000
- Minimum age of employee is 24, maximum age of employee is 29, minimum salary is 70000, maximum salary is 120000
- Average quantity of Keyboard is 1.5000, average quantity of Printer is 1.0000
- By Mike total cost of goods sold is 490000, By Joe total cost of goods sold is 240000, By Anna total cost of goods sold is 160000 and by Jane total cost of goods sold is 130000
- returned 3 rows
- 1 employee, her name is Rita, she is 29 years old
- Returned 3 rows
- Returned an empty string


