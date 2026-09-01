# create data base employee
create database employee
use employee
create table departments(
department_id int,
department_name varchar(100)
);
create table location (
location_id int,
location varchar(30)
);
create table employees(
employee_id int,
employee_name varchar(50),
gender ENUM("M","F"),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,4)
);
Alter table employees
add email varchar(100);
alter table employees
modify designation varchar(200);
Alter table employees
drop column age;
Alter table employees
Rename column hire_date to date_of_joining;
Rename table departments to department_info;
Rename table location to locations;
Truncate table employees;
Drop table employees;
Drop database employee;
Drop database if exists employee;
create database employee;
use employee
create table departments(
department_id int primary key,
department_name varchar(100) not null unique
);
create table location(
location_id int primary key auto_increment,
location varchar(30) not null unique
);

create table employees(
employee_id int primary key,
employee_name varchar(50) not null,
gender ENUM("M","F"),
age int check(age>=8),
hire_date DATE DEFAULT (CURRENT_DATE),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,4),
 foreign key (department_id)
 references departments(department_id),

  foreign key (location_id)
    references location(location_id)
  );
  use employee;
  select * from employee
  select * from departments
  select * from location
  select * from employees











