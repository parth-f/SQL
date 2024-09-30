-- To list all records with sal > 2000 and comm>200

SELECT * FROM emp 
WHERE sal > 2000 AND comm > 200;

-- Empty set (0.00 sec)


-- To list all record with job=’Clerk’ or sal>2000

SELECT * FROM EMP 
WHERE job="CLERK" or sal > 2000;

-- +-------+--------+-----------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- 10 rows in set (0.00 sec)


-- To list all the record with sal=1250 or 1100 or 2850

SELECT * FROM emp
WHERE sal IN (1240, 1100, 2850);

-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
-- |  7876 | ADAMS | CLERK   | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 2 rows in set (0.00 sec)


-- To list all employees with sal>1250 and <2850

SELECT * FROM emp
WHERE sal > 1250 and sal < 2850;

-- +-------+--------+----------+------+------------+---------+--------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM   | DEPTNO |
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
-- |  7782 | CLARK  | MANAGER  | 7839 | 1981-06-09 | 2450.00 |   NULL |     10 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |   0.00 |     30 |
-- |  7934 | MILLER | CLERK    | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
-- +-------+--------+----------+------+------------+---------+--------+--------+
-- 4 rows in set (0.00 sec)


--To list all employees with name ends with AS

SELECT * FROM emp 
WHERE ename LIKE 'A%S';

-- +-------+-------+-------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+---------+------+--------+
-- |  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- +-------+-------+-------+------+------------+---------+------+--------+
-- 1 row in set (0.00 sec)


-- To list all employees with job starts with C and ends with K

SELECT * FROM emp 
WHERE job LIKE 'C%K';

-- +-------+--------+-------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+---------+------+--------+
-- |  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- |  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
-- +-------+--------+-------+------+------------+---------+------+--------+
-- 4 rows in set (0.00 sec)

-- To list all employees with job contains L at third position and M at third last position

SELECT * FROM emp 
WHERE job LIKE '__L%M__' ;

-- +-------+--------+----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- |  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
-- |  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- 4 rows in set (0.00 sec)

-- To list all the record with sal not equal to 1250 or 1100 or 2850

SELECT * FROM emp
WHERE sal NOT IN (1240, 1100, 2850);

-- +-------+--------+-----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+-----------+------+------------+---------+---------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
-- +-------+--------+-----------+------+------------+---------+---------+--------+
-- 12 rows in set (0.00 sec)


-- To list all employees with salnot >1250 and <2850

SELECT * FROM emp 
WHERE NOT (sal > 1250 and sal < 2850);

-- +-------+--------+-----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+-----------+------+------------+---------+---------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
-- +-------+--------+-----------+------+------------+---------+---------+--------+
-- 10 rows in set (0.00 sec)

-- To list all employees with job starts with C , E at 3rd position and ends with K

SELECT * FROM emp
WHERE job LIKE 'C_E%K';

-- +-------+--------+-------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+---------+------+--------+
-- |  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- |  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
-- +-------+--------+-------+------+------------+---------+------+--------+
-- 4 rows in set (0.00 sec)

-- To list all rows with comm is null

SELECT * FROM emp
WHERE comm IS NULL;

-- +-------+--------+-----------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- |  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
-- +-------+--------+-----------+------+------------+---------+------+--------+
-- 10 rows in set (0.00 sec)

-- To list all employees with sal is null and name starts with ‘S’

SELECT * FROM emp
WHERE sal IS NULL and ename LIKE 'S%';

-- Empty set (0.00 sec)


-- To list all employees with job contains 5 characters

SELECT * FROM emp 
WHERE job REGEXP '^.{5}$';

-- +-------+--------+-------+------+------------+---------+------+--------+
-- | EMPNO | ENAME  | JOB   | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+--------+-------+------+------------+---------+------+--------+
-- |  7369 | SMITH  | CLERK | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
-- |  7876 | ADAMS  | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- |  7900 | JAMES  | CLERK | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7934 | MILLER | CLERK | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
-- +-------+--------+-------+------+------------+---------+------+--------+
-- 4 rows in set (0.02 sec)


-- To list all employees with name contain ‘A’ at 1 position and job Contains 5 characters

SELECT * FROM emp
WHERE ename REGEXP '^A.*$' and job REGEXP '^.{5}$';

-- +-------+-------+-------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+-------+------+------------+---------+------+--------+
-- |  7876 | ADAMS | CLERK | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- +-------+-------+-------+------+------------+---------+------+--------+
-- 1 row in set (0.01 sec)



-- Q2 : Solve Following

-- Retrieve the details (Name, Salary and dept no) of the emp who are working in
-- department code 20, 30 and 40.

SELECT ename, sal, deptno FROM emp
WHERE deptno IN (20,30,40);

