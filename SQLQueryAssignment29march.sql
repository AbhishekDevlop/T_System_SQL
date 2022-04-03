--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee tale

--Write a query to get unique department ID from employee table

select Distinct DeptId from Emp

--Write a query to get all employee details from employee table display in descending order

Select* from Emp 
order by EmpName desc

--Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column

select * ,EmpSalary*0.12PF from Emp

--Write a query to get total salaries payable to all employees from employee table

Select SUM(EmpSalary) as TotalPayableSalary from Emp

--Write a query to get max and min salary of employee

Select MIN(EmpSalary) as MinimumSalary from Emp

select MAX(EmpSalary) as MaximumSalary from Emp

--Write a query to get number of employees are working in company

select count(*) as Total_No_Of_Employee from Emp
select count(EmpID) as Total_No_Of_Employee from Emp

--Write a query to get the number of unique designation in the company

select Count (distinct( Designation)) as Total_No_Of_Unique_Designation from Emp

--Write a query to display emp_name as ‘Name’ in upper case

Select Upper(EmpName) as EmpName from Emp

--Write a query to get first 10 records from the employee table

Select Top 5 * from Emp


select* from Emp

alter table Emp
add Designation varchar(20)



