--Count(*) - considers the duplicate record & null values

select count(*) from Employee
select count(distinct city) from Employee
select count(id) from employee

-- as is used to alias to column name
select sum(salary) as SumSalary from employee
select avg(salary) as AvgSalary from employee

select max(salary)as maxsalary from Employee
select min(salary) as minsalary from Employee

-- group by
select city, count(id) as TotalEmp
from Employee
group by city

select designation, count(id) as TotalEmp
from Employee
group by Designation

select Designation,city, count(id) as TotalEmp
from Employee
group by Designation,city

--having

select city,count(id) as TotalCount from Employee
group by city
having count(id)>2; 

select city,count(id) as TotalCount from Employee
group by city
having city in ('mumbai','pune'); 


select city,count(salary) as TotalCount from Employee
group by city
having max(salary)>22000;
