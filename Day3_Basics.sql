-- =========================
-- DAY 03: GROUP BY & HAVING
-- =========================

-- Q1. Display each department and the number of employees in that department.
select department , count(id)
from employee1
group by department;

-- Q2. Display each department and the total salary of that department.
select department,sum(salary)
from employee1
group by department;
-- Q3. Display each department and the average salary of that department.
select department ,avg(salary)
from employee1
group by department;
-- Q4. Display each department and its highest salary.
select department , max(salary)
from employee1
group by department;
-- Q5. Display each department and its lowest salary.
select department ,min(salary)
from employee1
group by department;
-- Q6. Find departments having more than 1 employee.
select department ,count(id)
from employee1
group by department
having count(id)>1;
-- Q7. Find departments where the total salary is greater than 100000.
select department ,sum(salary)
from employee1 
group by department
having sum(salary)>100000;
-- Q8. Find departments where the average salary is greater than 50000.
select department ,avg(salary)
from employee1
group by department
having avg(salary)>50000;
-- Q9. Display departments in descending order of total salary.
select department ,sum(salary)
from  employee1
group by department
order by sum(salary) desc;

-- Q10. Display departments having at least 2 employees, ordered by the number of employees from highest to lowest.
 select department , count(id)
 from employee1
 group by department
 having count(id) >= 2
 order by  count(id) desc;
