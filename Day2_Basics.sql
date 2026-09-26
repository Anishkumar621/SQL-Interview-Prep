use interview_sql;
-- =========================
-- DAY 02: AGGREGATE FUNCTIONS
-- =========================

-- Q1: Find the total number of employees
select count(id) 
from employee1;


-- Q2: Find the highest salary
select max(salary)
from employee1;


-- Q3: Find the lowest salary
select min(salary)
from employee1;


-- Q4: Find the average salary
select avg(salary)
from employee1;


-- Q5: Find the total salary of all employees
select sum(salary)
from employee1;


-- Q6: Find the difference between the highest and lowest salary
select max(salary) - min(salary)
from employee1;


-- Q7: Find the average salary of employees whose salary is greater than 45000
select avg(salary) 
from employee1
where salary>45000;



-- Q8: Find the highest salary among employees in the IT department
select max(salary)
from employee1
where department = 'IT';


-- Q9: Find the total salary of employees in the IT department
select sum(salary)
from employee1
where department = 'IT';


-- Q10: Find the number of employees whose salary is greater than 50000
-- Write your query here
select count(id) 
from employee1 
where salary>50000;
