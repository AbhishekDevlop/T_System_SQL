create table Customer(
Id int primary key,
Name varchar(30),
City Varchar (20))
insert into Customer values(20,'Sumit','Amravati')
insert into Customer values(21,'Dinesh','Jalgaon')
insert into Customer values(22,'Dhiraj','Nagpur')
insert into Customer values(44,'Ashish','Nagpur','India',null)

select* from Customer

alter table Customer 
add country varchar(30)

alter table Customer
add postalcode numeric(10)

alter table Customer
add product varchar(30)

alter table Customer
add price numeric(10,2)

--Write a statement that will select the City column from the Customers table
select City from Customer

--Select all the different values from the Country column in the Customers table.
select distinct(country) from Customer

--Select all records where the City column has the value "London

select * from Customer where City = 'London'

--Use the NOT keyword to select all records where City is NOT "Berlin".

Select * from Customer where Not City ='Berlin'

--Select all records where the CustomerID column has the value 23.

select * from Customer where Id=23

--Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.

select * from Customer where city='Berlin' and postalcode=121110

--Select all records where the City column has the value 'Berlin' or 'London'.

select * from Customer where City='Berlin' or City='London'

--Select all records from the Customers table, sort the result alphabetically by the column City.

Select * from Customer
Order by City

--Select all records from the Customers table, sort the result reversed alphabetically by the column City.

select * from Customer
order by city desc

--Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

select * from Customer
order by country 

--Select all records from the Customers where the PostalCode column is empty.

select * from Customer
where postalcode is null


--Select all records from the Customers where the PostalCode column is NOT empty.

select * from Customer where postalcode is not null

----Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway.

update Customer set city='Oslo' where country = 'Norway'

--Delete all the records from the Customers table where the Country value is 'Norway'.

delete from  Customer where country='Norway'

--Use the MIN function to select the record with the smallest value of the Price column.

select Min(price) as productPrice from Customer

--Use an SQL function to select the record with the highest value of the Price column.

select Max(price) as productPrice from Customer

--Use the correct function to return the number of records that have the Price value set to 20

Select count(*) from Customer where Price=(select price from Customer where Id=20)

--Use an SQL function to calculate the average price of all products.

select Avg(Price)from Customer
select AVG(ProductPrice) from Product

--Use an SQL function to calculate the sum of all the Price column values in the Products table

select Sum (ProductPrice) from Product

--Select all records where the value of the City column starts with the letter "a".

select * from Customer where City like'a%'

--Select all records where the value of the City column ends with the letter "a".

select* from Customer where City like'%a'

--Select all records where the value of the City column contains the letter "a".

select * from Customer where City like '%a%'

--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".

select * from Customer where city like 'a%b'

--Select all records where the value of the City column does NOT start with the letter "a".

select * from Customer where city not like 'a%'

--Select all records where the second letter of the City is an "a".]]

select * from Customer where city like '_a%'

--Select all records where the first letter of the City is an "a" or a "c" or an "s".

select * from Customer where city like '[acs]%'

--Select all records where the first letter of the City is an "a" or a "c" or an "s".

select* from Customer where city like '[acs]%'

--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

select * from Customer where city not like '[acf]%'

--Use the IN operator to select all the records where the Country is either "Norway" or "France".

select * from Customer where country in('Norway','France')


--Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

select * from Customer where country not in ('Norway','France')

--Use the BETWEEN operator to select all the records where the value of the Price column is between 1000 and 10000

select* from Product where ProductPrice between 1000 and 10000

--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

select * from Product where ProductPrice not between 10 and 20

--Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.

select * from Customer where product between 'Geitost' and 'Pavlova'

--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

select Id, Name, City,country,postalcode as pno, product, price from Customer

--When displaying the Customers table, refer to the table as Consumers instead of Customers.

select * from Customer as consumer

--List the number of customers in each country.

select count(distinct country) from Customer

--List the number of customers in each country, ordered by the country with the most customers first.

select count (*) as countryGrp from Customer group by country order by count (*) desc

--Write the correct SQL statement to create a new database called testDB.

create database testDB

--Write the correct SQL statement to delete a database named testDB

drop database testDB
--Add a column of type DATE called Birthday in Persons table

alter table Persons
add Birthday date

--Delete the column Birthday from the Persons table

alter table Persons 
drop column Birthday