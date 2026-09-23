create database bookmyshow
create table customer
(
cid     int    primary key,
cname   varchar(30)   not null,
mobile    varchar(20)   unique  null,
email      varchar(50) ,
city         varchar(30)    not null
)

select*from customer
insert into customer values(101,'Ananya Rao','98765 01001','ananya.rao@example.com','Hyderabad')
insert into customer values(102,'Sai Karthik Reddy','98765 01002','saikarthik@example.com','Vijayawada')
insert into customer values(103,'Sravya Chowdary','98765 01003','Sravya Chowdary','Guntur')
insert into customer values(104,'Venkata Ramana','98765 01004','v.ramana@example.com','Vizag')
insert into customer values(105,'Niharika Varma','98765 01005','niharika.v@example.com','Tirupati')
insert into customer values(106,'Tarun Teja','98765 01006','tarun.teja@example.com','Ongole')
insert into customer values(107,'Harsha Vardhan','98765 01007','harsha.v@example.com','Nellore')
insert into customer values(108,'Divya Sri','98765 01008','divyasri@example.com','Hyderabad')
insert into customer values(109,'Pawan Kumar','98765 01009','pawan.k@example.com','Kurnool')
insert into customer values(110,'Meghana Naidu','98765 010010','meghana.n@example.com','Guntur')
insert into customer values(111,'Prakash','98765 010011','prakash@gmail.com','Vijayawada')
insert into customer values(112,'Vamsi','98765 010012','vamsi@gmail.com','Vizag')
insert into customer values(113,'Harsha','98765 010013','harsha@gmail.com','Ongole')
insert into customer values(114,'Teja','98765 010014','teja@gmail.com','Nellore')
insert into customer values(115,'Manoj','98765 010015','manoj@gmail.com','Tirupati')

create table movies
(
mid    int      primary key,
mname   varchar(50)   not null,
language    varchar(50)  not null,
genere      varchar(50)   not null,
duration    int
)
select*from  movies
insert into movies values(201,'Pushpa 2','Telugu','Action',200)
insert into movies values(202,'Leo','Tamil','Thriller',164)
insert into movies values(203,'Kalki 2898 AD','Telugu','Sci-Fi',180)
insert into movies values(204,'RRR','Telugu','Action',187)
insert into movies values(205,'Jawan','Hindi','Action',169)

create table theaters
(
tid    int   primary key,
tname       varchar(50)   not null,
location     varchar(50)   unique  not null,
city         varchar(30)   not  null,
screens  int,     
)
select *from theaters
insert into theaters values(301 ,'Capital Cinemas (Trendset Mall)','Kala Nagar','Vijayawada',7 )
insert into theaters values(302 ,'INOX (LEPL Icon)','Patamata','Vijayawada',4)
insert into theaters values(303 ,'Cinepolis (PVP Square Mall)','MG Road','Vijayawada', 6)
insert into theaters values(304,'INOX (Varun Beach)','RK Beach Road','Visakhapatnam',6 )
insert into theaters values(305,'Jagadamba Theatre','Jagadamba Center','Visakhapatnam',1 )
insert into theaters values(306 ,'Sangam Theatre 4K','Dondaparthy','Visakhapatnam',1 )
insert into theaters values(307 ,'PGR Cinemas','Tata Nagar','Tirupati', 3)
insert into theaters values(308,'V Epic Cinemas','Sullurpeta','Tirupati Dist.',1 )
insert into theaters values(309,'Cine Square','Arundelpet','Guntur',4 )
insert into theaters values(310 ,'Surya Palace','Kakinada Main Road','Kakinada',2 )

