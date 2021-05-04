create database college;
use college;
create table emp(
empid int,name varchar(50),dept varchar(50),doj date,
dob date,salary int);
insert into emp values(11,'ramesh','IT','2018-10-11','1997-1-20',30000);
insert into emp values(11,'raju','MBA','2018-10-12','1998-7-10',80000);
insert into emp values(11,'ravi','MCA','2018-10-15','1999-6-20',70000);
insert into emp values(11,'shreyansh','MCA','2018-10-1','1996-4-13',60000);
insert into emp values(11,'sunny','MBA','2018-10-25','1993-2-12',50000);
insert into emp values(11,'ravinder','IT','2018-10-22','1992-2-23',40000);
select * from emp;
select * from emp where dept='MCA';
select empid,name,dept from emp;
select * from emp where salary>=30000;