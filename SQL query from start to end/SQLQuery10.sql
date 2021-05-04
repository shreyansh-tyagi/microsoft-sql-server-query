use demo;
CREATE TABLE students( id int primary key, name varchar(50), dob datetime, email varchar(100));
insert into students values(13, 'ASHU_CHAUDHARY','2018-10-29','abc@gamil.com');

insert into students values(13, 'Asish_CHAUDHARY','2018-10-29','abc@gamil.com');

insert into students values(13, 'shrey_CHAUDHARY','2018-10-29','abc@gamil.com');
select * from students;