create table Show
(
sid   int primary key,
mid  int not null,
tid int not null,
sdate   date,
time   varchar(5)
)
drop table show
select*from Show
insert into Show values(401,201,301,'2026-08-25','10:00')
insert into Show values(402,201,302,'2026-08-25','13:00')
insert into Show values(403,202,303,'2026-08-25','16:00')
insert into Show values(404,202,304,'2026-08-25','19:00')
insert into Show values(405,203,305,'2026-08-26','10:30')
insert into Show values(406,204,306,'2026-08-26','14:00')
insert into Show values(407,204,307,'2026-08-26','17:30')
insert into Show values(408,205,308,'2026-08-27','11:00')
insert into Show values(409,205,309,'2026-08-27','15:00')
insert into Show values(410,205,310,'2026-08-27','20:00')

create table bookings
(
bid  int  primary key,
cid   int  not null,
mid   int not null,
sid     int  not null,
seats  int,
bookingdate   date
)
drop table bookings
select*from bookings
insert into bookings values(501,101,201,401,2,'2026-08-24')
insert into bookings values(502,102,202,402,3,'2026-08-24')
insert into bookings values(503,103,203,403,2,'2026-08-24')
insert into bookings values(504,104,204,404,4,'2026-08-24')
insert into bookings values(505,105,205,405,1,'2026-08-24')
insert into bookings values(506,106,201,406,2,'2026-08-24')
insert into bookings values(507,107,202,407,3,'2026-08-24')
insert into bookings values(508,108,203,408,2,'2026-08-24')
insert into bookings values(509,109,204,409,4,'2026-08-24')
insert into bookings values(510,110,205,410,2,'2026-08-24')

create table payment
(
pid    int     primary key,
bid     int    not null,
amount   int,
ptype    varchar(30),
pstatus  varchar(30)
)
drop table payment
select*from payment
insert into payment values(601,501,400,'upi','Success')
insert into payment values(602,502,600,'card','Success')
insert into payment values(603,503,400,'upi','pending')
insert into payment values(604,504,800,'card','Success')
insert into payment values(605,505,200,'cash','Success')
insert into payment values(606,506,400,'upi','fail')
insert into payment values(607,507,600,'card','Success')
insert into payment values(608,508,400,'upi','Success')
insert into payment values(609,509,800,'net banking','Success')
insert into payment values(610,510,400,'upi','Success')

1.select cname from customer  where city='Tirupati'
Niharika Varma
Manoj

2.select cname,mobile from customer  where city='Hyderabad'
Ananya Rao	98765 01001
Divya Sri	98765 01008

3.select*from movies   where  language='Telugu' 
201	Pushpa 2	    Telugu	Action	200
203	Kalki 2898 AD	Telugu	Sci-Fi	180
204	RRR	            Telugu	Action	187

4.select mname,genere from movies    where genere ='Action'
Pushpa 2	Action
RRR	        Action
Jawan	    Action

5.select mname from movies   where duration >150
Pushpa 2
Leo
Kalki 2898 AD
RRR
Jawan

6.select*from theaters   where city='Tirupati'
307	PGR Cinemas	Tata Nagar	Tirupati	3

7.select tname,location from theaters  where screens>3
Capital Cinemas (Trendset Mall)	     Kala Nagar
INOX (LEPL Icon)	                 Patamata
Cinepolis (PVP Square Mall)	         MG Road
INOX (Varun Beach)	                 RK Beach Road
Cine Square	                         Arundelpet

8.select*from show   where  sdate='2026-08-25'
401	201	301	2026-08-25	10:00
402	201	302	2026-08-25	13:00
403	202	303	2026-08-25	16:00
404	202	304	2026-08-25	19:00

9.select sid,mid,time from  show   where  time>'18:00'
404	202	19:00
410	205	20:00

10.select*from bookings   where seats>3
504	104	404	4	2026-08-24
509	109	409	4	2026-08-24

11.select bid,cid,seats from bookings  where  bookingdate>'2026-08-23'
501	101	2
502	102	3
503	103	2
504	104	4
505	105	1
506	106	2
507	107	3
508	108	2
509	109	4
510	110	2

12.select*from payment  where amount>500
602	502	600	card	    Success
604	504	800	card	    Success
607	507	600	card	    Success
609	509	800	net banking	Success

