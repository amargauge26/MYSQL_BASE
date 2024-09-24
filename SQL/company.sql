create database company;
USE company;
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

select * from employee;

select distinct department from employee;
select distinct department,age from employee;


-- operators arthematics
select * from employee where age+1=60;

select * from employee where age>20 and department="IT";


select * from employee where age>20 or department="IT";


select * from employee where not  department in("IT","HR");

select * from employee where department IN("IT","HR");

select * from  employee where department is not null; 

select * from employee where name like "A%";

select * from employee where name like "_A%";



select * from employee  where salary between  1200 and 1500;


-- clause
select * from employee where age>20;

select * from employee where age>20 limit 2;

select * from employee order by salary desc;

-- aggrigate


select count(name) from employee; 

select sum(salary) from employee;

select avg(salary) from employee;

select min(salary)  from employee;

select max(salary)  from employee;


select department, avg(salary) as avgsal from employee group by department;

select department, avg(salary) as avgsal from employee group by department having avgsal>1500;

select city,count(name) as no_of_emp from employee group by city;  

select city , max(salary) as maxisal from employee group by city order by maxisal DESC;

select department,count(id) as noemp from employee group by department order by noemp desc;


select department,count(salary) as noemp from employee group by department having avg(salary)>1200;