-- +--------+---------+--------+
-- | ename  | sal     | deptno |
-- +--------+---------+--------+
-- | SMITH  |  800.00 |     20 |
-- | ALLEN  | 1600.00 |     30 |
-- | WARD   | 1250.00 |     30 |
-- | JONES  | 2975.00 |     20 |
-- | MARTIN | 1250.00 |     30 |
-- | BLAKE  | 2850.00 |     30 |
-- | SCOTT  | 3000.00 |     20 |
-- | TURNER | 1500.00 |     30 |
-- | ADAMS  | 1100.00 |     20 |
-- | JAMES  |  950.00 |     30 |
-- | FORD   | 3000.00 |     20 |
-- +--------+---------+--------+
-- 11 rows in set (0.00 sec)

-- Display the total salary of all employees . Total salary will be calculated as
-- sal+comm+sal*0.10

SELECT ename, (sal + IFNULL(comm,0) + sal*0.10) AS total_sal 
FROM emp;

-- +--------+-----------+
-- | ename  | total_sal |
-- +--------+-----------+
-- | SMITH  |  880.0000 |
-- | ALLEN  | 2060.0000 |
-- | WARD   | 1875.0000 |
-- | JONES  | 3272.5000 |
-- | MARTIN | 2775.0000 |
-- | BLAKE  | 3135.0000 |
-- | CLARK  | 2695.0000 |
-- | SCOTT  | 3300.0000 |
-- | KING   | 5500.0000 |
-- | TURNER | 1650.0000 |
-- | ADAMS  | 1210.0000 |
-- | JAMES  | 1045.0000 |
-- | FORD   | 3300.0000 |
-- | MILLER | 1430.0000 |
-- +--------+-----------+
-- 14 rows in set (0.00 sec)


-- List the Name and job of the emp who have joined before 1 jan 1986 and whose
-- salary range is between 1200 and 2500. Display the columns with user defined Column headers.

SELECT ename, job, hiredate, sal FROM emp
WHERE hiredate < '1986-01-01'
AND sal BETWEEN 1200 AND 2500;

-- +--------+----------+------------+---------+
-- | ename  | job      | hiredate   | sal     |
-- +--------+----------+------------+---------+
-- | ALLEN  | SALESMAN | 1981-02-20 | 1600.00 |
-- | WARD   | SALESMAN | 1981-02-22 | 1250.00 |
-- | MARTIN | SALESMAN | 1981-09-28 | 1250.00 |
-- | CLARK  | MANAGER  | 1981-06-09 | 2450.00 |
-- | TURNER | SALESMAN | 1981-09-08 | 1500.00 |
-- | MILLER | CLERK    | 1982-01-23 | 1300.00 |
-- +--------+----------+------------+---------+
-- 6 rows in set (0.00 sec)

-- List the empno, name, and department number of the emp works under manager
-- with id 7698

SELECT empno, ename, deptno FROM emp
WHERE mgr = 7698;

-- +-------+--------+--------+
-- | empno | ename  | deptno |
-- +-------+--------+--------+
-- |  7499 | ALLEN  |     30 |
-- |  7521 | WARD   |     30 |
-- |  7654 | MARTIN |     30 |
-- |  7844 | TURNER |     30 |
-- |  7900 | JAMES  |     30 |
-- +-------+--------+--------+
-- 5 rows in set (0.00 sec)

-- List the name, job, and salary of the emp who are working in departments 10 and 30

SELECT ename, job, sal FROM emp
WHERE deptno IN (20,30);

-- +--------+----------+---------+
-- | ename  | job      | sal     |
-- +--------+----------+---------+
-- | SMITH  | CLERK    |  800.00 |
-- | ALLEN  | SALESMAN | 1600.00 |
-- | WARD   | SALESMAN | 1250.00 |
-- | JONES  | MANAGER  | 2975.00 |
-- | MARTIN | SALESMAN | 1250.00 |
-- | BLAKE  | MANAGER  | 2850.00 |
-- | SCOTT  | ANALYST  | 3000.00 |
-- | TURNER | SALESMAN | 1500.00 |
-- | ADAMS  | CLERK    | 1100.00 |
-- | JAMES  | CLERK    |  950.00 |
-- | FORD   | ANALYST  | 3000.00 |
-- +--------+----------+---------+
-- 11 rows in set (0.00 sec)


-- Display name concatenated with dept code separated by comma and space. Name
-- the column as ‘Emp info’


SELECT CONCAT(ename,', ',deptno) as empinfo
FROM emp;