13.select pid,bid,ptype from payment   where ptype='upi'
601	501	upi
603	503	upi
606	506	upi
608	508	upi
610	510	upi

14.select*from payment  where pstatus='Success'
601	501	400	upi	    Success
602	502	600	card	Success
603	503	400	upi	    Success
604	504	800	card	Success
605	505	200	cash	Success
606	506	400	upi	    Success
607	507	600	card	Success
608	508	400	upi	    Success
609	509	800	net banking	Success
610	510	400	upi	    Success

15.select cname,email from customer  where city='Tirupati' or city='Chennai'
Niharika Varma	niharika.v@example.com
Manoj	        manoj@gmail.com

16.select mname from movies  where language='Telugu' and genere='Action'
Pushpa 2
RRR

17.select mname from movies  where duration>120 and duration<180
Leo
Jawan

18.select*from customer   where city='Tirupati' and email='manoj@gmail.com' 
115	Manoj	98765 010015	manoj@gmail.com	Tirupati

19.select*from theaters  where city='Tirupati' or city='Hyderabad'
307	PGR Cinemas	Tata Nagar	Tirupati	3

20.select tname from theaters where screens>2 and city='Tirupati'
PGR Cinemas

21.select*from bookings  where seats>=2 and seats<=5
501	101	401	2	2026-08-24
502	102	402	3	2026-08-24
503	103	403	2	2026-08-24
504	104	404	4	2026-08-24
506	106	406	2	2026-08-24
507	107	407	3	2026-08-24
508	108	408	2	2026-08-24
509	109	409	4	2026-08-24
510	110	410	2	2026-08-24

22.select bid,cid from bookings where bookingdate='2026-08-24' or seats>4
501	101
502	102
503	103
504	104
505	105
506	106
507	107
508	108
509	109
510	110

23.select*from payment  where amount>500 and pstatus='Success'
602	502	600	card	Success
604	504	800	card	Success
607	507	600	card	Success
609	509	800	net banking	Success

24.select pid,amount,ptype from payment   where ptype='upi' or ptype ='card'
601	400	upi
602	600	card
603	400	upi
604	800	card
606	400	upi
607	600	card
608	400	upi
610	400	upi

25.select cname from customer  where city='Tirupati'or city='Hyderabad' and mobile= 'not null'
Niharika Varma
Manoj

26.select cid,cname from customer  where city='Tirupati'
105	Niharika Varma
115	Manoj

27.select mname,language,genere from movies   where duration>120
Pushpa 2	    Telugu	     Action
Leo      	    Tamil	     Thriller
Kalki 2898 AD	Telugu       Sci-Fi
RRR	            Telugu	     Action
Jawan	        Hindi        Action

28. select tname,city,screens from theaters  where screens>3
Capital Cinemas (Trendset Mall)   	Vijayawada	    7
INOX (LEPL Icon)	                Vijayawada	    4
Cinepolis (PVP Square Mall)	        Vijayawada	    6
INOX (Varun Beach)	                Visakhapatnam	6
Cine Square                     	Guntur	        4

29.select sid,mid,time from show  where time>'18:00'
404	202	19:00
410	205	20:00

30.select pid,amount,pstatus  from payment  where amount>500
602	600	Success
604	800	Success
607	600	Success
609	800	Success

31.select customer.cname,bookings.bid from customer join bookings on customer.cid=bookings.cid;
Ananya Rao      	501
Sai Karthik Reddy	502
Sravya Chowdary	    503
Venkata Ramana	    504
Niharika Varma	    505
Tarun Teja	        506
Harsha Vardhan	    507
Divya Sri	        508
Pawan Kumar	        509
Meghana Naidu	    510

32.select customer.cname,customer.mobile,bookings.seats from customer join bookings on customer.cid=bookings.cid;
Ananya Rao	        98765 01001	   2
Sai Karthik Reddy	98765 01002	   3
Sravya Chowdary	    98765 01003	   2
Venkata Ramana	    98765 01004	   4
Niharika Varma	    98765 01005	   1
Tarun Teja	        98765 01006	   2
Harsha Vardhan	    98765 01007	   3
Divya Sri	        98765 01008	   2
Pawan Kumar	        98765 01009	    4
Meghana Naidu	    98765 010010	2

