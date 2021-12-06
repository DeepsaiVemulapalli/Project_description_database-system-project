-- Indexes Creation
CREATE UNIQUE INDEX dept_mgr
ON DEPARTMENTS (Dept_ID, Manager_ID);

CREATE INDEX job_sal 
ON o(Job_ID, Salary);

CREATE INDEX job_emp_start_date 
ON JOB_HISTORY(Job_ID, Employe_ID, Start_Date);

-- Performance Testing for Indexes
set statistics time on;
Select dept_id, manager_id from DEPARTMENTS where manager_id>30;

drop index dept_mgr on DEPARTMENTS;
Select dept_id, manager_id from DEPARTMENTS where manager_id>30;

-- Views Creation

CREATE VIEW emp_dept_view AS
SELECT t1.Employee_ID, t1.Dept_ID, t2.Department_Name
FROM EMPLOYEES AS t1 LEFT JOIN DEPARTMENTS AS t2
ON t1.Dept_ID = t2.Dept_ID;

CREATE VIEW emp_job_view AS
SELECT t1.Employee_ID, t1.Job_ID, t2.Job_Title
FROM EMPLOYEES AS t1 LEFT JOIN JOBS AS t2
ON t1.Job_ID = t2.Job_ID;

SELECT * FROM emp_dept_view;
SELECT * FROM emp_job_view;

-- Triggers

CREATE TRIGGER emp_comm_trig
BEFORE INSERT ON EMPLOYEES
FOR EACH ROW 
UPDATE employees SET NEW.comm = Salary*0.4  WHERE Salary<5000;

Insert into EMPLOYEES 
values (109,'Neena','Kochhar','NKOCHHAR','515.123.4568','2005-09-21',1000,0,'AD_ASST',20,100);

SELECT * FROM EMPLOYEES WHERE Employee_Id=109;

CREATE TRIGGER jobs_trig
BEFORE INSERT ON JOBS
FOR EACH ROW 
UPDATE JOBS SET NEW.Max_Salalry = Max_Salalry+1000  WHERE Min_Salary=100;

Insert into JOBS
values ('AC_ACCOUNTANT','Public',4200,100);

SELECT * FROM JOBS WHERE Job_Id='AC_ACCOUNTANT';


