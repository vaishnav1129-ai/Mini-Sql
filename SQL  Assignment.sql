-- SQL - Basic Assignment

 -- Create Database as SQL practice and use it for further questions.'
 
 create database ass;
 use ass;
 
 -- Create a table named "Students" with the following columns: StudentID (int),
-- FirstName (varchar), LastName (varchar), and Age (int). Insert at least three records
-- into the table.

create table students (  StudentID int, FirstName varchar(25), LastName varchar(40),  Age int);

-- Insert at least three records into the table.

insert into students values(1,'Sanjay','Ram',20);
insert into students values(2,'Siva','prastha',17);
insert into students values(3,'akshay','singh',18);
select * from students;
-- Update the age of the student with StudentID 1 to 21
set sql_safe_updates   =0;

update students set Age = 21 where LastName='Ram';

alter table students rename column StudentID to studentid;

-- Retrieve the first names and ages of all students who are older than 20

select * from students where age >= 20;

-- Delete records from the same table where age<18

delete from students where age <18;

-- Create a table named "Customers" with the following columns and constraints:
-- CustomerID (int) as the primary key.
-- FirstName (varchar) not null.
-- LastName (varchar) not null.
-- Email (varchar) unique.
-- Age (int) check constraint to ensure age is greater than 18
create table customes(customerid int primary key, firstname varchar(24) not null , lastname varchar(30)not null, email varchar(30) unique,
age int check (age >18));
rename table customes to customers;
desc customers;
-- You have a table named "Orders" with columns: OrderID (int), CustomerID (int),
-- OrderDate (date), and TotalAmount (decimal). Create a foreign key constraint on the
-- "CustomerID" column referencing the "Customers" table.
create table orders(orderid int, customerid int, orderdate date, totalamount decimal);
ALTER TABLE Orders ADD CONSTRAINT FK_customer FOREIGN KEY(CustomerID) REFERENCES  Customers(CustomerID);

-- Create a table named "Employees" with columns:
-- EmployeeID (int) as the primary key.
-- FirstName (varchar) not null.
-- LastName (varchar) not null.
-- Salary (decimal) check constraint to ensure salary is between 20000 and 100000
create table employees(
EmployeeID  int primary key,
FirstName varchar(25) not null,
LastName varchar(25) not null, 
Salary int check (salary between 20000 and 100000));