-- +------------+
-- | empinfo    |
-- +------------+
-- | SMITH, 20  |
-- | ALLEN, 30  |
-- | WARD, 30   |
-- | JONES, 20  |
-- | MARTIN, 30 |
-- | BLAKE, 30  |
-- | CLARK, 10  |
-- | SCOTT, 20  |
-- | KING, 10   |
-- | TURNER, 30 |
-- | ADAMS, 20  |
-- | JAMES, 30  |
-- | FORD, 20   |
-- | MILLER, 10 |
-- +------------+
-- 14 rows in set (0.00 sec)

-- Display the emp details who do not have manager.

SELECT * FROM emp
WHERE mgr IS NULL;

-- +-------+-------+-----------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+---------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
-- +-------+-------+-----------+------+------------+---------+------+--------+
-- 1 row in set (0.00 sec)

-- Write a query which will display name, department no and date of joining of all
-- employee who were joined January 1, 1981 and March 31, 1983. Sort it based on date of joining (ascending).

SELECT ename,deptno, hiredate FROM emp
WHERE hiredate > '1981-01-01' 
AND hiredate < '1983-03-31'
ORDER BY hiredate;

-- +--------+--------+------------+
-- | ename  | deptno | hiredate   |
-- +--------+--------+------------+
-- | ALLEN  |     30 | 1981-02-20 |
-- | WARD   |     30 | 1981-02-22 |
-- | JONES  |     20 | 1981-04-02 |
-- | BLAKE  |     30 | 1981-05-01 |
-- | CLARK  |     10 | 1981-06-09 |
-- | TURNER |     30 | 1981-09-08 |
-- | MARTIN |     30 | 1981-09-28 |
-- | KING   |     10 | 1981-11-17 |
-- | JAMES  |     30 | 1981-12-03 |
-- | FORD   |     20 | 1981-12-03 |
-- | MILLER |     10 | 1982-01-23 |
-- | SCOTT  |     20 | 1982-12-09 |
-- | ADAMS  |     20 | 1983-01-12 |
-- +--------+--------+------------+
-- 13 rows in set (0.00 sec)

-- Display the employee details where the job contains word ‘AGE’ anywhere in the Job

SELECT * FROM emp
WHERE job REGEXP '^.*AGE.*$';

-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
-- |  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
-- |  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 3 rows in set (0.00 sec)

-- List the details of the employee , whose names start with ‘A’ and end with ‘S’ or
-- whose names contains N as the second or third character, and ending with either ‘N’ or ‘S’.

SELECT * FROM emp
WHERE ename LIKE 'A%S' 
OR ename REGEXP '^.{1}N.*[^NS]$|^.{2}N.*[^NS]$';

-- +-------+-------+-----------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB       | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+-----------+------+------------+---------+------+--------+
-- |  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
-- |  7876 | ADAMS | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
-- +-------+-------+-----------+------+------------+---------+------+--------+
-- 2 rows in set (0.00 sec)

-- List the names of the emp having ‘_’ character in their name.

SELECT * FROM emp
WHERE ename LIKE '%\_%' ; -- donest'n work because '_' is a WildCard

-- So we have to escape charcter '\'

SELECT * FROM emp
WHERE ename LIKE '%\_%'

-- Or we can use REGEXP 

SELECT * FROM emp
WHERE ename REGEXP '^.*_.*$' ;

-- Empty set (0.00 sec)


-- *Single Row functions*

-- 1. To list all employees and their email, to generate email use 2 to 5 
-- characters from ename Concat it with 2 to 4 characters in job and then 
-- concat it with ‘@mycompany.com’

SELECT CONCAT(LOWER(SUBSTRING(ename,1,4)),LOWER(SUBSTRING(job,2,4)),'@mycompany.com') as email 
FROM emp;

-- +------------------------+
-- | email                  |
-- +------------------------+
-- | smitlerk@mycompany.com |
-- | alleales@mycompany.com |
-- | wardales@mycompany.com |
-- | joneanag@mycompany.com |
-- | martales@mycompany.com |
-- | blakanag@mycompany.com |
-- | claranag@mycompany.com |
-- | scotnaly@mycompany.com |
-- | kingresi@mycompany.com |
-- | turnales@mycompany.com |
-- | adamlerk@mycompany.com |
-- | jamelerk@mycompany.com |
-- | fordnaly@mycompany.com |
-- | milllerk@mycompany.com |
-- +------------------------+


-- List all employees who joined in September.

SELECT * FROM emp
WHERE hiredate LIKE '%-09-%';

-- +-------+--------+----------+------+------------+---------+---------+--------+
-- | EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- |  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
-- |  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
-- +-------+--------+----------+------+------------+---------+---------+--------+
-- 2 rows in set (0.00 sec)

-- List the empno, name, and department number of the emp who have experience of 
-- 18 or more years and sort them based on their experience

