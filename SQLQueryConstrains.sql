-- not null constrain

create table Person(
PersonID int not null, 
Name varchar(50) not null,
Age int,
City varchar(20)
);
-- unique constrain

alter table Persons
add unique(PersonID)

--primary key foreign key 

alter table Person
add constraint PK_Person primary key(PersonID);

create table Orders(
OrderID int,
OrderNo int,
PersonID int,
constraint PK_Orders primary key(OrderID),
constraint FK_Orders foreign key(PersonID) references Persons(PersonID)
);

--check constrain

alter table Persons
add constraint chk_Age check(Age>=18);

--default constrain

alter table Persons
add constraint df_City default 'Pune' for City;

--

