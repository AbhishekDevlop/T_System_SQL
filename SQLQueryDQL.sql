select * from Employee where salary<=24000
 select * from Employee where salary>=24000
 
 select * from Employee where Salary between 23000 and 25000

 alter table Employee 
 add city varchar(24)

  -- city name start with p ending with any chars
 select * from Employee where City like 'm%' 
 --city name start with any chars & ending with n
 select * from Employee where city like '%n'
 -- city where n will be at any palce
 select * from Employee where city like '%n%' 
 -- _ specify the any chars
 select * from Employee where city like 'n_____' 
  select * from Employee where city like '[pm]%'
   -- define range start with a end with m
    select * from Employee where city like '[a-m]%' 

	--!not
	select * from Employee where city not like '[pm]%'  

	--In operator
	select * from Employee where city in('pune','mumbai')

	select * from Employee where city not in('pune','mumbai')

	select * from Employee where id in(2,3,4)
	select * from Employee where id not in(2,3)


--Order By:
--Sort the result in asc or desc order
select * from Employee
order by name desc

select * from Employee 
order by salary

--IS NULL
--IS NOT NULL

select * from Employee where city is null
select * from Employee where city is not null



