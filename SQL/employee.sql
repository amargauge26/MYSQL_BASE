-- Step 1: Create the database and use it
CREATE DATABASE IF NOT EXISTS xyz;
USE xyz;

-- Step 2: Create the employee table
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

-- Step 3: Insert data into the employee table
INSERT INTO employee (id, name, age, department, city, salary)
VALUES
(1, 'rahul', 25, 'IT', 'Mumbai', 1500),
(2, 'afsara', 26, 'HR', 'Pune', 2000),
(3, 'abhimanyu', 27, 'IT', 'Mumbai', 2500),
(4, 'aditya', 25, 'Marketing', 'Surat', 2400),
(5, 'raj', 24, 'Finance', 'Indore', 1500);


-- Step 4: Check if data is inserted correctly
update employee
set salary =5000
where department ='HR' ;

SELECT *  FROM employee;



update employee
set name = "rahul"
where name = "raaj";

SET @@SQL_SAFE_UPDATES = 0;



delete from employee
where department ="hr";


-- alter command

alter table employee 
add dob varchar(20) default "nap"; 

alter table employee
drop column dob;

select * from employee;

alter table employee
modify age varchar(3);


alter table employee
change age empage varchar(3);

alter table employee
rename column empage to age;


rename table employee to employees;

alter table employees 
rename column name to emp_name;


create table saldet(
salary int,
increment int);



insert into saldet(salary,increment)
values(1200,6),(1500,4);
select * from saldet;



truncate table saldet;

 








