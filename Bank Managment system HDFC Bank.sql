create database HDFCBank;
use HDFCBank;

Create table Branch(
branchname varchar (100) primary key,
branchcity varchar (100),
money decimal (15,2)
);

insert into branch values ('main', 'Mumbai', 500000);
insert into branch values ('Central', 'Delhi', 2000000);
insert into branch values ('West', 'Bengal', 1500000);
insert into branch values ('south', 'Channai', 600000);
insert into branch values ('West end', 'Kolkata', 700000);

select * from customer;

Create table customer(
custo_id int primary key,
custo_name varchar (100),
custo_city varchar (100)
);

insert into customer values ('20', 'Dhruv singh', 'Delhi');
insert into customer values ('24', 'Shubham singh', 'Mumbai');
insert into customer values ('30', 'Rohit singh', 'Delhi');
insert into customer values ('7', 'Suresh Raina', 'Up');
insert into customer values ('45', 'Rohit Sharma', 'Mumbai');
insert into customer values ('18', 'Virat Kholi', 'Delhi');


alter table customer
Add column age int not null default 58;

alter table customer
drop column  age ;

create table account_number(
account_number int primary key,
customer_name varchar (100),
branchname varchar (100),
foreign key (branchname)
references branch(branchname)
 );
 
 select * from account_number;
 
insert into account_number values (101,"Dhruv singh",'Main');
insert into account_number values ('102', 'Shubham singh', 'Central');
insert into account_number values ('103', 'Rohit singh', 'West');
insert into account_number values ('104', 'Suresh Raina', 'south');
insert into account_number values ('105', 'Rohit Sharma', 'West end');

create table Manager_name (
id int primary key,
Manager_name varchar (50),
Customer_name varchar (50)
);
 
 select * from Manager_name;
 insert into Manager_name values (111,'Modi',"Suresh Raina");
 insert into Manager_name values (112,'Sumit',"Dhruv singh");
 insert into Manager_name values (113,'Ravi',"Shubham singh");
 insert into Manager_name values (114,'Amit',"Rohit singh");
 insert into Manager_name values (115,'Sagar',"Rohit sharma");
