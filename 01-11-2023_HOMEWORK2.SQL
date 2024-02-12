CREATE TABLE STUDENT_DETAILS(ROLL_NO INT,STUDENT_NAME VARCHAR(20),MARKS NUMBER(5,3));
DESC STUDENT_DATA;

INSERT INTO STUDENT_DETAILS VALUES(101,'SANKET',85);
INSERT INTO STUDENT_DETAILS VALUES(102,'VAIBHAV',65);
INSERT INTO STUDENT_DETAILS VALUES(103,'SAKSHI',35);
INSERT INTO STUDENT_DETAILS VALUES(104,'UDAY',45);
INSERT INTO STUDENT_DETAILS VALUES(105,'KIRAN',65);

SAVEPOINT C;


UPDATE STUDENT_DETAILS
SET STUDENT_NAME='SONU'
WHERE ROLL_NO=101;

UPDATE STUDENT_DETAILS
SET STUDENT_NAME='VAIBHU'
WHERE ROLL_NO=102;

ALTER TABLE STUDENT_DETAILS 
RENAME COLUMN ROLL_NO TO STUDENT_ID;

SAVEPOINT B;

DELETE FROM STUDENT_DATA WHERE ROLL_NO=105;

ROLLBACK TO SAVEPOINT B;

ROLLBACK TO SAVEPOINT C;

SELECT * FROM STUDENT_DETAILS;

ALTER TABLE P ALTER COLUMN NAME VARCHAR2(20);
DESC P;

SELECT * FROM EMPLOYEES ORDER BY COMMISSION_PCT DESC;

CREATE TABLE  JOBS_SAL_BET_2000_AND_5000 AS SELECT * FROM JOBS WHERE MIN_SALARY BETWEEN 2000 AND 5000 AND  MAX_SALARY BETWEEN 2000 AND 5000;

SELECT * FROM JOBS_SAL_BET_2000_AND_5000 ;
DROP TABLE  JOBS_SAL_BET_2000_AND_5000;
ALTER TABLE A
MODIFY ID NUMBER(2);

TRUNCATE TABLE A;

SELECT * FROM EMPLOYEES  where mod(employee_id, 2)=0;
UNION

SELECT PID ,name FROM P;
insert into p values(4,'rohini');
insert into p values(1,'sanket');

savepoint a;
commit;

insert into p values(2,'uday');
savepoint d;
insert into p values(3,'nikita');

rollback;


SELECT PID ,name FROM P;
SELECT * FROM JOBS;



select count(*)
from employees
group by department_id
having count(*)>(Select count(*) from employees where department_id=90)



select e.first_name,e.last_name ,count(*)
from employees e inner join employees m
on(e.employee_id=m.manager_id)
group by e.first_name,e.last_name;

select * from employees where  manager_id=100;

select * from employees where First_name='Steven';








