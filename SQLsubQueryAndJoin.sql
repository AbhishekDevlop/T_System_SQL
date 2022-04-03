create table paintings(
paintingid int primary key,
name varchar(10),
artistId int,
price decimal)

create table artists(
artistId int,
name varchar(20),
)

create table collectors(
collectorid int,
name varchar(20),
)

create table sales(
id int,
saledate varchar(20),
paintingid int,
artistId int,
collectorid int,
salesprice decimal)

insert into paintings values(11,'miracle',1,300)
insert into paintings values(12,'barbi',1,700)
insert into paintings values(13,'mountain',2,2800)
insert into paintings values(14,'cool paint',2,2300)
insert into paintings values(15,'Sun Shine',3,250)
insert into paintings values(16,'still',3,5000)
insert into paintings values(17,'miracle',3,50)
insert into paintings values(18,'miracle',4,1300)

insert into artists values(1,'Rahul')
insert into artists values(2,'Kishor')
insert into artists values(3,'Amol')
insert into artists values(4,'Rajesh')

insert into collectors values(101,'Pooja')
insert into collectors values(102,'Nikita')
insert into collectors values(103,'Sonali')
insert into collectors values(104,'Priyanka')

insert into sales values(1001,'2022-3-16',13,2,104,2500)
insert into sales values(1002,'2022-3-16',14,2,102,2300)
insert into sales values(1003,'2022-3-16',11,1,102,300)
insert into sales values(1004,'2022-3-16',16,3,103,4000)
insert into sales values(1005,'2022-3-16',15,3,103,200)
insert into sales values(1005,'2022-3-16',17,3,103,50)

select*from sales

select name, price from paintings where price>
(select avg(price) from paintings)  

select name from collectors where collectorid  in(Select collectorid from sales)  

