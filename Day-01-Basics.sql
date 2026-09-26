create database if not exists interview_sql;
use interview_sql;
CREATE TABLE Employee1(
id int primary Key,
name varchar(50) not null,
department varchar(50) not null,
salary int not null);
 
 insert into Employee1 values
(1,'Rahul','IT',50000),
(2,'Aman','HR',40000),
(3,'Ravi','IT',60000),
(4,'Neha','Sales',45000),
(5,'Priya','IT',55000);

-- Q1: Display all employees
select * from employee1;

-- Q2: Display employee names and salaries
select name , salary from employee1;

-- Q3: Find employees with salary greater than 50000
select * from employee1
where salary>50000;

-- Q4: Find employees working in IT
select * from employee1
where department ='IT';

-- Q5: Find employees with salary less than or equal to 45000
select * from employee1
where salary<=45000;

-- Q6: Display employees by salary (highest to lowest)
select * from employee1
order by salary desc;

-- Q7: Display employees by salary (lowest to highest)
select * from employee1
order by salary asc;

-- Q8: Find the employee with salary equal to 55000
select * from employee1
where salary = 55000;

-- Q9: Display employees who are not in HR
select * from employee1
where department != 'HR';

-- Q10: Display the top 2 highest-paid employee
select * from employee1
order by salary desc
limit 2;




