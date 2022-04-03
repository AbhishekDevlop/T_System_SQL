create procedure sp_emp_insertSP
(
@EmpID int,
@EmpName varchar(50),
@EmpAge int,
@EmpDepartment varchar(20),
@EmpSalary decimal,
@city varchar(50),
@Exp int
)
as 
begin
insert into Emp values(@EmpID,@EmpName,@EmpAge,@EmpSalary,@city,@Exp)
return
end


exec sp_emp_insertSP
@EmpID = 6,
@EmpName='test',
@EmpDepartment='hr',
@EmpAge = 25,
@EmpSalary=23000.00,
@city = 'Nashik',
@Exp=2


create procedure sp_emp_selectSP
(
@EmpID int
)
as 
begin
select * from emp where EmpID=@EmpID
return 
end

exec sp_emp_selectSP
@EmpID=2

create table EmpTemp
(id int,
salary numeric (10,2),
designation varchar (30)

)
insert into EmpTemp values (1,78000.00,'HR')
create table Empaudit( id int identity(1,1), discription varchar(100))

create trigger tr_EmpTemp_Insert
on EmpTemp
for insert
as 
begin
declare @id int
select @id=id from inserted 
insert into Empaudit values('New id inserted ='+cast(@id as varchar(50))+
                             'added at ='+cast(getdate() as varchar(20))
							 )
end

select * from Empaudit



