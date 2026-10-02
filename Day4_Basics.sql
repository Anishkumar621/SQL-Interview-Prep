use interview_sql;
  create table department(
   department_id int primary key,
   department_name varchar(50) not null,
   department_location varchar(50) not null);
   insert into department values
   (1,'IT','Ranchi'),
   (2,'HR','Delhi'),
   (3,'Sales','Mumbai');
-- =========================
-- DAY 04: SQL JOINS
-- =========================

-- Q1. Display employee names and their department locations.
   select employee1.name ,department.department_location
   from employee1
   inner join department
   on employee1.department = department.department_name;

-- Q2. Display employee name, salary, and department location
-- for employees whose salary is greater than 50000.
select employee1.name , employee1.salary ,department.department_location
from employee1
inner join department
on employee1.department = department.department_name
where salary > 50000;


-- Q3. Display all employees along with their department names.
select employee1.name ,department.department_name
from employee1
inner join department
on employee1.department = department.department_name;


-- Q4. Display all employees from the IT department along with their location.
select employee1.name , department.department_location
from employee1
inner join department
on employee1.department = department.department_name
where employee1.department='IT';

-- Q5. Display employee name and department location,
-- sorted by salary from highest to lowest.
select employee1.name , department.department_location ,employee1.salary
from employee1
inner join department
on employee1.department = department.department_name
order by salary  desc;


-- Q6. Count how many employees are present in each department.
select department.department_name , count(employee1.id)
from employee1
inner join department
on employee1.department = department.department_name
group by department.department_name;

-- Q7. Find the average salary of employees in each department.
select department.department_name , avg(employee1.salary)
from employee1
inner join department
on employee1.department = department.department_name
group by department.department_name ;

-- Q8. Display departments having more than 1 employee.
select department.department_name , count(employee1.id)
from employee1
inner join department
on employee1.department = department.department_name
group by department.department_name
having count(employee1.id)>1;

-- Q9. Display the employee with the highest salary,
-- along with their department location.
select employee1.name , employee1.salary ,department.department_location
from employee1
inner join department
on employee1.department = department.department_name 
order by employee1.salary desc
limit 1;


-- Q10. Display employee name, salary, department, and location
-- for employees whose salary is greater than 45000,
-- sorted by salary from highest to lowest.
select employee1.name ,employee1.salary , employee1.department , department.department_location
from employee1
inner join department
on employee1.department = department.department_name
where (employee1.salary)>45000
order by (employee1.salary) desc;
