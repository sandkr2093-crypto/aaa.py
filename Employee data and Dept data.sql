SELECT * FROM employeedetails.employeedata;
select e.EmpID,e.Empname,e.salary,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID;
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.Dept = "Finance";
select d.Dept,sum(e.salary) as total_salary from employeedata e join deptdata d on e.DeptID = d.DeptID group by d.Dept;
select EmpID,Empname,salary,city,Dept
from (
select e.EmpID,e.Empname,e.salary,e.city,d.Dept, rank() over(partition by Dept order by salary desc) as rnk from employeedata e join deptdata d on e.DeptID = d.DeptID
) as ranked
where rnk=1;
select e.Empname,e.city from employeedata e join deptdata d on e.DeptID = d.DeptID where e.city = "Mumbai";
select d.Dept,count(*) as number_of_employees from employeedata e join deptdata d on e.DeptID  = d.DeptID group by d.Dept;
select d.Dept,count(*) as Employee_count from employeedata e join deptdata d on e.DeptID = d.DeptID group by d.Dept order by Employee_count desc;
select d.Dept,avg(e.salary) as average_salary from employeedata e join deptdata d on e.DeptID  =d.DeptID group by d.Dept having avg(e.salary)>50000;
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID  =d.DeptID where e.salary < (select avg(e2.salary) from employeedata e2 where e2.DeptID = e.DeptID);
select e.city ,sum(e.salary) as total_salary from employeedata e join deptdata d on e.DeptID = d.DeptID group by e.city order by total_salary desc limit 1;
select EmpID,Empname,Dept,salary
from (
select e.EmpID,e.Empname,e.salary,d.Dept,rank() over(partition by Dept order by salary desc) as rnk from employeedata e join deptdata d on e.DeptID = d.DeptID
) as ranked
where rnk = 1;
SELECT d.Dept, MAX(e.Salary) AS HighestSalary
FROM employeedata e
JOIN deptdata d ON e.DeptID = d.DeptID
GROUP BY d.Dept;
select e.Empname,d.dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.salary<50000;
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.salary = (select max(e2.salary) from employeedata e2 where e2.DeptID = e.DeptID);
select d.Dept from deptdata d left join employeedata e on d.DeptID = e.DeptID where e.EmpID is null;
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.salary > (select avg(salary) from employeedata);
select d.Dept,e.city,count(*) as total_number_of_employees from employeedata e join deptdata d on e.DeptID = d.DeptID group by d.Dept,e.city;
select e.Empname,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.DeptID = (select DeptID from employeedata where e.Empname = "Sunil yadav")
and e.city = (select city from employeedata where e.Empname = "sunil yadav")
and e.Empname<>"sunil yadav";
select e.Empname,e.salary,d.Dept,
(select max(e2.salary) from employeedata e2 where e2.DeptID = e.DeptID)-e.salary as salary_gap from employeedata e join deptdata d on e.DeptID = d.DeptID;
select d.Dept,avg(e.salary) as average_saalry from employeedata e join deptdata d on e.DeptID  = d.DeptID where e.city = "mumbai" group by d.Dept;
select e.Empname,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.Dept = "marketing";
select d.Dept,count(*) as total_number_of_employees from deptdata d left join employeedata e on d.DeptID = e.DeptID group by d.Dept;
select e.Empname,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.city in (select e2.city from employeedata e2 join deptdata d2 on e2.DeptID = d2.DeptID where d2.Dept = "HR");
select EmpID,Empname,salary,city,dept
from (
select e.EmpID,e.Empname,e.salary,e.city,d.Dept,rank()over(partition by Dept order by salary desc) as rnk from employeedata e join deptdata d on e.DeptID = d.DeptID
) as ranked 
where rnk = 2;
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.Dept = "HR";
set sql_safe_updates=0;
update employeedata e join deptdata d on e.DeptID = d.DeptID set e.salary = e.salary * 1.10 where d.Dept = "IT";
update employeedata e join deptdata d on e.DeptID = d.DeptId set e.city = "New Delhi" where d.Dept = "HR";
UPDATE employeedata
SET Empname = CONCAT(Empname, ' (Marketing)')
WHERE DeptID = 'D004';
UPDATE employeedata
SET Salary = 0
WHERE DeptID NOT IN (
    SELECT DeptID FROM deptdata
);
update employeedata e join deptdata d on e.DeptID = d.DeptID set d.DeptID = "D005" where d.dept = "Finance";
delete e from employeedata e join deptdata d on e.DeptID = d.DeptID where d.Dept = "HR";
delete e from employeedata e join deptdata d on e.DeptID = d.DeptID where e.city = "Mumbai" and d.Dept = "Finance";
delete e from employeedata e join deptdata d on e.DeptID  =d.DeptID where d.Dept = "Marketing" and e.salary<50000;
delete e from employeedata e join deptdata d on e.DeptID  =d.DeptID where e.city not in ("Delhi","Bangalore") and d.Dept = "IT";
delete e from employeedata e join deptdata d on e.DeptID  =d.DeptID where d.DeptID not in (select d.DeptID from deptdata);
update employeedata e join deptdata  d on e.DeptID = d.DeptID set e.salary = e.salary * 1.15 where d.Dept = "HR";
UPDATE employeedata
SET Empname = CONCAT(Empname, ' - Senior')
WHERE Salary > 55000 AND DeptID = 'D002';
update employeedata  e join deptdata  d on e.DeptID = d.DeptID set e.city = "Remote" where d.Dept = "IT";
update employeedata e join deptdata d on e.DeptID = d.DeptID set e.salary = 50000 where d.Dept = "Marketing" and e.salary<50000;
UPDATE employeedata
SET Empname = CONCAT('Mr./Ms. ', Empname)
WHERE DeptID = 'D003';
delete e from employeedata e join deptdata d on e.DeptID = d.DeptID where d.Dept = "IT" and e.salary<48000;
delete e from employeedata e join deptdata  d on e.DeptID = d.DeptID where d.Dept = "Finance" and e.city = "Mumbai";
delete e from employeedata e join deptdata  d on e.DeptID = d.DeptID where d.Dept = "Marketing" and e.city = "Bangalore";
delete e from employeedata  e join deptdata  d on e.DeptID = d.DeptID where d.Dept not in ("HR","Finance");
delete e from employeedata e join deptdata  d on e.DeptID = d.DeptID where e.city in ("chennai","Hyderabad") and d.Dept = "Marketing";
select e.Empname,d.dept from employeedata e join deptdata  d on e.DeptID = d.DeptID where d.Dept = "Finance";
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID  =d.DeptID where e.salary>(select avg(e2.salary) from employeedata e2 where d.deptId = (select deptID from deptdata where d.Dept = "IT"));
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID = (select DeptID
from (
select DeptID,count(*) as total_employees from employeedata group by DeptID order by total_employees limit 1
) as most_common_dept
) ;
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID = (select DeptID from employeedata where Empname = "Ravi kumar");
select e.Empname,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select distinct DeptID from employeedata where e.city = "Banglaore");
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.salary>(select avg(e2.salary) from employeedata e2 where e2.DeptID = e.DeptID);
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID= (select DeptID from (
select DeptID from employeedata group by DeptID order by sum(salary) desc limit 1
) as top_paid_dept
);
select e.Empname,e.city from employeedata e join deptdata d on e.DeptID = d.DeptID where e.city = (select city from employeedata where Empname= "Anjali mehra");
SELECT Empname, DeptID
FROM employeedata
WHERE DeptID = (
    SELECT DeptID FROM deptdata WHERE Dept = 'HR'
);
SELECT Empname, Salary
FROM employeedata
WHERE Salary = (
    SELECT MIN(Salary)
    FROM employeedata
    WHERE DeptID = (
        SELECT DeptID FROM deptdata WHERE Dept = 'Marketing'
    )
);
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.deptID in (select DeptID from employeedata group by DeptID having count(*)<3);
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID = (select DeptID from employeedata where e.Empname = "sneha joshi");
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID  = d.DeptID where d.DeptID = (select DeptID from (
select DeptID from employeedata group by DeptID order by avg(salary) asc limit 1
) as lowest_average_dept
);
select e.Empname,d.dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select DeptID from deptdata where d.Dept in ("HR","Marketing"));
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID not in (select DeptID from deptdata);
select e.Empname,e.salary,d.dept from employeedata e join deptdata d on e.DeptID  = d.DeptID where e.salary > any(select salary from employeedata where DeptID = (select DeptID from deptdata where d.Dept = "HR"));
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID  = d.DeptID where e.salary > (select max(e2.salary) from employeedata e2 where e2.DeptID  = e.DeptID);
select e.Empname,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select distinct DeptID from employeedata where city = "Kolkata");
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select distinct Dept from employeedata where e.salary>55000);
select Dept from deptdata where DeptID in (select DeptID from employeedata group by DeptID having avg(salary)>50000);
SELECT Empname, Salary
FROM employeedata
WHERE DeptID = (
    SELECT DeptID FROM employeedata WHERE Empname = 'Deepika Rathi'
)
AND Salary < (
    SELECT Salary FROM employeedata WHERE Empname = 'Deepika Rathi'
);
select Dept from deptdata where DeptID in (select distinct DeptID from employeedata where city= "New Delhi");
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select DeptID from employeedata group by DeptID having count(distinct city)>1);
select e.Empname,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select DeptID from employeedata where city in ("Mumbai","Delhi") group by DeptID having count(distinct city)=2);
SELECT Empname
FROM employeedata
WHERE DeptID = (
    SELECT DeptID FROM (
        SELECT DeptID
        FROM employeedata
        GROUP BY DeptID
        ORDER BY AVG(Salary) DESC
        LIMIT 1 OFFSET 1
    ) AS SecondHighestAvg
);
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.salary>(select max(salary) from employeedata where DeptID = (select DeptID from deptdata where Dept = "Marketing"));
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select DeptID from employeedata group by DeptID having min(salary)>50000);
select e.Empname,e.city,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where d.DeptID in (select DeptID from employeedata where city = "Mumbai"group by DeptID having count(*)>=2);
select e.Empname,e.salary,d.Dept from employeedata e join deptdata d on e.DeptID = d.DeptID where e.salary > (select avg(e2.salary) from employeedata e2 where e2.city = e.city);
select e.EmpID,e.Empname,e.city,e.salary,d.Dept from employeedata e left join deptdata d on e.DeptID = d.DeptID;
select e.Empname,d.Dept from employeedata e left join deptdata d on e.DeptID = d.DeptID where d.DeptID is null;
select e.Empname,e.city from employeedata e left join deptdata d on e.DeptID = d.DeptID where e.city ="Mumbai";
select e.Empname,d.Dept from employeedata e left join deptdata d on e.DeptID = d.DeptID where e.salary>50000;
select e.Empname,d.Dept from employeedata e right join deptdata d on e.DeptID  = d.DeptID;
select e.Empname,d.Dept from employeedata e right join deptdata d on e.DeptID  = d.DeptID;
select d.Dept,count(*) as total_number_of_employees from employeedata e right join deptdata d on e.DeptID = d.DeptID group by d.Dept;
select e.Empname,e.city from employeedata e right join deptdata d on e.DeptID = d.DeptID;
select d.Dept,max(e.salary) as maximum_salary from employeedata e right join deptdata d on e.DeptID = d.DeptID group by d.Dept;
select e.Empname,d.dept from employeedata e left join deptdata d on e.DeptID = d.DeptID
union
select  e.Empname,d.dept from employeedata e right join deptdata d on e.DeptID = d.DeptID;
select e.EmpID,d.Dept from employeedata e left join deptdata d on e.DeptID  = d.DeptID where e.DeptID is null or d.DeptID is null
union
select e.EmpID,d.Dept from employeedata e right join deptdata d on e.DeptID  = d.DeptID where e.DeptID is null or d.DeptID is null;
select d.dept,count(*) as total_number_of_employees from employeedata e left join deptdata d on e.DeptID = d.DeptID group by d.Dept
union
select d.dept,count(*) as total_number_of_employees from employeedata e right join deptdata d on e.DeptID = d.DeptID group by d.Dept;
select e.city,d.Dept from employeedata e left join deptdata d on e.DeptID  = d.DeptID
union
select e.city,d.Dept from employeedata e right join deptdata d on e.DeptID  = d.DeptID;
select e.Empname,e.salary,d.Dept from employeedata e left join deptdata d on e.DeptID = d.DeptID;
select e.Empname from employeedata e left join deptdata d on e.DeptID = d.DeptID where d.DeptID is null;
select e.Empname,d.Dept from employeedata e left join deptdata d on e.DeptID = d.DeptID where e.city in ("Finance","HR");
select e.Empname,d.Dept,length(d.Dept) as dept_length from employeedata e left join deptdata d on e.DeptID  = d.DeptID;
select e.Empname from employeedata e left join deptdata  d on e.DeptID  =d.DeptID where d.Dept<> "Marketing" or d.Dept is null;
select e.Empname,d.Dept from employeedata e right join deptdata d on e.DeptID  =d.DeptID;
select e.Empname,d.Dept,e.city from employeedata e right join deptdata d on e.DeptID  =d.DeptID where e.city = "Bangalore";
select d.dept,count(*) as total_number_of_employees from employeedata e right join deptdata d on e.DeptID  = d.DeptID group by d.Dept;
select d.dept from employeedata e right join deptdata d on e.DeptID  = d.DeptID where e.EmpID is null;
select d.Dept,avg(salary) as average_salary from employeedata e right join deptdata d on e.DeptID = d.DeptID group by d.dept;
select e.Empname,d.dept from employeedata e left join deptdata d on e.DeptID  = d.DeptID
union
select  e.Empname,d.dept from employeedata e right join deptdata d on e.DeptID  = d.DeptID;
select e.Empname,d.dept from employeedata e left join deptdata d on e.DeptID  =d.DeptID where e.EmpID is null or d.DeptID is null
union
select e.Empname,d.dept from employeedata e right join deptdata d on e.DeptID  =d.DeptID where e.EmpID is null or d.DeptID is null;
select d.Dept,e.city from employeedata e left join deptdata d on e.DeptID = d.DeptID
union
select d.Dept,e.city from employeedata e right join deptdata d on e.DeptID = d.DeptID;
 select d.dept,sum(e.salary) as total_salary from employeedata e left join deptdata d on e.DeptID  =d.DeptID group by d.Dept
 union
  select d.dept,sum(e.salary) as total_salary from employeedata e right join deptdata d on e.DeptID  =d.DeptID group by d.Dept;
  select d.dept,sum(e.salary) as total_salary from employeedata e left join deptdata d on e.DeptID = d.DeptID group by d.dept
  union
  select d.dept,sum(e.salary) as total_salary from employeedata e right join deptdata d on e.DeptID = d.DeptID group by d.dept;
  alter table employeedata
  add column mob_no varchar(10) not null after city;
alter table employeedata drop mob_no;
drop table employeedata;