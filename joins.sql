create database pk1;
use pk1;
CREATE TABLE departments (
dept_id INT PRIMARY KEY ,
dept_name VARCHAR(50),
location VARCHAR(50)
);
INSERT INTO departments VALUES
(10,'HR','Jaipur'),
(20,'IT','Bangalore'),
(30,'Finance','Mumbai'),
(40,'Marketing','Delhi'),
(50,'Legal','Pune');
CREATE TABLE employees (
emp_id INT PRIMARY KEY ,
emp_name VARCHAR(50),
dept_id INT,
salary INT,
city VARCHAR(50)
);
INSERT INTO employees VALUES
(101,'Amit',10,45000,'Jaipur'),
(102,'Bhavna',20,72000,'Bangalore'),
(103,'Chirag',20,68000,'Bangalore'),
(104,'Divya',30,55000,'Mumbai'),
(105,'Esha',NULL,39000,'Delhi'),
(106,'Farhan',40,61000,'Delhi'),
(107,'Gaurav',60,50000,'Kolkata'),
(108,'Hina',30,83000,'Mumbai');
CREATE TABLE projects (
proj_id INT PRIMARY KEY ,
proj_name VARCHAR(50),
dept_id INT,
budget INT
);
INSERT INTO projects VALUES
(1,'Payroll Revamp',10,120000),
(2,'Cloud Migration',20,500000),
(3,'Mobile App',20,300000),
(4,'Audit Automation',30,250000),
(5,'Brand Refresh',40,180000),
(6,'Data Lake',70,400000);


select*from departments;
select*from employees;
select * from projects;

-- 1
select e.emp_id,e.emp_name,d.dept_name,d.location from employees as e 
join departments as d
on e.dept_id=d.dept_id;

-- 2 
select p.proj_id,p.proj_name,d.dept_name,p.budget from projects as p 
join departments as d 
on p.dept_id=d.dept_id;

-- 3 
select e.emp_name,d.dept_name,p.proj_name from employees as e 
join departments as d 
on e.dept_id=d.dept_id
join projects as p 
on p.dept_id=d.dept_id;

-- 4 
select e.emp_id,e.emp_name,d.dept_id,d.dept_name from employees as e 
left join departments as d
on e.dept_id=d.dept_id;

-- 5 
select d.dept_id , d.dept_name , p.proj_name,p.budget from departments as d 
join projects as p 
on d.dept_id=p.dept_id;   

-- 6 
select e. emp_id,e.emp_name,d.dept_id from employees as e
left join departments as d 
on e.dept_id=d.dept_id
where d.dept_id IS null;

-- 7
select e.emp_name,d.dept_id,d.dept_name from employees as e 
right join departments as d 
on e.dept_id = d.dept_id ;

-- 8 
select d.dept_name, p.proj_id, p.proj_name ,d.dept_id from departments as d 
join projects as p 
on d.dept_id=p.dept_id;

-- 9
select d.dept_id,d.dept_name,d.location from departments as d 
left join employees as e 
on d.dept_id=e.dept_id
where e.emp_id is null;  

-- 10 
select e.emp_name,e.salary,d.dept_name from employees as e 
join departments as d 
where e.salary>70000 and d.dept_name in ("Finance","legal");

-- 11 
select p.proj_name,p.budget,d.dept_name, d.location from projects as p 
join departments as d 
where p.budget>=400000 and d.location in ("mumbai","pune");

-- 12 


-- 13 
select e.emp_id,e.emp_name,d.dept_id,e.salary,d.location from employees as e 
join departments as d 
on e.dept_id=d.dept_id
where e.salary>60000;

-- 14 
select e.emp_id , e.emp_name,e.salary,e.city from employees as e 
join departments as d 
on e.dept_id=d.dept_id
where d.location in ("delhi","mumbai");   

-- 15
select e.emp_id,e.emp_name,d.dept_id,e.salary from employees as e 
left join departments as d 
on e.dept_id=d.dept_id
where d.dept_id is null; 

-- 16 
select d.dept_id,d.dept_name,d.location from departments as d 
where d.location in ("Bangalore", "delhi");

-- 17
select d.dept_id,d.dept_name,d.location from departments as d 
where d.dept_id>=30;

-- 18 
select d.dept_id,d.dept_name,d.location from departments as d 
where substr(d.dept_name,1,1) in ("F","L");

-- 19 
SELECT proj_id,proj_name,dept_id,budget from projects
where budget between 200000 and 400000;

-- 20
 SELECT proj_id,proj_name,dept_id,budget from projects
where dept_id=20;

-- 21
select proj_id,proj_name,budget from projects 
where proj_name like "%a%" and budget<300000;

 