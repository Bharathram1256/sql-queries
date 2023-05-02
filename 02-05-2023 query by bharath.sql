create table employee(
emp_id int,name varchar(28),
age int,country varchar(12)
);

insert into employee values( 73248, "nebula " , 32,"spain");
insert into employee values(374872 , "steeve" ,120 ,"india");
insert into employee values(438767, "star lord" ,40 ,"russia");
insert into employee values(75746 , "robert " ,43 ,"india");
insert into employee values(544564, "tony " ,33,"srilanka");
insert into employee values(324243, "stak" , 50,"south korea");
insert into employee values(3235665, "bruce" ,76 ,"nepal");
insert into employee values(3423242, "william" ,67 ,"india");
insert into employee values( 90764543, "peter" ,98 ,"india ");
insert into employee values( 3456633, "thor" , 43,"usa");
insert into employee values( 656543, "john " , 55,"usa");
insert into employee values( 12736, "groot" ,23,"india");

select * from employee;

select count(country) as country_no, country from employee
 group by country having count(country)>=2;
 
select country,count(country) from employee group by country having max(age)>=33;
select name,count(name) from employee group by name having min(age)>=33;


select * from employee;



-- creating a table for manager
create table manager(
id int, name varchar(23),age int,gender varchar(7),salary int);

insert into manager values(223,"varma",50,"male",700000),(225,"arudhathi",47,"female",500000),
(243,"sharma",45,"male",400000),(224,"anusha",34,"female",1000000);
insert into manager values(232,"ram",50,"male",300000),(233,"alivelu",47,"female",800000);

select * from manager;

select name,sum(salary) as total_salary from manager 
group by gender having sum(salary) >=500000 order by gender;


select age from manager group by age having count(age)>=1;
select name ,max(salary) as max_salary from manager
 group by name having max(salary) >= 700000;

select * from manager;

-- creating a copy of a table by using store procedures
DELIMITER //
create procedure GetManagerInfo()
 BEGIN
	select * from manager;
 END //
 
CALL GetManagerInfo()

DELIMITER //
create procedure GetManagerAge()
 BEGIN
	select * from manager where age= 50;
 END //
 
CALL GetManagerAge();

select * from manager;


-- rand() funtion gives random things  ..here names are ramdomly selecting
select name from manager order by rand() limit 2;
