-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-11-21 14:45:00.323

-- tables
-- Table: DEPARTMENTS
CREATE TABLE DEPARTMENTS (
    Dept_ID int NOT NULL,
    Department_Name varchar(30) NOT NULL,
    Manager_ID int NOT NULL,
    Location_ID int NOT NULL,
    CONSTRAINT DEPARTMENTS_pk PRIMARY KEY (Dept_ID)
);

-- Table: EMPLOYEES
CREATE TABLE EMPLOYEES (
    Employee_ID int NOT NULL,
    First_Name varchar(30) NOT NULL,
    Last_Name varchar(30) NOT NULL,
    Email varchar(30) NOT NULL,
    Phone_Number varchar(15) NOT NULL,
    Hire_Date date NOT NULL,
    Salary double(10,2) NOT NULL,
    Comm double(10,2) NOT NULL,
    Job_ID varchar(30) NOT NULL,
    Dept_ID int NOT NULL,
    Manager_ID int NOT NULL,
    CONSTRAINT EMPLOYEES_pk PRIMARY KEY (Employee_ID)
);

-- Table: JOBS
CREATE TABLE JOBS (
    Job_ID varchar(30) NOT NULL,
    Job_Title varchar(50) NOT NULL,
    Min_Salary int NOT NULL,
    Max_Salalry int NOT NULL,
    CONSTRAINT JOBS_pk PRIMARY KEY (Job_ID)
);

-- Table: JOB_HISTORY
CREATE TABLE JOB_HISTORY (
    Employe_ID int NOT NULL,
	Dept_ID int NOT NULL,
	Job_ID varchar(30) NOT NULL,
	Start_Date date NOT NULL,
    End_Date date NOT NULL
    
);

-- foreign keys
-- Reference: EMPLOYEES_EMPLOYEES (table: EMPLOYEES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_EMPLOYES
    FOREIGN KEY (Manager_ID)
    REFERENCES EMPLOYEES (Employee_ID);
	
-- Reference: EMPLOYEES_DEPARTMENTS (table: EMPLOYEES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_DEPARTMENTS FOREIGN KEY EMPLOYEES_DEPARTMENTS (Dept_ID)
    REFERENCES DEPARTMENTS (Dept_ID);
	
-- Reference: EMPLOYEES_JOBS (table: EMPLOYES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_JOBS FOREIGN KEY EMPLOYEES_JOBS (Job_ID)
    REFERENCES JOBS (Job_ID);

-- Reference: JOB_HISTORY_EMPLOYEES (table: JOB_HISTORY)
ALTER TABLE JOB_HISTORY ADD CONSTRAINT JOB_HISTORY_EMPLOYEES FOREIGN KEY JOB_HISTORY_EMPLOYEES (Employe_ID)
    REFERENCES EMPLOYEES (Employee_ID);

-- End of file.