-- CONSIDERING CURRENT DATE IS 2000
SELECT 
    empno,
    ename,
    deptno,
    FLOOR(((DATEDIFF(CURDATE(), hiredate)) / 365)-25) AS yr_exp
FROM 
    emp
WHERE
    FLOOR(((DATEDIFF(CURDATE(), hiredate)) / 365)-25) >= 18
ORDER BY 
    yr_exp DESC;

-- +-------+--------+--------+--------+
-- | empno | ename  | deptno | yr_exp |
-- +-------+--------+--------+--------+
-- |  7369 | SMITH  |     20 |     18 |
-- |  7499 | ALLEN  |     30 |     18 |
-- |  7521 | WARD   |     30 |     18 |
-- |  7566 | JONES  |     20 |     18 |
-- |  7654 | MARTIN |     30 |     18 |
-- |  7698 | BLAKE  |     30 |     18 |
-- |  7782 | CLARK  |     10 |     18 |
-- |  7844 | TURNER |     30 |     18 |
-- +-------+--------+--------+--------+
-- 8 rows in set (0.00 sec)

-- Display the employee details who joined on 3rd of any month or any year

SELECT * FROM emp 
WHERE hiredate LIKE '%-%-03';\

-- +-------+-------+---------+------+------------+---------+------+--------+
-- | EMPNO | ENAME | JOB     | MGR  | HIREDATE   | SAL     | COMM | DEPTNO |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- |  7900 | JAMES | CLERK   | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
-- |  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
-- +-------+-------+---------+------+------------+---------+------+--------+
-- 2 rows in set (0.00 sec)

-- display all employees who joined between years 1981 to 1983.

SELECT *, YEAR(hiredate) as hire_year FROM emp
WHERE YEAR(hiredate) BETWEEN 1981 AND 1983; 

-- +-------+--------+-----------+------+------------+---------+---------+--------+-----------+
-- | EMPNO | ENAME  | JOB       | MGR  | HIREDATE   | SAL     | COMM    | DEPTNO | hire_year |
-- +-------+--------+-----------+------+------------+---------+---------+--------+-----------+
-- |  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |      1981 |
-- |  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |      1981 |
-- |  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |      1981 |
-- |  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |      1981 |
-- |  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |      1981 |
-- |  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |      1981 |
-- |  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |      1982 |
-- |  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |      1981 |
-- |  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |      1981 |
-- |  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |      1983 |
-- |  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |      1981 |
-- |  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |      1981 |
-- |  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |      1982 |
-- +-------+--------+-----------+------+------------+---------+---------+--------+-----------+
-- 13 rows in set (0.00 sec)


-- *Group Functions*

-- Display the Highest, Lowest, Total & Average salary of all employee. Label 
-- the columns Maximum, Minimum, Total and Average respectively for each Department. 
-- Also round the result to the nearest whole number.

SELECT 
    deptno,
    MAX(sal) AS higest_sal, 
    MIN(sal) AS lowest_sal, 
    ROUND(AVG(sal)) AS average_sal, 
    SUM(sal) AS total_sal 
FROM emp
GROUP BY deptno
ORDER BY deptno, MIN(sal);

-- +--------+------------+------------+-------------+-----------+
-- | deptno | higest_sal | lowest_sal | average_sal | total_sal |
-- +--------+------------+------------+-------------+-----------+
-- |     10 |    5000.00 |    1300.00 |        2917 |   8750.00 |
-- |     20 |    3000.00 |     800.00 |        2175 |  10875.00 |
-- |     30 |    2850.00 |     950.00 |        1567 |   9400.00 |
-- +--------+------------+------------+-------------+-----------+
-- 3 rows in set (0.00 sec)


-- Display Department no and number of managers working in that department. 
-- Label the column as ‘Total Number of Managers’ for each department.

SELECT deptno, COUNT(mgr) AS total_num_of_managers
FROM emp
GROUP BY deptno
ORDER BY deptno;

-- +--------+-----------------------+
-- | deptno | total_num_of_managers |
-- +--------+-----------------------+
-- |     10 |                     2 |
-- |     20 |                     5 |
-- |     30 |                     6 |
-- +--------+-----------------------+
-- 3 rows in set (0.00 sec)


-- Get the Department number, and sum of Salary of all non managers where the sum 
-- is greater than 20000.


SELECT SUM(sal) FROM emp
WHERE job != 'MANAGER' 
GROUP BY deptno
HAVING SUM(sal) > 2000;

-- +----------+
-- | SUM(sal) |
-- +----------+
-- |  7900.00 |
-- |  6550.00 |
-- |  6300.00 |
-- +----------+
-- 3 rows in set (0.00 sec)