33.select movies.mname,show.time from movies join show  on movies.mid=show.mid;
Pushpa 2	    10:00
Pushpa 2	    13:00
Leo	            16:00
Leo	            19:00
Kalki 2898 AD	10:30
RRR	            14:00
RRR	            17:30
Jawan	        11:00
Jawan	        15:00
Jawan	        20:00

34.select movies.mname,movies.language,show.sdate from movies join show on movies.mid=show.mid;
Pushpa 2	     Telugu	  2026-08-25
Pushpa 2	     Telugu	  2026-08-25
Leo           	 Tamil	  2026-08-25
Leo	             Tamil	  2026-08-25
Kalki 2898 AD	 Telugu	  2026-08-26
RRR	             Telugu	  2026-08-26
RRR	             Telugu	  2026-08-26
Jawan	         Hindi	  2026-08-27
Jawan	         Hindi	  2026-08-27
Jawan	         Hindi	  2026-08-27

35.select theaters.tname,show.time from theaters join show on theaters.tid=show.tid;
Capital Cinemas (Trendset Mall)	     10:00
INOX (LEPL Icon)	                 13:00
Cinepolis (PVP Square Mall)	         16:00
INOX (Varun Beach)	                 19:00
Jagadamba Theatre	                 10:30
Sangam Theatre 4K	                 14:00
PGR Cinemas	                         17:30
V Epic Cinemas	                     11:00
Cine Square	                         15:00
Surya Palace	                     20:00

36.select theaters.tname,theaters.city,show.sdate from theaters join show on theaters.tid=show.tid;
Capital Cinemas (Trendset Mall)	          Vijayawada	2026-08-25
INOX (LEPL Icon)	                      Vijayawada	2026-08-25
Cinepolis (PVP Square Mall)	              Vijayawada	2026-08-25
INOX (Varun Beach)	                      Visakhapatnam	2026-08-25
Jagadamba Theatre	                      Visakhapatnam	2026-08-26
Sangam Theatre 4K	                      Visakhapatnam	2026-08-26
PGR Cinemas	                              Tirupati	    2026-08-26
V Epic Cinemas	                          Tirupati Dist.2026-08-27
Cine Square	                              Guntur	    2026-08-27
Surya Palace	                          Kakinada	    2026-08-27

37.select movies.mname,theaters.tname from movies join show on movies.mid=show.mid join theaters on theaters.tid=show.tid;
Pushpa 2	     Capital Cinemas (Trendset Mall)
Pushpa 2	     INOX (LEPL Icon)
Leo	             Cinepolis (PVP Square Mall)
Leo	             INOX (Varun Beach)
Kalki 2898 AD	Jagadamba Theatre
RRR	            Sangam Theatre 4K
RRR	            PGR Cinemas
Jawan	        V Epic Cinemas
Jawan	        Cine Square
Jawan	        Surya Palace

38.select  movies.mname,theaters.tname,theaters.city from movies join show on movies.mid=show.mid join theaters on theaters.tid=show.tid  where city='Tirupati'
RRR	PGR Cinemas	Tirupati

39.select customer.cname,movies.mname,bookings.seats from customer join bookings on customer.cid=bookings.cid  join movies on movies.mid=bookings.mid  where seats>2
Sai Karthik Reddy	Leo	3
Venkata Ramana   	RRR	4
Harsha Vardhan	    Leo	3
Pawan Kumar	        RRR	4

40.select movies.mname,theaters.tname,show.time from movies join show on movies.mid=show.mid join theaters on theaters.tid=show.tid  where city ='Tirupati' and time>'18:00'

