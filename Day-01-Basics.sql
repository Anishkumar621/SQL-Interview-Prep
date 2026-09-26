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
 
 SELECT * FROM Employee1;



