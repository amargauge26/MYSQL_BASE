create database ecom;

use ecom;


create table customer(
id int,
name varchar(50));


insert  into customer(id,name)
values(1,"rahul"),(2,"afsara"),(3,"abhi"),(4,"aditya"),(5,"raj");

select * from customer;

truncate table customer;


create table orders(
id int primary key,
ordername varchar(50));


insert into orders(id,ordername)
values(2,"fruit"),(3,"ball"),(4,"utensil");

select * from orders;

SELECT customer.id,ordername,customer.name FROM customer INNER JOIN orders ON customer.id = orders.id;

select * from customer left join orders on customer.id = orders.id;

 
select * from customer right join orders on customer.id = orders.id;



select * from customer left join orders on customer.id = orders.id union
select * from customer right join orders on customer.id = orders.id;


select * from customer cross join orders;