41.select customer.cname,movies.mname,bookings.bookingdate from customer join bookings on customer.cid=bookings.cid join movies on movies.mid=bookings.mid where bookingdate>'2026-08-23'
Ananya Rao	        Pushpa 2	     2026-08-24
Sai Karthik Reddy	Leo	             2026-08-24
Sravya Chowdary	    Kalki 2898 AD	 2026-08-24
Venkata Ramana	    RRR	             2026-08-24
Niharika Varma	    Jawan	         2026-08-24
Tarun Teja	        Pushpa 2	     2026-08-24
Harsha Vardhan	    Leo	             2026-08-24
Divya Sri	        Kalki 2898 AD	 2026-08-24
Pawan Kumar	        RRR	             2026-08-24
Meghana Naidu	    Jawan	         2026-08-24

42.select movies.mname,theaters.tname,theaters.city from movies join show on movies.mid=show.mid join theaters on theaters.tid=show.tid where  city='Tirupati' and language='Telugu'
RRR	PGR Cinemas	Tirupati

43.update customer set city='chittoor'  where cid=115
select*from customer

44.update movies set genere ='Action'  where mid=203
select*from movies

45.update theaters set screens=screens+1 where tid=301
select*from theaters

46.update  payment set pstatus='Success' where pid=602
select*from payment

47.update payment set ptype='upi' where pstatus='pending' and amount<500
select*from payment

48.delete from  customer  where cid=103 
select*from customer

49.delete from movies where duration <90
select*from movies

50.delete from theaters  where screens<2 and city='visakhapatnam'
select*from theaters

51.delete from bookings where seats=1 and  bookingdate<'2026-08-25'
select*from bookings

52.delete from payment  where ptype='fail' and amount<120
select*from payment

53.update movies  set duration =duration+10  where duration<120
select*from movies

54.update theaters  set screens=screens+1    where screens<3
select*from theaters

55.update theaters    set city='Tirupati'    where screens>=3
select*from theaters 

56.update movies    set language ='Telugu'   where language ='English' and genere ='drama'
select*from movies

57.update movies   set genere ='Action'      where language='telugu' and duration>120
select*from movies

58.update show  set time='18:00'     where sdate='2026-08-25' and time<'18:00'
select*from show


59.update  bookings    set seats=seats+1   where seats<3
select*from bookings


60.update bookings   set bookingdate ='2026-08-25'   where bookingdate<'2026-08-26' and seats>4
select*from bookings


61.update payment  set ptype='upi'   where ptype='cash'
select*from payment

62.update payment   set pstatus='Success'  where amount>500 and pstatus='pending'
select*from payment

63.update payment  set pstatus='fail'   where  amount<100 and pstatus='pending'
select*from payment

64.update payment   set amount=50  where amount<500 and ptype='upi'
select*from payment

65.delete from customer  where city='Tirupati' and email like '%@example.com';
select*from customer
select*from bookings


66.delete  from movies   where language='english' and duration>180

67.delete from  theaters  where city='Hyderabad' or city='Chennai'  and screens<3
select*from theaters

68.delete from show    where sdate='2026-08-25' and time<'17:00'
select*from show

69.delete bookings   where  seats>4 and bookingdate<'2026-08-25'
select*from bookings

70.delete from payment     where  amount>100 and pstatus='fail'
select*from payment

71.select count(*) from customer  where city='Tirupati' and email like '%email.com';

72.select count(*) from customer  where city='Hyderabad' or city='chennai'

73.select count(*) from movies where language='Telugu' and genere='Action'

74.select count(*) from movies where duration>'120' and duration<'180' 

75.select count(*) from theaters  where city='Tirupati' and screens>3

76.select count(*) from bookings  where seats>=3 and seats=5

77.select min(duration) from movies where language ='Telugu' and genere='Action'

78.select max(duration) from movies  where language='English' or language='Hindi'

79.select avg(duration) from movies where  duration >120 and duration <180

80.select min(screens) from theaters  where city='Tirupati'  and screens>2 

81.select max(screens) from theaters  where city='Hyderabad' or city='chennai'

82.select avg(screens) from theaters where city='Tirupati' and screens<3

