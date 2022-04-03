Select TRIM(EmpName) from Emp
select * from Emp

--SUBSTRING

select SUBSTRING(EmpDepartment, 4,7) as Test from Emp where EmpId=6

-- CONCAT

select CONCAT(EmpName,' ',city) as Test from Emp where EmpID=1 

--TO FIND THE LENGTH OF GIVEN STRING

select LEN(EmpName) as lengthofName from Emp

-- TO UPPERCASE AND LOWER CASE

select UPPER(EmpName) as TestName,LOWER(city) as Testcity from Emp

--TO TRIM
 
 select TRIM(EmpDepartment) as TestTrim from Emp where EmpID=4

 -- REPLACE

 select REPLACE(city,'a','A') from Emp

-- To REVERSE

select REVERSE(EmpDepartment) as test from Emp

-- To ROUND
select ROUND(EmpSalary,2) as testSalary from Emp


Create function Addition(@a int, @b int)
returns int
as begin
Declare @c int
set @c = @a + @b
return @c
end
