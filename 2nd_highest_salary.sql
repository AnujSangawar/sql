--que2 wrtie a query to print 2nd hight salary

create table employee(id int,
salary int)

insert into employee
values(101,1000),
(102,2000),
(103,2000),
(104,4000),
(105,4000),
(106,5000)

select  max(salary) from employee where salary < (select max(salary) from employee)

with cte as(
select salary, DENSE_RANK() over(order by salary desc) rn from employee)
select top 1 salary from cte where rn =2
