use college;
create table employee
(emp_id varchar(3) primary key check(emp_id like 'E%'),
ename varchar(25) not null ,
dob date not null,
doj date not null,
check (doj>dob),
salary int not null check(salary>0),
);
--truncate table employee;

insert into employee values('E01','shreyansh','1999-09-02','2015-02-09',60000);
insert into employee values('E02','reya','1996-05-11','2016-09-03',65000);
insert into employee values('E03','ansh','1995-06-23','2014-02-09',30000);
insert into employee values('E04','sunny','1993-08-12','2018-06-10',40000);
insert into employee values('E05','shrey','1998-03-06','2017-04-11',90000);
insert into employee values('E06','shreya','1994-05-10','2012-03-23',34000);
insert into employee values('E07','shanaya','1998-05-11','2019-01-21',34000);
insert into employee values('E08','shanaya','1998-05-11','2019-01-21',34341);


--to show table 
select * from employee;

--who joined on a particular date
select * from employee where doj='2015-02-09';

--to convert a date 
select emp_id,ename ,convert(varchar,getdate(),107) from employee ;
select emp_id,ename ,convert(varchar,DOJ,107) as date_of_join from employee ; 

--who joined before 2018
select * from employee where year(DOJ)<2018;

--who joined befeore 6 month 
select * from employee where month(doj)<6;

--who joined less than 20 date
select * from employee where day(doj)<20;

--who joined between january-july
select * from employee where month(doj) between 1 and 6;

--who joined in year 2019
select * from employee where year(doj)=2019;

--recent joining
select *from employee order by(DOJ) desc;

--employees with there experience
select ename,datediff(year,DOJ,'2021-06-01') as 'year_of_experience' from employee; --datediff(year,startdate,enddate)

--employees who have odd values as there salary
