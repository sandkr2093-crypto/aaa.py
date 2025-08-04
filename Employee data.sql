SELECT count(*) FROM employeedata.empdata;
select Dept,avg(salary) as average_saalry from empdata group by Dept;
select EmpID,Name,HiredDate from empdata where str_to_date(HiredDate,"%d-%m-%y")<"2018-01-01";
select EmpID,name,salary from empdata order by salary desc limit 3;
select EmpID,name,salary
from (
select EmpID,name,salary,rank() over(order by salary desc) as rnk from empdata
) as ranked
where rnk<=3;
select city,count(*) as number_of_employees from empdata group by city;
select EmpID,name,Dept,salary from empdata where Dept in ("IT","Finance") and salary>60000;
select * from empdata where age = (select max(age) from empdata) or age = (select min(age) from empdata);
select sum(salary) as total_salary from empdata;
select EmpID,name,Hireddate from empdata where year(str_to_date(Hireddate,"%d-%m-%y"))=2018;
select Dept,count(*) as number_of_employees from empdata group by Dept order by number_of_employees desc;
select EmpID,name from empdata where name like "A%";
select Dept,max(salary) as highest_salary from empdata group by Dept order by highest_salary desc limit 1;
SELECT EmpID, Name, Dept, Salary
FROM empdata
WHERE Salary = (
    SELECT MAX(Salary)
    FROM empdata
    WHERE Dept = Dept
);
select EmpID,name,age from empdata where age> (select avg(age) from empdata);
select EmpID,name,Dept from empdata where Dept not in ("IT","HR");
select * from empdata where salary between 50000 and 70000;
select year(str_to_date(Hireddate,"%d-%m-%y")) as hire_year, avg(salary) as average_salary from empdata group by hire_year order by hire_year;
select year(str_to_date(Hireddate,"%d-%m-%y")) as hire_year, city, count(*) as total_number_of_employees from empdata group by hire_year,city order by hire_year,city;
select month(str_to_date(Hireddate,"%d-%m-%y")) as hire_month,count(*) as number_of_employees from empdata group by hire_month order by hire_month;
set sql_safe_updates=0;
update empdata set salary = 60000 where name = "Anil";
select * from empdata;
update empdata set salary = salary*0.10 where Dept = "IT";
update empdata set  Dept = "Admin" where EmpID = 105;
update empdata set city = "Delhi" where name = "Ravi";
update empdata set age = 36 where name = "Kavita";
delete from empdata where name = "Shashi";
delete from empdata where Dept = "Sales";
delete from empdata where salary<50000;
delete from empdata where str_to_date(Hireddate,"%d-%m-%y")<"2017-01-01";
delete from empdata where city = "Kolkata";
update empdata set salary = salary + 5000 where Dept = "Finance";
update empdata set Dept = "Mkt" where name = "Raj";
update empdata set city = "Gurgaon" where EmpID = 108;
update empdata set age = 40 where age>40;
update empdata set salary = 70000 where hireddate = "08-02-2018";
delete from empdata where Dept = "HR";
delete from empdata where EmpID = 106;
delete from empdata where age>40;
delete from empdata where city in ("Noida","Pune");
delete from empdata where str_to_date(Hireddate,"%d-%m-%y")>"2023-01-01";
select * from empdata where salary > (select avg(salary) from empdata);
select * from empdata where Dept = (select Dept from empdata where name = "Kavita");
select * from empdata where salary = (select max(salary) from empdata);
select * from empdata where str_to_date(Hireddate,"%d-%m-%y")> (select str_to_date(Hireddate,"%d-%m-%y") from empdata where name = "Shashi");
select * from empdata where age>(select min(age) from empdata where Dept= "IT");
select Dept from empdata group by Dept having avg(salary) = (select max(salary) from (
select Dept,avg(salary) as average_salary from empdata group by Dept
) as Deptaverage
);
select * from empdata where city = (select city from empdata where name = "Ravi");
select * from empdata where salary > all (select salary from empdata where Dept ="HR");
select * from empdata where age = (select max(age) from empdata);
select * from empdata where Dept in (select Dept from empdata where salary<40000);
select * from empdata where salary in (select salary from empdata where Dept = "Finance");
select * from empdata where salary>(select salary from empdata where name = "Amit");
select * from empdata where Dept in (select Dept from empdata group by Dept having count(*)>2);
select * from empdata where city not in (select city from empdata where Dept = "IT");
select * from empdata where str_to_date(Hireddate,"%d-%m-%y")= (select min(str_to_date(Hireddate,"%d-%m-%y")) from empdata);