use college;

CREATE TABLE SALESMAN
(
SALESMAN_ID INT,
NAME VARCHAR(20),
CITY VARCHAR(20),
COMMISSION Decimal(4,2), --before decimal it can include 4 values and after decimal it can include 2 decimal 
primary key(SALESMAN_ID));  -- syntax:- decimal(totalnumber before point, total number after point)

INSERT INTO SALESMAN VALUES(5001,'JAMES HOOG','NEW YORK',0.15);
INSERT INTO SALESMAN VALUES(5002,'NAIL KNITE','PARIS',0.13);
INSERT INTO SALESMAN VALUES(5005,'PIT ALEX','LONDON',0.11);
INSERT INTO SALESMAN VALUES(5006,'MC LYON','PARIS',0.14);
INSERT INTO SALESMAN VALUES(5007,'PAUL ADAM','ROME',0.13);
INSERT INTO SALESMAN VALUES(5003,'LAUSON HEN','SAN JOSE',0.12);select * from salesman;--truncate table salesman;--drop table SALESMAN;CREATE TABLE CUSTOMER
(CUSTOMER_ID INT,
CUST_NAME VARCHAR(20),
CITY VARCHAR(20),
GRADE INT
PRIMARY KEY(CUSTOMER_ID));

INSERT INTO CUSTOMER VALUES(3002,'NICK RIMANDO','NEW YORK',100);
INSERT INTO CUSTOMER VALUES(3007,'BRAD DAVIS','NEW YORK',200);
INSERT INTO CUSTOMER VALUES(3005,'GRAHAM ZUSI','CALIFORNIA',200);
INSERT INTO CUSTOMER VALUES(3008,'JULIAN GREEN ','LONDON',300);
INSERT INTO CUSTOMER VALUES(3004,'FABIAN JOHNSON','PARIS',300);
INSERT INTO CUSTOMER VALUES(3009,'GEOFF CAMERON','BERLIN',100);
INSERT INTO CUSTOMER VALUES(3003,'JOZY ALTIDOR','MOSCOW',200);
INSERT INTO CUSTOMER VALUES(3001,'BRAD GUZAN','LONDON',100);

select * from CUSTOMER;


CREATE TABLE ORDERS(
ORD_NO INT,
PURCH_AMT Decimal(8,2),
ORD_DATE DATE,
CUSTOMER_ID INT, FOREIGN KEY(CUSTOMER_ID) 
REFERENCES CUSTOMER (CUSTOMER_ID),
SALESMAN_ID INT, FOREIGN KEY (SALESMAN_ID) 
REFERENCES SALESMAN(SALESMAN_ID));INSERT INTO ORDERS VALUES(70001,150.5,'2012-10-05',3005,5002);
INSERT INTO ORDERS VALUES(70009,270.65,'2012-09-10',3001,5005);
INSERT INTO ORDERS VALUES(70002,65.26,'2012-10-05',3002,5001);
INSERT INTO ORDERS VALUES(70004,110.5,'2012-08-17',3009,5003);
INSERT INTO ORDERS VALUES(70007,948.5,'2012-09-10',3005,5002);
INSERT INTO ORDERS VALUES(70005,2400.6,'2012-07-27',3007,5001);
INSERT INTO ORDERS VALUES(70008,5760,'2012-09-10',3002,5001);
INSERT INTO ORDERS VALUES(70010,1983.43,'2012-10-10',3009,5003);
INSERT INTO ORDERS VALUES(70003,2480.4,'2012-10-10',3004,5006);
INSERT INTO ORDERS VALUES(70012,250.45,'2012-06-27',3008,5002);
INSERT INTO ORDERS VALUES(70011,75.29,'2012-08-17',3003,5007);
INSERT INTO ORDERS VALUES(70013,3045.6,'2012-04-25',3002,5001);

select * from orders;