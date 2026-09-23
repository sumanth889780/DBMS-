create database restaurant
create table restaurant
(
rid           int      primary key,
rname         varchar(50)       not null,
address       varchar(30)       not null,
contact       varchar(15)     unique  not null,
rating        float        not null,
type          varchar(30)    not null,
)
select*from restaurant
drop table restaurant
insert into restaurant values(101,'Spice Garden','Hyderabad','9876543210',4.5,'Indian')
insert into restaurant values(102,'Taj','Vijayawada','9876543211',4.2,'Multi-Cuisine')
insert into restaurant values(103,'Food Palace','Guntur','9876543212',4.6,'veg')
insert into restaurant values(104,'Andhra Flavors','rangampeta','9876543213',4.3,'non veg')
insert into restaurant values(105,'Urban Bites','Tirupati','9876543214',4.7,'Fast Food')
update restaurant set address='guntur' where rid=101
update restaurant set rating=4.5  where rname='taj'
update restaurant set type='veg' where rid=104
select*from restaurant where type='veg'
select contact from restaurant where address='rangampeta'
select*from restaurant where rating=4.5

create table customer
(
cid          int    primary key,
mobile       varchar(50)  unique   not null,
email        varchar(30)    not null,
address       varchar(30),
name          varchar(50)      not null
)
select*from customer
drop table customer
insert into customer values(201,'9000000001','ravi@gmail.com','Hyderabad','Ravi')
insert into customer values(202,'9000000002','priya@gmail.com','Vijayawada','Priya')
insert into customer values(203,'9000000003','arjun@gmail.com','Guntur','Arjun')
insert into customer values(204,'9000000004','sneha@gmail.com','Ongole','Sneha')
insert into customer values(205,'9000000005','rahul@gmail.com','Tirupati','Rahul')
insert into customer values(206,'9000000006','anjali@gmail.com','Nellore','Anjali')
insert into customer values(207,'9000000007','kiran@gmail.com','Chennai','Kiran')
insert into customer values(208,'9000000008','pooja@gmail.com','Hyderabad','Pooja')
insert into customer values(209,'9000000009','sai@gmail.com','Vijayawada','Sai')
insert into customer values(210,'9000000010','divya@gmail.com','Guntur','Divya')
update customer set email ='sumanth@gmail.com'   where name='priya'
update customer set address ='ongole'   where name='priya'
select email from customer where cid=210
create table food
(
fid       int     primary key,
fname     varchar(40)     not null,
type      varchar(30)     not null,
quality    varchar(50),   
price        int, 
)
select*from food
drop table food

insert into food values(301,'Chicken Biryani','Main Course','Excellent',250)
insert into food values(302,'Veg Biryani','Main Course','Good',180)
insert into food values(303,'Chicken Noodles','Chinese','Excellent',200)
insert into food values(304,'Paneer Butter Masala','Main Course','Excellent',220)
insert into food values(305,'pizza','fast food','Good',399)
insert into food values(306,'Chicken 65','Starter','Excellent',190)
insert into food values(307,'burger','Chinese','Good',160)
insert into food values(308,'Mutton Biryani','Main Course','Excellent',320)
insert into food values(309,'Gobi Manchurian','fast food','Good',599)
insert into food values(310,'Ice Cream','Dessert','Excellent',90)
update food  set quality='excellent'  where fid=305 or price = 399
update food  set type='fast food'     where fname='pizza'
Delete from food where fname='burger'
select price from food where quality='excellent'
select fname from food where type='fast food' and price >299

create table staff
(
sid     int   primary key,
sname    varchar(50)    not null,
orders    int   null,
rating    float,
sal       int,
)
select*from staff
drop table staff


insert into staff values(401,'Ramesh',120,4.5,25000)
insert into staff values(402,'Suresh',50,1.5,28000)
insert into staff values(403,'Mahesh',95,4.2,22000)
insert into staff values(404,'Anil',250,4.8,28000)
insert into staff values(405,'Karthik',110,4.4,24000)
delete from staff where sname='Suresh'and rating<2
update staff set sal='29000' where rating>4.6 and orders > 200
delete from staff where orders<50 or rating<2
create table payment
(
pid         int       primary key,
amount      int null,
type        varchar(10)     not null,
date        date            not null,
discount    int  
)
select*from payment
drop table payment

insert into payment values(501,450,'UPI','2026-08-01',20)
insert into payment values(502,620,'Card','2026-08-02',30)
insert into payment values(503,350,'Cash','2026-08-03',10)
insert into payment values(504,780,'UPI','2026-08-04',50)
insert into payment values(505,520,'Cash','2026-08-05',25)
insert into payment values(506,900,'UPI','2026-08-06',75)
insert into payment values(507,300,'Cash','2026-08-07',15)
insert into payment values(508,650,'Card','2026-08-08',40)
insert into payment values(509,480,'UPI','2026-08-09',20)
insert into payment values(510,720,'Cash','2026-08-10',35)
update payment set discount=15   where pid=501

delete from payment where pid = 505 and type = 'cash'
select type from payment where pid=505
update payment set amount='1100' where pid=509 and discount=20
