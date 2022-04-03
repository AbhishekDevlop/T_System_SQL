create function Find_Even_(@num int)
returns varchar (10)
as begin
declare @result varchar(10)
IF @num%2=0 
SELECT @result='Even' ELSE  
SELECT @result='Odd'
return @result
end

select dbo.Find_Even(10) as Result 

create function Additn(@num1 int, @num2 int )
returns int
as begin 
declare @add int 
set @add= @num1+@num2
return @add
end

select dbo.Additn(10,20) as Result

create function getAllEmployee(@id int)
returns table
as
return (select * from Employee where Id=@id)

select * from dbo.getAllEmployee(3) 

create function Gross_Salary(@salary numeric (10,2))
returns numeric(10,2)
as begin
declare @grossSalary numeric(10,2)

	