83.select  min(seats) from bookings  where seats>1 and seats<5

84.select max(seats)  from bookings where bookingdate='2026-08-24' and seats>2

85.select  avg(amount) from payment  where pstatus='Success' and amount>500

86.select  sum(amount) from payment  where pstatus='Success' and amount>500

87.select sum(amount) from payment where ptype='upi' and amount>300

88.select sum(amount) from payment where pstatus='Success' and ptype='upi' and amount>500

89.select distinct(city) from theaters where screens>2 and screens<6

90.select distinct(pstatus) from payment where ptype='upi' or ptype='card'

91.select distinct(sdate) from show  where time>'18:00' and time<'22:00'

92.select cname from customer where cname like 'A%' and city='Tirupati'

93.select  cname from customer where cname like 'R%' or cname like 'S%' and city='Hyderabad'

94.select cname,email from customer  where email like '%@gmail.com'

95.select mname from movies where mname like 'S%' and  language='Telugu'

96.select avg(duration) from movies where duration>100 group by language

97.select count(*) from theaters where screens>=3 group by  city

98.select avg(screens) from theaters where screens>2 group by city

99.select sum(amount) from payment  where pstatus='Success' group by  ptype

100.select city,count(cid) from customer group by city having count(cid)>2

101.select language,count(mid) from movies group by language  having count(mid)>3 

102.select genere,avg(duration) from movies group by  genere having avg(duration)>120

103.select city,count(tid) from theaters group by city having count(tid)<2

104.select ptype,sum(amount) from payment group by ptype having sum(amount)>2000

105.select count(mid) from movies where language='Telugu' group by  genere  having count(mid)>2

106.select customer.cname, sum(bookings.seats) from customer join bookings on customer.cid=bookings.cid where bookings.seats>1 group by customer.cname having sum(bookings.seats)>5

107.select ptype,avg(amount) from payment where pstatus='Success' group by ptype having avg(amount)>500 

108.select count(mid)  from movies   group by genere order by count(mid) desc

109.select avg(duration) from movies group by language order by avg(duration) asc

110.select ptype,sum(amount) from payment where ptype='Success'and amount>300  group by ptype having sum(amount)>1000 order by sum(amount) desc

SUBQUERIES:
1.select*from movies where duration=( select max(duration) from movies)
2.select*from movies where duration=(select min(duration) from movies)
3.select*from theaters where screens=(select max(screens) from theaters)
4.select*from theaters where screens=(select min(screens) from theaters)
5.select*from bookings where seats=(select max(seats) from bookings)
6.select*from bookings where seats=(select min(seats) from bookings)
7.select*from payment where amount=(select max(amount) from payment)
8.select*from payment where amount=(select min(amount) from payment)
9.select mname from movies where duration>(select avg(duration) from movies)
10.select tname from theaters where screens>(select avg(screens) from theaters)
11.select mname from movies  where duration>(select duration from movies where mid=205)
12.select tname from theaters where screens>(select screens from theaters where tid=102)
13.select cname from customer where city=(select city from customer where cid=105)
14.select*from bookings where seats>(select seats from bookings where bid=305)
15.select*from payment where amount>(select amount from payment where pid=405)
16.select mname from movies where duration <(select avg(duration)  from movies)
17.select tname from theaters where screens<(select avg(screens) from theaters)
18.select cname from customer where cid in (select cid from bookings)
19.select mname from movies where mid not in (select mid from show where mid is null)
20.select tname from theaters where tid not in (select tid from show where tid is null)
21.select cname from customer where cid not in (select cid from bookings)
22.select mname from movies where duration >(select avg(duration) from movies) and language='Telugu'
23.select tname from theaters where screens>(select avg(screens) from theaters) and city='Tirupati'
24.select*from payment where amount>(select avg(amount) from payment) and pstatus='Success'
25.select customer.cname from customer join bookings on customer.cid=bookings.cid where seats>2
26.select mname from movies m where duration>(select avg(duration) from movies m1 where m.language=m1.language)


