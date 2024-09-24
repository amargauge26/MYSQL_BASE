use college;

-- unique cont


create table  student(phonenbr int unique);


INSERT into student(phonenbr)
values(123),(121);


-- not null con

create table s1(
age int,
rollno int not null
);


insert into s1(age,rollno)
values(27,2121);


-- check con
create table s2(
age int check(age>18));


insert into s2(age)
values(23),(21);



-- defult val con
 create table st(
 schoolname varchar(50) default "xyz",
 age int);
 
 insert into st(age)
 values(32);
 
 
 select * from st;
 
 -- primary key con
 
 create table s3(
 age int ,
 rollno int primary key);
 
 
 insert into s3(age,rollno)
 values(12,1),(13,2);
 
st -- foregin key con 
 
 create table c(
 cname varchar(50),
rollno int ,
foreign key (rollno) references s3(rollno));



