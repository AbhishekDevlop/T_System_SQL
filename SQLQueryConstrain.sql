

create table Persons(
PersonID int not null,
Name varchar(50),
Age int,
City varchar(20)

);

select * from Persons;

alter table Persons
add state varchar(20);

alter table persons
drop column state;

drop table persons


truncate table persons

alter table Persons
alter column age int not null;

alter table Persons
add unique(PersonID)

alter table Persons
add unique(PersonID)

alter table Persons
add constraint unique_Persons unique(PersonID,MobileNO);

alter table Persons
drop constraint unique_Persons;

alter table Persons
add constraint PK_Persons primary key(PersonID);



create table Orders(
OrderID int,
OrderNo int,
PersonID int,
constraint PK_Orders primary key(OrderID),
);
alter table Orders
add constraint FK_Orders foreign key(PersonID) references Persons(PersonID);

alter table Orders
drop constraint FK_Orders;

alter table Persons
add constraint chk_Age check(Age>=18);

alter table Persons
drop constraint chk_Age;

alter table Persons
add constraint df_City default 'Pune' for City;






