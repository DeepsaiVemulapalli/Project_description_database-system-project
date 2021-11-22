-- Insert Values into DEPARTMENTS Table
Insert into DEPARTMENTS 
values (10,'Administration',200,1700);

Insert into DEPARTMENTS 
values (20,'Marketing',201,1800);

Insert into DEPARTMENTS 
values (30,'Purchasing',114,1700);

Insert into DEPARTMENTS 
values (40,'Resources',203,2400);


-- Insert Values into JOBS Table
Insert into JOBS
values ('AC_ACCOUNT','Public',4200,9000);

Insert into JOBS
values ('AC_MGR','Accounting Manager',8200,16000);

Insert into JOBS
values ('AD_ASST','Administration Assistant',3000,6000);

Insert into JOBS
values ('AD_PRES','President',20080,40000);

-- Insert Values into EMPLOYEES Table
Insert into EMPLOYEES 
values (100,'Steven','King','SKING','515.123.4567','2003-06-17',24000,0,'AD_PRES',10,100);

Insert into EMPLOYEES 
values (101,'Neena','Kochhar','NKOCHHAR','515.123.4568','2005-09-21',17000,0,'AD_ASST',20,100);

Insert into EMPLOYEES 
values (102,'David','Austin','DAUSTIN','590.423.4569','2005-06-25',4800,0,'AC_MGR',30,101);

Insert into EMPLOYEES 
values (103,'Alexander','Khoo','AKHOO','515.127.4562','2003-05-18',17000,0,'AC_ACCOUNT',40,102);


-- Insert Values into JOB_HISTORY Table
Insert into JOB_HISTORY
values (101,10,'AD_ASST','2001-10-28','2005-03-15');

Insert into JOB_HISTORY
values (103,30,'AC_ACCOUNT','2003-07-01','2006-12-31');

Insert into JOB_HISTORY
values (102,20,'AC_MGR','2002-06-08','2006-10-20');

Insert into JOB_HISTORY
values (100,40,'AD_PRES','2000-05-04','2020-12-31');


-- Update Statements

update EMPLOYEES
set email='sling_update' where Employee_ID='100'


update EMPLOYEES
set First_Name='Nehaaa' where Employee_ID='101'


-- Delete Statements

Delete from JOB_HISTORY
where Employe_ID = 100


--Jined Statements
select * from employees E, Jobs J
where E.job_id=J.job_id;


select * from employees E, DEPARTMENTS D
where E.dept_id=D.DEPt_id;

-- Summary Quereis
select count(*) from employees 

select max(salary) from employees

--Multi table quereis

select e.* from employees E 
inner join  Departments D on
E.dept_id=D.dept_id 

-- sub-quereis

select * from employees
where salary in
(select max(salary) from employees)



