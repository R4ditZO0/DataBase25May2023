
-- Q1.
use db;
use hr;
select e.employee_id,e.first_name,e.last_name,e.salary,e.department_id
from employees e join job_history j on e.employee_id= j.employee_id
order by e.salary desc;  

-- Q2
select l.location_id,l.city,dp.department_id,dp.department_name from locations l join departments dp on l.location_id=dp.location_id where l.city like( '%london%');

-- Q3

select first_name,last_name,department_id,salary from employees where salary >(select avg(salary) from employees) 
order by salary desc;

-- Q4

select first_name,last_name,department_id,salary from employees where salary >(select max(salary) from employees where department_id ='40') ;


-- Q5

select department_name,department_id from departments where(select location_id from departments where department_id =30);

-- Q6
select e.first_name,e.last_name,dp.department_name from employees e join departments dp on e.department_id=dp.department_id 
 where e.department_id =201;
 
 -- Q7
 select first_name,last_name,department_id,salary from employees where salary =(select max(salary) from employees where department_id ='40') ;
 
 -- Q8
 select department_id,sum(salary),min(salary),max(salary),avg(salary) from employees where department_id =90;
 
 -- Q9
 select job_id,salary from employees where salary >= 4000;
 
 -- Q10
 
 select avg(salary),count(*),department_id from employees group by department_id having count(*) >10;
 
 -- Q14  

select count(department_id) as 'number',department_id from employees group by department_id order by 'number';
 
 -- Q11
 
 use employees;
 select * from salaries where (salary > '100000' and salary < '500000');
 
 -- Q 12

 select * from employees where hire_date like ('%02-14%');
 
 -- Q13
 select e.first_name,e.last_name,s.salary from employees e join salaries s on e.emp_no=s.emp_no
 where salary >= 50000 and salary <= 100000;

 
 -- Q15
 use sakila;
 select * from film order by length;
 -- Q 16
 select distinct * from film order by rating desc;
 
 -- Q 17
 select amount,payment_date from payment order by amount desc limit 20;
 
 -- Q18
 select
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 










 

