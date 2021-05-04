create database dbms_college;
create table emp_salary(sname varchar(20),salary int);
use dbms_college;
insert into emp_salary values('A',10000);
insert into emp_salary values('B',5200);
insert into emp_salary values('C',4500);
insert into emp_salary values('D',12350);
insert into emp_salary values('E',5123);
insert into emp_salary values('F',10345);
insert into emp_salary values('G',3500);

select * from emp_salary;

select * , groups =
case when salary<5000 then 'LI'
when salary>=5000 and salary<10000 then 'MI'
when salary>=10000 then 'HI'
end
from emp_salary;

select * from emp_salary;

create table marks(sname varchar(50),mark int);

insert into marks values('Raj',65);
insert into marks values('Amit',32);
insert into marks values('Sanjay',45);
insert into marks values('Rohit',40);
insert into marks values('Anil',35);
insert into marks values('Shrey',75);

--drop table marks;

select * from marks;

select * , Results=
case when mark>=35 then 'Pass'
else 'Fail'
end
from marks;

select * , Results=
case when mark>=60 then 'First'
when mark<60 and mark>=45 then 'second'
when mark<45 and mark>=35 then 'third'
else 'fail'
end
from marks;


update marks
set sname=replace('Raj','Raj','Raju');
select * from marks;

delete from marks where sname='Raju';