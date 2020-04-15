------------------------------------------
--DDL statement for table 'HR' database--
--------------------------------------------

CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(15) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
                            
                           
 select  * from EMPLOYEES where ADDRESS LIKE '%Elgin,%IL';
 
 select * from EMPLOYEES where B_DATE LIKE '197%';

select * from EMPLOYEES where (SALARY BETWEEN 60000 and 70000) and dep_id=5  ;       

select * from EMPLOYEES order by dep_id;               

select * from EMPLOYEES order by dep_id desc, L_NAME desc; 

select dep_id,COUNT(*) from EMPLOYEES group by dep_id;

select dep_id,COUNT(*),AVG(SALARY) from EMPLOYEES group by dep_id;

select dep_id,COUNT(*) AS "NUM_EMPLOYEE",AVG(SALARY) AS "AVG_SALARY" from EMPLOYEES group by dep_id;

select dep_id,COUNT(*) AS "NUM_EMPLOYEE",AVG(SALARY) AS "AVG_SALARY" from EMPLOYEES group by dep_id order by AVG_SALARY;
   
select dep_id,COUNT(*) AS "NUM_EMPLOYEE",AVG(SALARY) AS "AVG_SALARY" from EMPLOYEES group by dep_id having COUNT(*)>4;

   
   