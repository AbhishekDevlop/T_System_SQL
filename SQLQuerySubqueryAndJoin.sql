Select* from Emp

insert into Emp values('Rahul',25,'General Manager',234567.00,'Jalgaon');
insert into Emp values('Ajinkya',25,'Manager',434567.00,'Amravati');
insert into Emp values('Ram',25,'Project Head',899567.00,'Pune');

select count(*) from Emp 
select count(distinct city) from Emp
select count(EmpID) from Emp

select sum(EmpSalary) as SumSalary from emp
select avg(Empsalary) as AvgSalary from emp
select max(EmpSalary)as maxsalary from Emp
select min(EmpSalary) as minsalary from Emp

select city, count(EmpID) as TotalEmp from Emp group by city

select EmpDepartment, count(EmpID) as TotalEmp from Emp group by EmpDepartment

select EmpDepartment,city, count(EmpID) as TotalEmp from Emp group by EmpDepartment,city

select city,count(EmpID) as TotalCount from Emp group by city having count(EmpID)>=2; 

select city,count(EmpID) as TotalCount from Emp group by city having city in ('Amravati','Jalgaon'); 

select city,count(EmpSalary) as TotalCount from Emp group by city having max(EmpSalary)>777700;

select EmpName,count(EmpSalary) as TotalCount from Emp group by EmpName having max(EmpSalary)>777700;

select city,count(city) as TotalCount from Emp group by city having  count(city)>=2;

select EmpAge,count (EmpName) as TotalCount from Emp group by EmpAge having EmpAge>=22;

alter table Emp
add Exp int;

select * from Emp

select EmpName,Exp from Emp where Exp = (Select max(Exp) from Emp);


