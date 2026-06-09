create database dummy_db; 
show databases;
use dummy_db;

CREATE TABLE EMPLOYEES (
emp_id      INT          PRIMARY KEY,
first_name  varchar(50)  not null,
last_name   varchar(50)  not null,
age         INT          check(age>=18),
salary     decimal(10.2) not null,
city       varchar(50)   default "Mumbai"
);

describe EMPLOYEE;
-- renaming the table
ALTER TABLE EMPLOYEES rename to  STAFF;
ALTER TABLE STAFF rename to EMPLOYEE;

-- ADD COLUMN 
ALTER TABLE EMPLOYEE add column phone int;
ALTER TABLE EMPLOYEE add column email_id varchar(50);

-- change column

ALTER TABLE EMPLOYEE 
change column phone contact int not null;

-- modify column
ALTER TABLE EMPLOYEE
MODIFY email_id varchar(60) unique;

-- drop column contact
ALTER TABLE EMPLOYEE DROP COLUMN email_id;

-- shifting towards bankingdb

show databases;

use bankingdb;

describe Customers;



alter table Customers
add DateofBirth DATE;

--- modify 
alter table Customers
modify Phone varchar(25);

-- change 
alter table Customers
change column Email Emailid varchar(100); 






