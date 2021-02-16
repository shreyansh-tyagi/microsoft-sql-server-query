create database demo;
use demo;
create table student (
s_id int,s_name varchar(40),s_fees int 
primary key(s_id));
insert into student values(1,'jeff',2000);
insert into student values(2,'john',3000);
insert into student values(3,'johny',4000);
insert into student values(4,'ramesh',5000);
insert into student values(5,'shrey',6000);
insert into student values(6,'bubli',5000);
insert into student values(7,'guddu',4000);
insert into student values(8,'priya',3000,14);
insert into student values(9,'shreya',4900,15);
insert into student values(10,'priyanka',4470,16);
insert into student values(11,'gargi',5000,17);
insert into student values(12,'sneha',2000,18);
select * from student;
alter table student add s_age int ;
update student set s_age =16 where s_id =1; 
update student set s_age =15 where s_id =2; 
update student set s_age =14 where s_id=3; 
update student set s_age =17 where s_id =4; 
update student set s_age =18 where s_id=5; 
update student set s_age =16 where s_id =6; 
update student set s_age =15 where s_id =7; 

select s_name from student where s_age between 15 and 20;


select * from student;
alter table student add s_gender varchar(20) ;
alter table student drop s_gender;
update student set s_gender ='male' where s_id =1; 
update student set s_gender ='male' where s_id =2;
update student set s_gender ='male' where s_id =3;
update student set s_gender ='male' where s_id =4;
update student set s_gender ='male' where s_id =5;
update student set s_gender ='male' where s_id =6;
update student set s_gender ='male' where s_id =7;
update student set s_gender ='female' where s_id =8;
update student set s_gender ='female' where s_id =9;
update student set s_gender ='female' where s_id =10;
update student set s_gender ='female' where s_id =11;
update student set s_gender ='female' where s_id =12;
use demo;
select * from student;
select top(3) * from student;







